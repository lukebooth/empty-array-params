class TestController < ApplicationController

  def update
    render :json => params.except(:controller, :action)
  end

end
