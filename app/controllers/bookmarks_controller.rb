class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def create
    @list = list.find(params[:list_id])
     @bookmark = Bookmark.new(bookmark_params)
     @bookmark.list = @list
      if @bookmark.save
      redirect_to list_path(@list)
      else
        render :new, status: :unprocessable_entity
      end
  end

  def destroy
    # variable to find bookmark
    # destroy bookmark
    # redirect
  end

   private

   def bookmark_params
     params.require(:bookmark).permit(:comment, :movie_id)
   end
end
