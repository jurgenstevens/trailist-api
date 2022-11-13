class TrailsController < ApplicationController
    # INDEX route to get all trails (HA!)
    def index
        render json: ActiveRecord::Base.connection.execute('SELECT * FROM trails;')
    end
end