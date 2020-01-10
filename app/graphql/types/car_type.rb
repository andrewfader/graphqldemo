module Types
  class CarType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :make, MakeType, null: false
    field :model, ModelType, null: false
    field :mpg, String, null: false
  end
end
