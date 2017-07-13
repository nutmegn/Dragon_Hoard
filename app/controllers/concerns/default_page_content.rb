module DefaultPageContent
     extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

    def set_page_defaults
      @page_title = "Natalie Smiley | My Portfolio Website"
      @seo_keywords = "Natalie Smiley portfolio"
    end 
end

    
