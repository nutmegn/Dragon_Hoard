class PagesController < ApplicationController
  def home
   @posts = Blog.all
   @skills = Skill.all
  end

  def about
      @skills = Skill.all
  end

  def contact
  end
  
  def tech_news
      @twitter = SocialTool.twitter_search
  end
end
