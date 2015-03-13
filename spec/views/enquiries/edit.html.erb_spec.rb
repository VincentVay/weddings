require 'rails_helper'

RSpec.describe "enquiries/edit", type: :view do
  before(:each) do
    @enquiry = assign(:enquiry, Enquiry.create!(
      :first => "",
      :surname => "",
      :email => "",
      :telephone => "MyString"
    ))
  end

  it "renders the edit enquiry form" do
    render

    assert_select "form[action=?][method=?]", enquiry_path(@enquiry), "post" do

      assert_select "input#enquiry_first[name=?]", "enquiry[first]"

      assert_select "input#enquiry_surname[name=?]", "enquiry[surname]"

      assert_select "input#enquiry_email[name=?]", "enquiry[email]"

      assert_select "input#enquiry_telephone[name=?]", "enquiry[telephone]"
    end
  end
end
