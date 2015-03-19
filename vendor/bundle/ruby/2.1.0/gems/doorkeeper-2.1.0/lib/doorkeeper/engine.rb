module Doorkeeper
  class Engine < Rails::Engine
    initializer 'doorkeeper.routes' do
      Doorkeeper::Rails::Routes.install!
    end

    initializer 'doorkeeper.helpers' do
      ActiveSupport.on_load(:action_controller) do
        include Doorkeeper::Rails::Helpers
      end
    end
  end
end
