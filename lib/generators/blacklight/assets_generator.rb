# -*- encoding : utf-8 -*-

module Blacklight
  class Assets < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
  
    def stylesheets
      insert_into_file "app/assets/stylesheets/application.css", :after => " *= require_self" do 
%q{
 *       
 * Required by Blacklight      
 *= require 'yui'
 *= require 'jquery-ui-1.8.1.custom.css'
 *= require 'blacklight'
}
      end
    end

    def javascripts
      insert_into_file "app/assets/javascripts/application.js", :after => "//= require jquery_ujs" do 
%q{
// Required by Blacklight        
//= require jquery-ui
//= require blacklight
}
      end
    end
    
  end
end
