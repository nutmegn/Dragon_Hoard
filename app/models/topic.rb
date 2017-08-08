class Topic < ApplicationRecord
    validates_presence_of :title
    
    has_many :blogs
    
    def self.with_blogs
        includes(:blogs).where.not(blogs: { id: nil })
    end
end

blog_filled_arry = []
topics = Topic.all
topics.each do |topic|
    blog_filled_arry << topic if topic.blogs.count > 0
end