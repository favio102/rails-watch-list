class WchLstBookmarksController < ApplicationController
  before_action :set_bookmark, only: :destroy
  before_action :set_list, only: [:new, :create]

  def new
    @bookmark = WchLstBookmark.new
  end

  def create
    @bookmark = WchLstBookmark.new(bookmark_params)
    @bookmark.wch_lst_list = @list
    if @bookmark.save
      redirect_to wch_lst_list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to wch_lst_list_path(@bookmark.wch_lst_list), status: :see_other
  end

  private

  def bookmark_params
    params.require(:wch_lst_bookmark).permit(:comment, :wch_lst_movie_id)
  end

  def set_bookmark
    @bookmark = WchLstBookmark.find(params[:id])
  end

  def set_list
    @list = WchLstList.find(params[:wch_lst_list_id])
  end
end
