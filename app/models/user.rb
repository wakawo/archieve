class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  # Icon uploader
  mount_uploader :icon, IconUploader
  
  # DAY16 addition
  has_many :blogs, dependent: :destroy
  
  # DAY16 task addition
  scope :index_all, -> {
    select(:id, :name, :email, :created_at)
    .order(name: :asc)
    .includes(:blogs)
  }
end
