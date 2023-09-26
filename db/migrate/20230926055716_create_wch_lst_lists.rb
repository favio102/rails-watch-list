class CreateWchLstLists < ActiveRecord::Migration[7.0]
  def change
    create_table :wch_lst_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
