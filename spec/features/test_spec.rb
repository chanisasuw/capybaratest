require File.dirname(__FILE__) + '/../feature_spec_helper'
  
describe "sign in", :type => :feature do
  it "should sign me in" do  
    visit 'http://www.google.com'
    expect(page).to have_content "Gmail"
  end  

    it "should sign me in" do  
    visit 'http://www.google.com'
    expect(page).to have_content "Gsdfmail"
  end  

    it "should sign me in" do  
    visit 'http://www.google.com'
    expect(page).to have_content "Gmail"
  end  

    it "should sign me in" do  
    visit 'http://www.google.com'
    expect(page).to have_content "Gmail"
  end  
end  