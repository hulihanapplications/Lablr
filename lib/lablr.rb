require "htmldoc"
require "erb"

module Lablr
  def self.GEM_ROOT
    return File.join(File.dirname(File.join(__FILE__)), "..")
  end  
  
  class Template # templates define label layout(with erb) and rendering
    attr_accessor :erb, :name, :content, :style
    #@erb_template = nil
    #@name = nil
    
    def initialize(options = {})
      @erb = options[:erb]          ||= nil
      @name = options[:name]        ||= nil
      @content = options[:content]  ||= "No Content Set"
      @style = options[:style]      ||= TemplateStyle.new
      @erb = ERB.new(File.read(File.join(Lablr.GEM_ROOT, "assets", "templates",  "_" + @name.to_s + ".erb")))
    end
       
    def getBinding # make binding accessible to pass into erb
      return binding()
    end    
        
    # You can Render this template by
  end

  class TemplateStyle # visual styles for Templates    
    attr_accessor :options
    
    def initialize(options = {})
      # Set defaults
      options[:borders] = true if options[:borders].nil? # border around labels
      
      @options = options
    end
  end

  def self.generate_labels(options = {})    
    options[:format]    ||= :pdf
    options[:template]  ||= :avery_5163
    options[:content]   ||= "No Content Set"
    options[:style]     ||= TemplateStyle.new
    options[:to_file]   ||= nil # to a specific file
   
    template = Lablr::Template.new(:name => options[:template].to_s, :content => options[:content], :style => options[:style])
    rendered_template = template.erb.result(template.getBinding) # render erb template
    #puts data
    if options[:format] == :pdf
      data = Lablr.render_to_pdf(rendered_template)
    elsif options[:format] == :html
      data = rendered_template
    end
    #puts rendered_template
    if options[:to_file] # write to file
      file = File.basename(options[:to_file], "." + options[:format].to_s) + "." + options[:format].to_s
      File.open(file, "w"){|f| f.write(data)}
      return "Labels written to #{File.basename(file)}"
    else # return data      
      return data
    end
  end
 


 def self.render_to_pdf(html)  # create a pdf
  #data = render_to_string(options)
  pdf = PDF::HTMLDoc.new
  pdf.set_option :bodycolor, :white
  pdf.set_option :toc, false
  pdf.set_option :portrait, true
  pdf.set_option :links, false
  pdf.set_option :webpage, true
  pdf.set_option :top, '0cm'
  pdf.set_option :left, '0cm'
  pdf.set_option :right, '0cm'
  pdf.set_option :bottom, '0cm'
  pdf.footer ".1."
  pdf << html
  pdf.generate
 end

  module VERSION #:nodoc:
    MAJOR = 0
    MINOR = 0
    TINY  = 1

    STRING = [MAJOR, MINOR, TINY].join(".")
  end


end