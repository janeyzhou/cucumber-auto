module Amazon
  class AmazonHomePage < Page

    def url
      "www.amazon.com"
    end

    def layer
      @browser
    end
    def search_bar
      layer.text_field(id: "twotabsearchtextbox")
    end
    def search_button
      layer.div(:class => 'nav-right')
    end
    def your_amazon_link
      layer.link(:id => "nav-your-amazon")
    end
  end
  Pages.register_page(Amazon::AmazonHomePage, :amazon_home_page)
end

