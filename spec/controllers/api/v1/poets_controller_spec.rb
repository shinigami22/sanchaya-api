require 'rails_helper'

RSpec.describe Api::V1::PoetsController, type: :controller do
  describe "GET #show" do
    before(:each) do
      @poet = FactoryGirl.create :poet
      get :show, id: @poet.id
    end

    it "returns the information about a reporter on a hash" do
      poet_response = json_response
      expect(poet_response[:name]).to eql @poet.name
    end

    it { should respond_with 200 }
  end

  #--------------------------------------------------------------------------

  describe "POST #create" do
    context "when is successfully created" do
      before(:each) do
        user = FactoryGirl.create :user
        @poet_attributes = FactoryGirl.attributes_for :poet
        api_authorization_header user.auth_token
        post :create, { user_id: user.id, poet: @poet_attributes }
      end

      it "renders the json representation for the poet record just created" do
        poet_response = json_response
        expect(poet_response[:name]).to eql @poet_attributes[:name]
      end

      it { should respond_with 201 }
    end

    context "when is not created" do
      before(:each) do
        user = FactoryGirl.create :user
        @invalid_poet_attributes = { name: "Basavanna", pen_name: "Basava" }
        api_authorization_header user.auth_token
        post :create, { user_id: user.id, poet: @invalid_poet_attributes }
      end

      it "renders an errors json" do
        poet_response = json_response
        expect(poet_response).to have_key(:errors)
      end

    end
  end


  #----------------------------------------------------------------
  describe "PUT/PATCH #update" do
    before(:each) do
      @user = FactoryGirl.create :user
      @poet = FactoryGirl.create :poet, user: @user
      api_authorization_header @user.auth_token
    end

    context "when is successfully updated" do
      before(:each) do
        patch :update, { user_id: @user.id, id: @poet.id,
              poet: { name: "new_name" } }
      end

      it "renders the json representation for the updated user" do
        poet_response = json_response
        expect(poet_response[:name]).to eql "new_name"
      end

      it { should respond_with 200 }
    end

    context "when is not updated" do
      before(:each) do
        patch :update, { user_id: @user.id, id: @poet.id,
              poet: { pen_name: " " } }
      end

      it "renders an errors json" do
        poet_response = json_response
        expect(poet_response).to have_key(:errors)
      end

      it { should respond_with 422 }
    end
  end
  #-------------------------------------------------------------------
   describe "DELETE #destroy" do
    before(:each) do
      @user = FactoryGirl.create :user
      @poet = FactoryGirl.create :poet, user: @user
      api_authorization_header @user.auth_token
      delete :destroy, { user_id: @user.id, id: @poet.id }
    end

    it { should respond_with 204 }
  end
end
