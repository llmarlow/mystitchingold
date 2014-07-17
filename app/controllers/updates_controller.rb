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
    
    def show
      #1st you retrieve the post thanks to params[:post_id]
      project = Project.find(params[:project_id])
    #2nd you retrieve the comment thanks to params[:id]
      @update = project.updates.find(params[:id])
    end

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end
 
  private
  
  def find_project
    @project = Project.find(params[:project_id])
  end
  def update_params
    params.require(:update).permit(:hours, :update_date, :update_image, :update_image_file_name)
    end
 
end
