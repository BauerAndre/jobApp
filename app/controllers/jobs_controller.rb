class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.save
    # No need for app/views/jobs/create.html.erb
    redirect_to job_path(@job)
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    # No need for app/views/jobs/update.html.erb
    redirect_to job_path(@job)
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    # No need for app/views/jobs/destroy.html.erb
    redirect_to jobs_path, status: :see_other
  end

  private

  def job_params
    params.require(:job).permit(:name, :address, :rating)
  end

end
