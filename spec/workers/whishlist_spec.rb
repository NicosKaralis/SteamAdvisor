require 'spec_helper'
require 'rails_helper'

describe WishlistLoader do

  describe "username validation" do
    
    it 'should not accept a blank username' do
      expect(WishlistLoader.perform(nil)).to eq(:invalid_username)
      expect(WishlistLoader.perform('')).to eq(:invalid_username)
    end
    
    it 'should accept a valid username' do
      expect(WishlistLoader.perform('nicoskaralis')).to eq(:ok)
    end
    
    it 'should not accept an invalid username' do
      expect(WishlistLoader.perform('invalid_user_name')).to eq(:invalid_username)
    end
    
    it 'should accept unencoded parameters and not raise alerts' do
      expect(WishlistLoader.perform('invalid user name')).to eq(:invalid_username)
    end
    
  end
    
  it 'should persist the information on db'
    
    # context "username should be present" do
    #
    #   before(:each) do
    #     WishlistLoader.perform('nicoskaralis')
    #     @post = Post.new(title: "My first post")
    #   end
    #
    #   it "should not add an error on the 'title' attribute" do
    #     @post.should have(0).error_on(:title)
    #   end
    #
    # end

    # context "if title is not present" do
    #
    #   before(:each) do
    #     @post = Post.new
    #   end
    #
    #   it "should add an error on the 'title' attribute" do
    #     @post.should have(1).error_on(:title)
    #   end
    #
    # end
  
  # describe "creation" do
  #
  #   context "valid attributes" do
  #
  #     it "should be valid" do
  #       post = FactoryGirl.build(:post)
  #
  #       post.should be_valid
  #     end
  #
  #   end
  #
  #   context "invalid attributes" do
  #
  #     it "should not be valid" do
  #       post = FactoryGirl.build(:post, title: "")
  #
  #       post.should_not be_valid
  #     end
  #
  #   end
  #
  # end

end
