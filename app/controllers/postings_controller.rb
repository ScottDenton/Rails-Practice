class PostingsController < ApplicationController
  def index
    @postings = Posting.all
  end

  def show
    @posting = Posting.find(params[:id])
  end

  def new
    @posting=Posting.new
    @companies = Company.all
  end

  def create
    Posting.create(posting_params)
    redirect_to postings_path
  end

  def edit
    @posting=Posting.find(params[:id])
    @companies = Company.all

  end

  def update
    @posting = Posting.find(params[:id])
    @posting.update(posting_params)
    redirect_to postings_path
  end

  private

  def posting_params
    params.require(:posting).permit(:position, :location, :job_description, :company_id)
  end
end
