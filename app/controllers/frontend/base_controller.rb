module Frontend
  class BaseController < ::ApplicationController

    before_action :init_view
    layout 'frontend/main'

    def index
      render :plain => "I'm frontend"
    end

    protected

    def init_view
      @meta = {title: "uuhome"}
    end

  end
end

