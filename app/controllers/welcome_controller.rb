class WelcomeController < ApplicationController
    def index
        flash[:notice]="this is a test"
    end
end
