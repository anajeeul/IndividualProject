require "rails_helper"

RSpec.describe PostsController, type: :controller do
  it "should have a current_user" do
    login_user
    expect(subject.current_user).to_not eq(nil)
  end

  it "should get index" do
    get 'index'
    response.should be_success
  end
end


RSpec.describe PostsController, type: :controller do
  context "GET #index" do
    it "returns a success response" do
      get :index
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end

  context "GET #show" do
    let!(:post) { Post.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: post }
      expect(response).to be_success
    end
  end
end