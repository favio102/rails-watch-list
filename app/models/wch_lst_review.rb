class WchLstReview < ApplicationRecord
  # self.table_name = "wch_lst_reviews"
  belongs_to :wch_lst_list
  validates :rating, presence: true
end
