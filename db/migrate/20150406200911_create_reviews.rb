class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :content
      t.float :rating
      t.references :trail

      t.timestamps null: false
    end
  end
end
