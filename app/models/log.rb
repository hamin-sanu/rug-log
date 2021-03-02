class Log < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :category, optional: true
    
  with_options presence: true do
    validates :user_id
    validates :category_id
    validates :body
    validates :matchData
    validates :how, acceptance: true
    validates :team_a, length: { maximum: 8 }
    validates :team_b, length: { maximum: 8 }
  end

  validates :score_a, format: { with: /\A[0-9]+\z/ }
  validates :score_b, format: { with: /\A[0-9]+\z/ }

  default_scope -> { order(created_at: :desc) }
end
