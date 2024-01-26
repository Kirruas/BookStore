class ExampleController < ApplicationController
    def example_handler
        if user_signed_in?
            render json: { "data": { "test": "OK"}}
        else
            render json: {"data": { "test": "Not OK"}}
        end
    end
end
