class Blog < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true, length: { maximum: 140 }
    
    # DAY 16 addition
    belongs_to :user
    paginates_per 10
    scope :index_all, -> {
        select(:id, :title, :content, :created_at, :user_id)
        .order(created_at: :asc)
        .includes(:user)
    }
    
    # DAY 16 task addition
    has_many :comments, dependent: :destroy
end