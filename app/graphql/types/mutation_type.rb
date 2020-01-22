module Types
  class MutationType < Types::BaseObject
  field :update_cars, mutation: Mutations::UpdateCar
  end
end
