class WchLstList < ApplicationRecord
  # self.table_name = "wch_lst_lists"
  has_many :wch_lst_bookmarks, dependent: :destroy
  has_many :wch_lst_movies, through: :wch_lst_bookmarks, dependent: :destroy
  has_many :wch_lst_reviews, dependent: :destroy
  has_one_attached :photo
  validates :name, uniqueness: true, presence: true
end
