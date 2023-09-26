class CreateWchLstBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :wch_lst_bookmarks do |t|
      t.text :comment
      t.references :wch_lst_movie, null: false, foreign_key: true
      t.references :wch_lst_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
