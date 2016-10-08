class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_settings
    private

    def set_settings
        @settings = Setting.all.order("created_at DESC").limit(1)
    end
end
