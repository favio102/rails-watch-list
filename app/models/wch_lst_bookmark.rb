class WchLstBookmark < ApplicationRecord
  self.table_name = "wch_lst_bookmarks"
  belongs_to :wch_lst_movie
  belongs_to :wch_lst_list

  validates :comment, length: {minimum: 6}
  validates :wat_lst_movie_id, uniqueness: {scope: :wat_lst_list_id, message: "is already in the list"}
end
