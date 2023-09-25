# class Bookmark < ApplicationRecord
#   belongs_to :movie
#   belongs_to :list

#   validates :comment, length: {minimum: 6}
#   validates :movie_id, uniqueness: {scope: :list_id, message: "is already in the list"}
# end

class Bookmark < ApplicationRecord
  self.table_name = "wat_lst_create_bookmarks"
  belongs_to :movie
  belongs_to :list

  validates :comment, length: {minimum: 6}
  validates :wat_lst_create_movie_id, uniqueness: {scope: :wat_lst_create_list_id, message: "is already in the list"}
end
