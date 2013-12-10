class InvitationsController < ApplicationController  
  
        def create
            @invitation = Invitation.new(params[:invitation])
               
            if @invitation.save
                respond_to do |format|
                format.html {redirect_to '/'}
                format.json 
                format.js   
                end
              else
                  render 'static_pages/home'
            end
       end
end