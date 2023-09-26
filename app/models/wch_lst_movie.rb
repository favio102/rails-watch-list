class WchLstMovie < ApplicationRecord
  # self.table_name = "wch_lst_movies"
  has_many :wch_lst_bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
