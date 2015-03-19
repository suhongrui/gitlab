class String
  if self.method_defined?(:ord)
    def getord(offset); self[offset].ord; end
  else
    alias :getord :[]
  end

  unless self.method_defined?(:b)
    if self.method_defined?(:force_encoding)
      def b; self.dup.force_encoding(Encoding::ASCII_8BIT); end
    else
      def b; self.dup; end
    end
  end
end