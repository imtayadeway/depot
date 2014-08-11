require 'spec_helper'

describe Product do
  describe "#title" do
    it { should validate_presence_of(:title) }
    it { should validate_uniqueness_of(:title) }
    it { should ensure_length_of(:title).is_at_least(10) }
  end

  describe "#description" do
    it { should validate_presence_of(:description) }
  end

  describe "#price" do
    it do
      should validate_numericality_of(:price)
        .is_greater_than_or_equal_to(0.01)
    end
  end

  describe "#image_url" do
    it { should validate_presence_of(:image_url) }

    context "with a valid extension" do
      it { should allow_value('fred.gif').for(:image_url) }
      it { should allow_value('fred.jpg').for(:image_url) }
      it { should allow_value('fred.png').for(:image_url) }
      it { should allow_value('FRED.JPG').for(:image_url) }
      it { should allow_value('FRED.Jpg').for(:image_url) }
      it { should allow_value('http://a.b.c/x/y/z/fred.gif').for(:image_url) }
    end

    context "with an invalid extension" do
      it { should_not allow_value('fred.doc').for(:image_url) }
      it { should_not allow_value('fred.gif/more').for(:image_url) }
      it { should_not allow_value('fred.gif.more').for(:image_url) }
    end
  end
end
