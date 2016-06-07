class Project < ActiveRecord::Base
  has_many :tags, dependent: :destroy
  validates :title, presence: true
  validates :website_url, presence: true
  validates :description, presence: true
end