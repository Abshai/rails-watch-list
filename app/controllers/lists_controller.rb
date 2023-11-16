class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    # raise
    # @list = List.find(params[:id])
  end
end
