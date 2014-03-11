require File.dirname(__FILE__) + '/../feature_spec_helper'
  
describe "sign in", :type => :feature do
	before(:each) do
		visit "https://fern.cpdev1.rvglobalsoft.net:2083"
		within("#login_form") do
			fill_in "user", with: "fern"
			fill_in "pass", with: "05092532"
			click_button "Log in"
		end
		find(:css, "#icon-whmaddon_rvsitebuilder").click
		sleep 0.5
	end

	after(:each) do
		click_link "Logout"
		expect(page).to have_content "You have been logged out."
	end

	describe "Create a new project" do
		it "should get new project" do  
	    find(:css, "#createProjectD").click
	    fill_in "project_name", with: "chanisa1"
	  	find(:css, ".ui-button", text: "Save").click
	  	find(:css, "span", text: "HOME").click
	  	expect(page).to have_content "chanisa1"
	  end 

	  it "doesn't create a new project if name is existing" do
	  	find(:css, "#createProjectD").click
	    fill_in "project_name", with: "chanisa1"
	  	find(:css, ".ui-button", text: "Save").click
	  	expect(page).to have_content "Project name is already taken"
	  	find(:css, ".ui-button-text", text: "Cancel").click
	  	expect(page).to have_content "Start Your Web-Building Project"
	  end

	  it "should rename this project" do
	  	page.find(:css,".btnRenameProject").click
	  	fill_in "renameProjectName", with: "opportunity"
	  	find(:css, ".ui-button-text", text: "Save").click
	  	sleep 3
	  	expect(page).to have_content "opportunity"
	  end

	  it "should be delete this project" do
	  	page.find(:css,".btnRemoveProject").click
	  	find(:css, "#removeProjectName")
	  	find(:css, ".ui-button-text", text: "Remove").click
	  	expect(page).to have_css("#removeProject-message", text: "Project has been successfully removed.")
	  	find(:css, ".ui-button-text", text: "Close").click
	  	sleep 3	  	
	  	expect(page).to have_no_content "opportunity"
	  end	
  end
end  