class Category < ApplicationRecord
  belongs_to :log, optional: true
end
