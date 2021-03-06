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

describe LitrasController do

  # This should return the minimal set of attributes required to create a valid
  # Litra. As you add validations to Litra, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LitrasController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all litras as @litras" do
      litra = Litra.create! valid_attributes
      get :index, {}, valid_session
      assigns(:litras).should eq([litra])
    end
  end

  describe "GET show" do
    it "assigns the requested litra as @litra" do
      litra = Litra.create! valid_attributes
      get :show, {:id => litra.to_param}, valid_session
      assigns(:litra).should eq(litra)
    end
  end

  describe "GET new" do
    it "assigns a new litra as @litra" do
      get :new, {}, valid_session
      assigns(:litra).should be_a_new(Litra)
    end
  end

  describe "GET edit" do
    it "assigns the requested litra as @litra" do
      litra = Litra.create! valid_attributes
      get :edit, {:id => litra.to_param}, valid_session
      assigns(:litra).should eq(litra)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Litra" do
        expect {
          post :create, {:litra => valid_attributes}, valid_session
        }.to change(Litra, :count).by(1)
      end

      it "assigns a newly created litra as @litra" do
        post :create, {:litra => valid_attributes}, valid_session
        assigns(:litra).should be_a(Litra)
        assigns(:litra).should be_persisted
      end

      it "redirects to the created litra" do
        post :create, {:litra => valid_attributes}, valid_session
        response.should redirect_to(Litra.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved litra as @litra" do
        # Trigger the behavior that occurs when invalid params are submitted
        Litra.any_instance.stub(:save).and_return(false)
        post :create, {:litra => {}}, valid_session
        assigns(:litra).should be_a_new(Litra)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Litra.any_instance.stub(:save).and_return(false)
        post :create, {:litra => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested litra" do
        litra = Litra.create! valid_attributes
        # Assuming there are no other litras in the database, this
        # specifies that the Litra created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Litra.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => litra.to_param, :litra => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested litra as @litra" do
        litra = Litra.create! valid_attributes
        put :update, {:id => litra.to_param, :litra => valid_attributes}, valid_session
        assigns(:litra).should eq(litra)
      end

      it "redirects to the litra" do
        litra = Litra.create! valid_attributes
        put :update, {:id => litra.to_param, :litra => valid_attributes}, valid_session
        response.should redirect_to(litra)
      end
    end

    describe "with invalid params" do
      it "assigns the litra as @litra" do
        litra = Litra.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Litra.any_instance.stub(:save).and_return(false)
        put :update, {:id => litra.to_param, :litra => {}}, valid_session
        assigns(:litra).should eq(litra)
      end

      it "re-renders the 'edit' template" do
        litra = Litra.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Litra.any_instance.stub(:save).and_return(false)
        put :update, {:id => litra.to_param, :litra => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested litra" do
      litra = Litra.create! valid_attributes
      expect {
        delete :destroy, {:id => litra.to_param}, valid_session
      }.to change(Litra, :count).by(-1)
    end

    it "redirects to the litras list" do
      litra = Litra.create! valid_attributes
      delete :destroy, {:id => litra.to_param}, valid_session
      response.should redirect_to(litras_url)
    end
  end

end
