class CreateFoodtrucks < ActiveRecord::Migration[5.1]
  def change
    create_table :foodtrucks do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.string :menu
      t.string :foodtype
      t.string :logo
      t.integer :rating
      t.belongs_to :user
      t.string :address
      t.string :description


      t.timestamps
    end
  end
end
