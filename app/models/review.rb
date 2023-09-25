# class Review < ApplicationRecord
#   belongs_to :list
#   validates :rating, presence: true
# end


class Review < ApplicationRecord
  self.table_name = "wat_lst_create_reviews"
  belongs_to :list
  validates :rating, presence: true
end
