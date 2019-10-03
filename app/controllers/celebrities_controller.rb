class CelebritiesController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :setup_data

    @@celebrities = []

    #Show all celebrities
    def index
        # render plain: "This is the index"
    end

    #Show a single celebrity
    def show
        # render plain: "This is the show"

        @id = params["id"].to_i

    end

    #Create a new celebrity
    def create

        puts "New celebrity #{params}"

        new_celebrity = {
            name: params[:name],
            notability: params[:notability]
        }
        # session[:celebrities].push new_celebrity

        @celebrities.push new_celebrity

        puts "New celebrity #{ @celebrities }"

        # render plain: "New celebrity added"

    end

    #Update a celebrity
    def update
    end

    #Remove a celebrity
    def destroy
    end

    private
    def setup_data

        session[:celebrities] = [
            { name: "Lindsay Lohan", notability: "Parent Trap" },
            { name: "Adam Sandler", notability: "Big Daddy" },
            { name: "Rob Schnider", notability: "Adam Sandler" }
        ] unless session[:celebrities]

        @celebrities = session[:celebrities]

    end
end
