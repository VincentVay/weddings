require 'rails_helper'

RSpec.describe "enquiries/index", type: :view do
  before(:each) do
    assign(:enquiries, [
      Enquiry.create!(
        :first => "",
        :surname => "",
        :email => "",
        :telephone => "Telephone"
      ),
      Enquiry.create!(
        :first => "",
        :surname => "",
        :email => "",
        :telephone => "Telephone"
      )
    ])
  end

  it "renders a list of enquiries" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
  end
end
