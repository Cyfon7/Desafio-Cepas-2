require 'rails_helper'

RSpec.describe Grape, type: :model do
  context 'grapes cant have the same name' do
    #test uniqueness of grapes name
    it 'creates the same grape into the database' do
      expect{ Grape.create!([{name: "GrapeTest"}, {name: "GrapeTest"}])}.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  context 'grapes must have a name' do
    #test if name is nil
    it 'creates nil grape' do
      expect { Grape.create! }.to raise_error(ActiveRecord::RecordInvalid)
    end

    #test if name is ""
    it 'creates blank grape' do
      expect { Grape.create!(name: "") }.to raise_error(ActiveRecord::RecordInvalid)
    end

    #test if valid name
    it 'creates "Carmenere" grape' do
      expect { Grape.create!(name: "Carmenere") }.to_not raise_error
    end
  end
end