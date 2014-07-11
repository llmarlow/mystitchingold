class UpdatesController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @update = @project.updates.create(update_params)
    redirect_to project_path(@project)
  end

  def destroy
    if params[:project_id]
      @project = Project.find(params[:project_id])
      @update = @project.updates.find(params[:id])
      @update.destroy
    end

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end
 
  private
  def update_params
    params.require(:update).permit(:hours, :update_date, :update_image)
    end
end
