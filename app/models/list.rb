# class List < ApplicationRecord
#   has_many :bookmarks, dependent: :destroy
#   has_many :movies, through: :bookmarks, dependent: :destroy
#   has_many :reviews, dependent: :destroy
#   has_one_attached :photo

#   validates :name, uniqueness: true, presence: true
# end


class List < ApplicationRecord
  self.table_name = "wat_lst_create_lists"
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :wat_lst_create_bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  validates :name, uniqueness: true, presence: true
end
