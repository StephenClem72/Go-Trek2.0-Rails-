class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.references :trail, index: true

      t.timestamps null: false
    end

    add_index :reviews, [:trail_id, :created_at]
  end
end
