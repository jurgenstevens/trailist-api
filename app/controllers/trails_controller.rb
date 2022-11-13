class TrailsController < ApplicationController
    # INDEX route to get all trails (HA!)
    def index
        # render json: Trail.all
        # or
        # render json: ActiveRecord::Base.connection.execute('SELECT * FROM trails;')
        # or
        # query_string = "SELECT * FROM trails;"
        # results = ActiveRecord::Base.connection.execute(query_string)
        # render json: results
        trails = Trail.all
        render json: {status: 200, trails: trails}
    end

    # SHOW route to get trails by id
    def show
        # Input comes in from the `params` hash
        trail = Trail.find(params[:id])
        render json: {status: 200, trail: trail}
    end

    def create
    end

    private # Any methods below here
    def trail_params
        # Returns a sanitized hash of the params with nothing extra
        params.required(:trail).permit(:trail_name, :location, :completed)
    end
end