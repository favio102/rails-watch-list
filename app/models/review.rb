# class Review < ApplicationRecord
#   belongs_to :list
#   validates :rating, presence: true
# end


class Review < ApplicationRecord
  self.table_name = "wch_lst_reviews"
  belongs_to :wch_lst_list
  validates :rating, presence: true
end
