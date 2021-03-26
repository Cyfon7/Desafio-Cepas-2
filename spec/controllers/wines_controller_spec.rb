require 'rails_helper'

RSpec.describe WinesController, type: :controller do

    context "GET index" do
        #test showing wines list
        it "assigns @wines" do
            user = User.create(email: "admin@mail.com", password: "password")
            sign_in user

            wine = Wine.create(name: "Wine Test", varietal: 1)
            get :index

            expect(assigns(:wines)).to eq([wine])

            sign_out user
        end

        #test rendering index
        it "renders the index template" do
            user = User.create(email: "admin@mail.com", password: "password")
            sign_in user

            get :index

            expect(response).to render_template("index")

            sign_out user
        end
    end

    context "GET show" do
        #test rendering sho
        it "renders the show template" do
            user = User.create(email: "admin@mail.com", password: "password")
            sign_in user

            winetest = Wine.create(name: "Wine Test", varietal: 1)
            get :show, params: { id: winetest.id }

            expect(response).to render_template(@wine)

            sign_out user
       end
    end


end