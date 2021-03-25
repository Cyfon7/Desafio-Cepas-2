require 'rails_helper'

RSpec.describe Grape, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  context 'grapes cant have the same name' do
    it 'creates the same grape into the database' do
      expect{ Grape.create!([{name: "GrapeTest"}, {name: "GrapeTest"}])}.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  context 'grapes must have a name' do
    it 'creates nil grape' do
      expect { Grape.create! }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'creates blank grape' do
      expect { Grape.create!(name: "") }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'creates "Carmenere" grape' do
      expect { Grape.create!(name: "Carmenere") }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end