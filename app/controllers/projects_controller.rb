class ProjectsController < ApplicationController

  def index
  	@projects = Project.ordered
  end

  def show
  	@project = Project.find(params[:id])
    respond_to do |format|
      format.html { render :layout => false }
    end
  end

  def new
  	@project = Project.new(name: "Project Name", order: 1, description: "Provide a description of the project")
    5.times {@project.assets.build}
    respond_to do |format|
      format.html { render :layout => false }
    end
  end

  def create
  	@project = Project.new(project_params)

  	if @project.save
      flash[:success] = "You successfully created #{@project.name}!"
  		redirect_to(:action => "index")
  	else
  		render('new')
  	end
  end

  def edit
  	@project = Project.find(params[:id])
    5.times {@project.assets.build}
    respond_to do |format|
      format.html { render :layout => false }
    end
  end

  def update
  	@project = Project.find(params[:id])

  	if @project.update_attributes(project_params)
      flash[:success] = "You successfully updated the project: #{@project.name}!"
  		redirect_to(:action => "index")
  	else
  		render('edit')
  	end
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
    flash[:success] = "You successfully deleted the project: #{project.name}"
    redirect_to(:action => "index")
  end

  private	
	  def project_params
	  	  params.require(:project).permit(:name, :description, :kind, :order, :siteurl, :image, :remove_image, :assets_attributes => [:image, :id])
	  end

end
