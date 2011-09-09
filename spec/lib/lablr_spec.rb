require "spec_helper"

describe Lablr do 
  describe "generate_labels" do
    before(:each) do
    end
    
    after(:each) do
      # cleanup
    end    
    
    describe "generate_labels" do
      describe "to_file" do
        before(:each) do
        end
        
        after(:each) do
          #File.delete(@file_path) if File.exists?(file)
        end
        
        it "should create a pdf file" do
          @file_path = File.expand_path("../../tmp/label.pdf", __FILE__)          
          Lablr.generate_labels(:template => :avery_5163, :format => :pdf, :content => "Test Label!", :to_file => @file_path)
          File.exists?(@file_path).should == true    
          File.delete(@file_path) if File.exists?(@file_path)         
        end     
      end 
    end  
  end
end
