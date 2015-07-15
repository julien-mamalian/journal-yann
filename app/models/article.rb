# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  content     :string
#  first       :boolean
#  title       :string
#  description :string
#  themes      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#

class Article < ActiveRecord::Base
  belongs_to :user
end
