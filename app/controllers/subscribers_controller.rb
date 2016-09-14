class SubscribersController < ApplicationController
    before_filter :authenticate_user!
    
    def new
        token = params[:stripeToken]
        
        customer = Stripe::Customer.create(
            card: token,
            plan: 1020,
            email: current_sign_in.email
        
            )
            current_user.subscribed = true
            current_user.stripeid = customer.id
            current_user.save
            
            redirect_to root_path
    end
    def create
    end
    def update
    
        token = params[:stripeToken]
        
        customer = Stripe::Customer.create(
            card: token,
            plan: 1020,
            email: current_sign_in.email
        
            )
            current_user.subscribed = true
            current_user.stripeid = customer.id
            current_user.save
            
            redirect_to root_path
    end
end
