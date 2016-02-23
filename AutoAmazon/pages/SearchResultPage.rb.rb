module Amazon
  class SearchResultPage < Page


    def layer
      @browser
    end

    def search_item
      layer.li(:id => 'result_2')
    end
  end
  Pages.register_page(Amazon::SearchResultPage, :search_result_page)
end

