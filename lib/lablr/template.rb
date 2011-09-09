module Lablr
  module Template # templates define label layout(with erb) and rendering
    class Base
      attr_accessor :erb, :name, :content, :style
      #@erb_template = nil
      #@name = nil
      
      def initialize(options = {})
        #@erb = options[:erb]          ||= nil
        options[:name]    ||= "avery_5163"
        options[:content] ||= "No Content Set"
        options[:style]   ||= TemplateStyle.new
        
        @name                 = options[:name]              
        @content              = options[:content]          
        @style                = options[:style] 
        
        template_file = File.join(Lablr.GEM_ROOT, "assets", "templates",  "_" + (@name.to_s) + ".erb")
        template_content = File.exists?(template_file) ? File.read(template_file) : "Template Not Found: #{template_file}"
        
        @erb = ::ERB.new(template_content)
      end
         
      def getBinding # make binding accessible to pass into erb
        return binding
      end         
    end
    
    
    class Avery5163     
    end
  end
end