require 'rails_helper'

RSpec.describe "store/index.html.erb", :type => :view do
  it "displays the list of products" do
    assign(:products, [create(:product)])

    render

    expect(rendered).to have_selector('h3', 'My Book #1')
  end
end
