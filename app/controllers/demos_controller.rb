class DemosController < ApplicationController

  expose(:demo) { Demo.new(params[:demo]) }

  def create
    demo.apply
    render :index
  end
end
