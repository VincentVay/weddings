require 'rails_helper'

RSpec.describe "enquiries/show", type: :view do
  before(:each) do
    @enquiry = assign(:enquiry, Enquiry.create!(
      :first => "",
      :surname => "",
      :email => "",
      :telephone => "Telephone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Telephone/)
  end
end
