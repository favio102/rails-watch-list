class WchLstReviewsController < ApplicationController
  def create
    @review = WchLstReview.new(review_params)
    @list = WchLstList.find(params[:wch_lst_list_id])
    @review.wch_lst_list = @list
    if @review.save
      redirect_to wch_lst_list_path(@list)
    else
      @bookmark = WchLstBookmark.new
      render 'wch_lst_lists/show', status: :unprocessable_entity
    end
  end

  def destroy
    @review = WchLstReview.find(params[:id])
    @review.destroy
    redirect_to wch_lst_list_path(@review.wch_lst_list)
  end

  private

  def review_params
    params.require(:wch_lst_review).permit(:comment, :rating)
  end
end
