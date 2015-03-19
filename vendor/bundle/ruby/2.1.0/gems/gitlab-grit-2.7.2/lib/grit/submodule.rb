module Grit

  class Submodule
    attr_reader :id
    attr_reader :mode
    attr_reader :name

    # Create a Submodule containing just the specified attributes
    #   +repo+ is the Repo
    #   +atts+ is a Hash of instance variable data
    #
    # Returns Grit::Submodule (unbaked)
    def self.create(repo, atts)
      self.allocate.create_initialize(repo, atts)
    end

    # Initializer for Submodule.create
    #   +repo+ is the Repo
    #   +atts+ is a Hash of instance variable data
    #
    # Returns Grit::Submodule
    def create_initialize(repo, atts)
      @repo = repo
      atts.each do |k, v|
        instance_variable_set("@#{k}".to_sym, v)
      end
      self
    end

    # The url of this submodule
    #   +ref+ is the committish that should be used to look up the url
    #
    # Returns String
    def url(ref)
      config = self.class.config(@repo, ref)

      lookup = config.keys.inject({}) do |acc, key|
        id = config[key]['id']
        acc[id] = config[key]['url']
        acc
      end

      lookup[@id]
    end

    # The configuration information for the given +repo+
    #   +repo+ is the Repo
    #   +ref+ is the committish (defaults to 'master')
    #
    # Returns a Hash of { <path:String> => { 'url' => <url:String>, 'id' => <id:String> } }
    # Returns {} if no .gitmodules file was found
    def self.config(repo, ref = "master")
      commit = repo.commit(ref)
      blob = commit.tree/'.gitmodules'
      return {} unless blob

      lines = blob.data.gsub(/\r\n?/, "\n" ).split("\n")

      config = {}
      current = nil

      lines.each do |line|
        if line =~ /^\[submodule "(.+)"\]$/
          current = $1
          config[current] = {}
          submodule = (commit.tree/current.strip)
          config[current]['id'] = submodule.id if submodule
        elsif line =~ /^\t(\w+) = (.+)$/
          config[current][$1] = $2

          if $1 == 'path'
            submodule = (commit.tree/$2.strip)
            config[current]['id'] = submodule.id if submodule
          end
        else
          # ignore
        end
      end

      config
    end

    def basename
      File.basename(name)
    end

    # Pretty object inspection
    def inspect
      %Q{#<Grit::Submodule "#{@id}">}
    end
  end # Submodule

end # Grit
