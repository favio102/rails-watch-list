class WchLstListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]

  def index
    @lists = WchLstList.all
  end

  def show
    @bookmark = WchLstBookmark.new
    @review = WchLstReview.new(wch_lst_list: @list)
    @movies = @list.movies
  end

  def new
    @list = WchLstList.new
  end

  def create
    @list = WchLstList.new(list_params)
    if @list.save
      redirect_to wch_lst_list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @list.destroy
    redirect_to wch_lst_lists_path, status: :see_other
  end

  private

  def set_list
    @list = WchLstList.find(params[:id])
  end

  def list_params
    params.require(:wch_lst_list).permit(:name, :photo)
  end
end
