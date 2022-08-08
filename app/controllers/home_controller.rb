class HomeController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[homepage]
    def homepage
    end
  
    def dashboard
    end
end