module Amazon
  class SignInPage < Page

    def layer
      @browser
    end
    def title
      "Amazon Sign In"
    end

  end
  Pages.register_page(Amazon::SignInPage, :sign_in_page)
end
