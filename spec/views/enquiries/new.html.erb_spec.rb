require 'rails_helper'

RSpec.describe "enquiries/new", type: :view do
  before(:each) do
    assign(:enquiry, Enquiry.new(
      :first => "",
      :surname => "",
      :email => "",
      :telephone => "MyString"
    ))
  end

  it "renders new enquiry form" do
    render

    assert_select "form[action=?][method=?]", enquiries_path, "post" do

      assert_select "input#enquiry_first[name=?]", "enquiry[first]"

      assert_select "input#enquiry_surname[name=?]", "enquiry[surname]"

      assert_select "input#enquiry_email[name=?]", "enquiry[email]"

      assert_select "input#enquiry_telephone[name=?]", "enquiry[telephone]"
    end
  end
end
