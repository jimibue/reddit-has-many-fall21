class Sub < ApplicationRecord
  #dependent: :destroy is telling rails it is ok
  # to delete all topics associated with sub
  has_many :topics, dependent: :destroy
end
