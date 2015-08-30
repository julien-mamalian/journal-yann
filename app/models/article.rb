# == Schema Information
#
# Table name: articles
#
#  id                 :integer          not null, primary key
#  content            :text
#  first              :boolean
#  title              :string
#  description        :string
#  themes             :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#  picture_file_name  :string
#  picture_file_size  :integer
#  picture_updated_at :datetime
#  second             :boolean
#  publish            :boolean          default(FALSE)
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#

class Article < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many(:articles,
    :join_table => "article_connections",
    :foreign_key => "article_a_id",
    :association_foreign_key => "article_b_id")

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }



  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  def self.search(search)
    Article.where('title LIKE ?', "%#{search}%")
    Article.where('content LIKE ?', "%#{search}%")
  end
end
