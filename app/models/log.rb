class Log < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :category, optional: true
    
  with_options presence: true do
    validates :user_id
    validates :category_id
end
