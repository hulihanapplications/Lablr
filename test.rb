require "rubygems"
require "lablr"

#puts Lablr.GEM_ROOT
# template = Lablr::Template.new(:name => "avery_5163", :content => "Testing...")
#puts template.erb.result(template.getBinding)

#puts Lablr.generate_labels(:template => :avery_5163, :format => :pdf, :content => "Test Label!")
puts Lablr.generate_labels(:template => :avery_5163, :format => :pdf, :content => "Test Label!", :to_file => "x.pdf", :style => {:border => false})
