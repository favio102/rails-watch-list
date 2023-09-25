# class Movie < ApplicationRecord
#   has_many :bookmarks

#   validates :title, presence: true, uniqueness: true
#   validates :overview, presence: true
# end


class Movie < ApplicationRecord
  self.table_name = "wat_lst_create_movies"
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
