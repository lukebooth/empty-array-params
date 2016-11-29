class TestController < ApplicationController

  def update
    render :json => params.to_h.except(:controller, :action)
  end

end
