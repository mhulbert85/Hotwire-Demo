class Forms::StepsController < ApplicationController
    

    def new
      @steps = @example.steps.new
    end
  
    def create
      @steps = @example.steps.create!(steps_params)
  
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to @example }
      end
    end
  
    private
  
    def set_example
      @example = Example.find(params[:example_id])
    end
  
    def steps_params
      params.require(:steps).permit(:first_name, :last_name, :address, :city, :email, :contact)
    end
end
