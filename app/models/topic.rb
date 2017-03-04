class Topic < ActiveRecord::Base
  has_many :article_topics
  has_many :articles, through: :article_topics
  validates :name, presence: true
  validates_uniqueness_of :name
end