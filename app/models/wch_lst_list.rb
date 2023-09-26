class WchLstList < ApplicationRecord
  self.table_name = "wch_lst_lists"
  has_many :wat_lst_bookmarks, dependent: :destroy
  has_many :movies, through: :wat_lst_bookmarks, dependent: :destroy
  has_many :wat_lst_reviews, dependent: :destroy
  has_one_attached :photo
  validates :name, uniqueness: true, presence: true
end
