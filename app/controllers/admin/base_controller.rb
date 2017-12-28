module Admin
  class BaseController < ::ApplicationController

    def index
      render :plain => "I'm admin"
    end

  end
end

