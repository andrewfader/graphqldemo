require 'rails_helper'
describe CarsController, type: :controller do
  describe 'update' do
    it 'updates car' do
      make = Make.create!(name: "Toyota")
      model = Model.create!(name: "Corolla", make: make)
      car = Car.create!(year: '2001', make: make, model: model)
      process :update, method: :post, params: { id: car.id, car: { year: '2005'} }
      expect(car.reload.year).to eq '2005'
    end
  end

end
