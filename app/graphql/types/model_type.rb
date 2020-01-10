module Types
  class ModelType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :make, MakeType, null: false
  end
end
