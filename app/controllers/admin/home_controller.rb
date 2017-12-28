module Admin
  class HomeController < BaseController

    def index
      render plain: "I'm CMS"
    end

  end
end
