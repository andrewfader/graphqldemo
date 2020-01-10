module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :all_cars, [CarType], null: false
    field :all_makes, [MakeType], null: false
    field :all_models, [ModelType], null: false

    # this method is invoked, when `all_link` fields is being resolved
    def all_cars
      Car.all
    end
    def all_makes
      Make.all
    end
    def all_models
      Model.all
    end
  end
end
