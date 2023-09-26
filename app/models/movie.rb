# class Movie < ApplicationRecord
#   has_many :bookmarks

#   validates :title, presence: true, uniqueness: true
#   validates :overview, presence: true
# end


class Movie < ApplicationRecord
  self.table_name = "wch_lst_movies"
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
