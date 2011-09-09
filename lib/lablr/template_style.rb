module Lablr
  class TemplateStyle # visual styles for Templates    
    attr_accessor :borders
    
    def initialize(options = {})
      # Set defaults
      options[:borders] = true if options[:borders].nil? # border around labels
      
      @borders = options[:borders]
    end
  end
end