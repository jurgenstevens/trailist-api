class TrailsController < ApplicationController
    # INDEX route to get all trails (HA!)
    def index
        render json: Trail.all
        # or
        # render json: ActiveRecord::Base.connection.execute('SELECT * FROM trails;')
        # OR
        # query_string = "SELECT * FROM trails;"
        # results = ActiveRecord::Base.connection.execute(query_string)
        # render json: results
    end
end