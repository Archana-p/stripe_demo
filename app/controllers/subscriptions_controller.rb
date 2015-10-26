class SubscriptionsController < ApplicationController

  def index
    @subscriptions = Subscription.all
  end

  
  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    respond_to do |format|
      if @subscription.save
        format.html { redirect_to subscriptions_path, notice: 'Subscription saved successfully' }
        format.json {  render :show, status: :ok, location: @subscription  }
      else
        format.html { render :new }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  def show

  end

  private
    def subscription_params
      params.require(:subscription).permit(:user_id, :plan_id)
    end
end
