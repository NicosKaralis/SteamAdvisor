require 'spec_helper'

describe 'PagesController' do

  describe "GET 'index'" do

    before(:each) do
      @posts = ["stub", "stub"]
    end

    it "assigns all the pages as '@pages'" do
      Post.should_receive(:all) { @posts }

      get 'index'

      assigns[:posts].should == @posts
    end

    it "renders the 'index' template" do
      get 'index'

      response.should render_template("index")
    end

  end

end
