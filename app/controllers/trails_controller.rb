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
        @trail = Trail.new(trail_params)

        if @trail.save
            render(json: { trail: @trail }, status: 201)
        else
            # Unprocessable Entity
            render(json: { trail: @trail }, status: 422)
        end
    end

    def update
        trail = Trail.find(params[:id])
        trail.update(trail_params)
        render(json: {trail: trail})
    end

    def destroy
        trail = Trail.destroy(params[:id])
        render(status: 204)
    end

    private # Any methods below here
    def trail_params
        # Returns a sanitized hash of the params with nothing extra
        params.required(:trail).permit(:trail_name, :location, :completed, :user_id)
    end
end