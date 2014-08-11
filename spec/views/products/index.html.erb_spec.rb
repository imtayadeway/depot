require 'rails_helper'

RSpec.describe "products/index", :type => :view do
  before(:each) do
    assign(:products, [create(:product), create(:product, title: 'dolor sit')])
  end

  it "renders a list of products" do
    render
  end
end
