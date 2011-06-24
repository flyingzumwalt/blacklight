# -*- encoding : utf-8 -*-
require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
describe ApplicationController do

# HEAD CONTENT
  describe "head content from variables" do

    describe "#default_html_head" do
      before(:each) do
        controller.send(:default_html_head)
      end
    end
  end

end

