# == Schema Information
#
# Table name: article_connections
#
#  article_a_id :integer          not null
#  article_b_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  id           :integer          not null, primary key
#

class ArticleConnection < ActiveRecord::Base
end
