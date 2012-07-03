Refinery::PagesController.class_eval do
  
    before_filter :find_news_items, :only => [:home]

    def find_news_items
        @news_items = ::Refinery::NewsItems::NewsItem.all
    end
  
    private :find_news_items
    end