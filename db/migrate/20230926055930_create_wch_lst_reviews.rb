class CreateWchLstReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :wch_lst_reviews do |t|
      t.text :comment
      t.integer :rating
      t.references :wch_lst_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
