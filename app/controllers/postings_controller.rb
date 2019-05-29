class PostingsController < ApplicationController
  def index
    @postings = Posting.all
  end

  def show
    @posting = Posting.find(params[:id])
  end
end
