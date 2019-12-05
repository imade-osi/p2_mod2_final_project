class AgencyGigsController < ApplicationController
    def new
        @agencygig = AgencyGig.new

    end

    def create
        @agencygig = AgencyGig.create(agencygig_params)
 
        if @agencygig.valid?
             session[:agencygig_id] = @agencygig.id
             redirect_to @agencygig
    
         end
    end
    def agencygig_params
        params.require(:agencygig).permit(:date, :compensation)
    end 

end
