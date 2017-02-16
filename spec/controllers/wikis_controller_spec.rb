require 'rails_helper'
include RandomData

RSpec.describe WikisController, type: :controller do
  # let(:my_user) { create(:user) }
  # let(:other_user) { create(:user) }
  # let(:my_wiki) { create(:wiki, user: my_user) }
  let(:my_wiki) { Wiki.create!(title:RandomData.random_sentence, body: RandomData.random_paragraph, user_id: 1) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_wiki] to @wikis" do
      get :index
      expect(assigns(:wikis)).to eq([my_wiki])
    end
  end

  # describe "GET #show" do
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  # end

     describe "GET new" do
       it "returns http success" do
         get :new
         expect(response).to have_http_status(:success)
       end

       it "renders the #new view" do
         get :new
         expect(response).to render_template :new
       end

       it "instantiates @wiki" do
         get :new
         expect(assigns(:wiki)).not_to be_nil
       end
     end

     describe "WIKI create" do
       it "increases the number of Wiki by 1" do
         expect{wiki :create, wiki: {title: RandomData.random_sentence, body: RandomData.random_paragraph}}.to change(Wiki,:count).by(1)
       end

       it "assigns the new wiki to @wiki" do
         post :create, post: {title: RandomData.random_sentence, body: RandomData.random_paragraph}
         expect(assigns(:wiki)).to eq Post.last
       end

       it "redirects to the new wiki" do
         post :create, wiki: {title: RandomData.random_sentence, body: RandomData.random_paragraph}
         expect(response).to redirect_to Wiki.last
       end
     end

  # describe "GET #edit" do
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
