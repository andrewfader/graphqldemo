class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.belongs_to :make
      t.belongs_to :model
      t.string :year
      t.timestamps
    end
    create_table :models do |t|
      t.string :name
      t.belongs_to :make
      t.timestamps
    end
    create_table :makes do |t|
      t.string :name
      t.timestamps
    end
  end
end
