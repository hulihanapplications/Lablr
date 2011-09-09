require File.expand_path("../../vendor/gems/htmldoc/init", __FILE__) # load custom htmldoc instead of broken rubygems version 
require "erb"
require "lablr/template"
require "lablr/template_style"


module Lablr
  def self.GEM_ROOT
    return File.join(File.dirname(File.join(__FILE__)), "..")
  end  
  
  def self.generate_labels(options = {})    
    options[:format]    ||= :pdf
    options[:template]  ||= "avery_5163"
    options[:content]   ||= "No Content Set"
    options[:style]     ||= {}
    options[:to_file]   ||= nil # to a specific file
    
    #puts options.inspect
    
    lablr_template = Lablr::Template::Base.new(:name => options[:template], :content => options[:content], :style => TemplateStyle.new(options[:style]))
    rendered_template = lablr_template.erb.result(lablr_template.getBinding) # render erb template
    
    if options[:format] == :pdf
      data = Lablr.render_to_pdf(rendered_template)
    elsif options[:format] == :html
      data = rendered_template
    end
    
    #puts rendered_template
    if options[:to_file] # write to file
      filename = File.basename(options[:to_file], "." + options[:format].to_s) + "." + options[:format].to_s
      file = File.join(File.dirname(options[:to_file]), filename)
      File.open(file, "w"){|f| f.write(data)}
      return "Labels written to #{File.basename(file)}"
    else # return data      
      return data
    end
  end
 

  
  def self.render_to_pdf(html)  # create a pdf
    #data = render_to_string(options)
    pdf = ::PDF::HTMLDoc.new
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
    File.read(File.expand_path("../../VERSION", __FILE__))
  end

end
