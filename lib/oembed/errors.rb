module OEmbed
  class NotFound < StandardError
    def to_s
      "No embeddable content at '#{super}'"
    end
  end
  
  class UnknownFormat < StandardError
    def to_s
      "The provider doesn't support the '#{super}' format"
    end
  end
  
  class FormatNotSupported < StandardError
    def to_s
      "This server doesn't have the correct libraries installed to support the '#{super}' format"
    end
  end
  
  class UnknownResponse < StandardError
    def to_s
      "Got unkown response (#{super}) from server"
    end
  end
end