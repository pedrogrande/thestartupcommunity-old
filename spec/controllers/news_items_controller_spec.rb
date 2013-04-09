require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe NewsItemsController do

  # This should return the minimal set of attributes required to create a valid
  # NewsItem. As you add validations to NewsItem, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "user" => "" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # NewsItemsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all news_items as @news_items" do
      news_item = NewsItem.create! valid_attributes
      get :index, {}, valid_session
      assigns(:news_items).should eq([news_item])
    end
  end

  describe "GET show" do
    it "assigns the requested news_item as @news_item" do
      news_item = NewsItem.create! valid_attributes
      get :show, {:id => news_item.to_param}, valid_session
      assigns(:news_item).should eq(news_item)
    end
  end

  describe "GET new" do
    it "assigns a new news_item as @news_item" do
      get :new, {}, valid_session
      assigns(:news_item).should be_a_new(NewsItem)
    end
  end

  describe "GET edit" do
    it "assigns the requested news_item as @news_item" do
      news_item = NewsItem.create! valid_attributes
      get :edit, {:id => news_item.to_param}, valid_session
      assigns(:news_item).should eq(news_item)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new NewsItem" do
        expect {
          post :create, {:news_item => valid_attributes}, valid_session
        }.to change(NewsItem, :count).by(1)
      end

      it "assigns a newly created news_item as @news_item" do
        post :create, {:news_item => valid_attributes}, valid_session
        assigns(:news_item).should be_a(NewsItem)
        assigns(:news_item).should be_persisted
      end

      it "redirects to the created news_item" do
        post :create, {:news_item => valid_attributes}, valid_session
        response.should redirect_to(NewsItem.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved news_item as @news_item" do
        # Trigger the behavior that occurs when invalid params are submitted
        NewsItem.any_instance.stub(:save).and_return(false)
        post :create, {:news_item => { "user" => "invalid value" }}, valid_session
        assigns(:news_item).should be_a_new(NewsItem)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        NewsItem.any_instance.stub(:save).and_return(false)
        post :create, {:news_item => { "user" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested news_item" do
        news_item = NewsItem.create! valid_attributes
        # Assuming there are no other news_items in the database, this
        # specifies that the NewsItem created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        NewsItem.any_instance.should_receive(:update_attributes).with({ "user" => "" })
        put :update, {:id => news_item.to_param, :news_item => { "user" => "" }}, valid_session
      end

      it "assigns the requested news_item as @news_item" do
        news_item = NewsItem.create! valid_attributes
        put :update, {:id => news_item.to_param, :news_item => valid_attributes}, valid_session
        assigns(:news_item).should eq(news_item)
      end

      it "redirects to the news_item" do
        news_item = NewsItem.create! valid_attributes
        put :update, {:id => news_item.to_param, :news_item => valid_attributes}, valid_session
        response.should redirect_to(news_item)
      end
    end

    describe "with invalid params" do
      it "assigns the news_item as @news_item" do
        news_item = NewsItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        NewsItem.any_instance.stub(:save).and_return(false)
        put :update, {:id => news_item.to_param, :news_item => { "user" => "invalid value" }}, valid_session
        assigns(:news_item).should eq(news_item)
      end

      it "re-renders the 'edit' template" do
        news_item = NewsItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        NewsItem.any_instance.stub(:save).and_return(false)
        put :update, {:id => news_item.to_param, :news_item => { "user" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested news_item" do
      news_item = NewsItem.create! valid_attributes
      expect {
        delete :destroy, {:id => news_item.to_param}, valid_session
      }.to change(NewsItem, :count).by(-1)
    end

    it "redirects to the news_items list" do
      news_item = NewsItem.create! valid_attributes
      delete :destroy, {:id => news_item.to_param}, valid_session
      response.should redirect_to(news_items_url)
    end
  end

end
