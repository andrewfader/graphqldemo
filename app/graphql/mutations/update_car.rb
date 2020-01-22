class Mutations::UpdateCar < Mutations::BaseMutation
  null true

  argument :year, String, required: true
  argument :id, ID, required: true

  field :car, Types::CarType, null: true
  field :errors, [String], null: false

  def resolve(year:, id:)
    car = Car.find(id)
    binding.pry
    if car.update!(year: year)
      {
        car: car,
        errors: [],
      }
    else
      {
        car: nil,
        errors: car.errors.full_messages
      }
    end
  end
end
