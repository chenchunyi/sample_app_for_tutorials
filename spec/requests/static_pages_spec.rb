require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do

    it "should have the h1 'Sample App'" do                
      visit root_path
      page.should have_selector('h1', text: 'Sample App')
      
      # visit '/static_pages/home'
      # page.should have_selector('h1', :text =>'Sample App')
    end

    it "should have the base title" do
      visit root_path
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App")
    	# visit '/static_pages/home'
    	# page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
    	visit root_path
    	page.should_not have_selector('title', :text => "| Home")
    end

  end

  describe "Help page" do

    it "should have the h1 'Help'" do                
      visit help_path
      page.should have_selector('h1', text: 'Help')

      # visit '/static_pages/help'
      # page.should have_selector('h1', :text => 'Help')
    
    end

    it "should have the right title" do
      visit help_path
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Help")
    	# visit '/static_pages/help'
    	# page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
    
    # it { should have_selector('h1', text: 'About Us') }
    # it { should have_selector('title', text: full_title('About Us'))}
    it "should have the h1 'About Us'" do                
      visit about_path
      page.should have_selector('h1', text: 'About Us')
      # visit '/static_pages/about'
      # page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title" do
      visit about_path
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App | About")
     # visit '/static_pages/about'
     #  page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About")
    end
  end

describe "Contact page" do    
  # it { should have_selector('h1', text: 'About Us') }
    # it { should have_selector('title', text: full_title('About Us'))}
    it "should have the h1 'About Us'" do                
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
      # visit '/static_pages/about'
      # page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title" do
      visit contact_path
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Contact")
     # visit '/static_pages/about'
     #  page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About")
    end

  # before { visit contact_path }

  # it { should have_selector('h1', text: 'Contact') }
  # it { should have_selector('title', text: full_title('Contact'))}
end

it "should have the right links on the layout" do
  
  visit root_path

  # click_link "About"
  # page.should have_selector 'title', text: full_title('About Us')

  # click_link "Help"
  # page.should have_selector 'title', text: full_title('Help')

  # click_link "Contact"
  # page.should have_selector 'title', text: full_title('Contact')

  # click_link "Home"

  # click_link "Sign up now!"
  # page.should have_selector 'title', text: full_title('Sign up')

  # click_link "sample app"
  # page.should have_selector 'h1', text: 'Sample App'
end


end
