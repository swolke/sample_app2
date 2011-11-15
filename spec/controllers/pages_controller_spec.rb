require 'spec_helper'

describe PagesController do
 render_views

#@pages = ['home', 'contact', 'about', 'help']
  before(:each) do
    @base_title = "!Sample App! | "

  end

# pages.each do |page|
#     describe "GET '#{page}'" do
#       it "should be successful" do
#         get "#{page}"
#         response.should be_success
#       end
#
#       it "should have the right title" do
#         get "#{page}"
#         response.should have_selector("title", :content => @base_title + page.capitalize)
#       end
#     end
#   end


  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
  get 'home'
  response.should have_selector("title",
                    :content => @base_title + "Home")
end
  end

  describe "GET 'contact'" do
    it "should be successful" do
     get 'contact'
      response.should be_success
    end
    it "should have the right title" do
  get 'contact'
  response.should have_selector("title",
                    :content => @base_title + "Contact")
end
  end

    describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
      it "should have the right title" do
  get 'about'
  response.should have_selector("title",
                                :content => @base_title + "About")
end
    end

      describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
           it "should have the right title" do
  get 'help'
  response.should have_selector("title",
                    :content => @base_title + "Help")
end
        end
end
