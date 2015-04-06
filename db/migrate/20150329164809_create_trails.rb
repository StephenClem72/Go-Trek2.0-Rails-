class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :country
      t.string :activity_type
      t.float :length
      t.float :rating
      t.string :description
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
