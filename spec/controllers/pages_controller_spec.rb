require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
    @before_title = "NCSA Red Crayon | "
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title too" do
      get 'home'
      response.should have_selector("title", :content => @before_title + "Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title too" do
      get 'contact'
      response.should have_selector("title", :content => @before_title + "Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title too" do
      get 'about'
      response.should have_selector("title", :content => @before_title + "About")
    end
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    
    it "should have the right title too" do
      get 'help'
      response.should have_selector("title", :content => @before_title + "Help")
    end
  end

end
