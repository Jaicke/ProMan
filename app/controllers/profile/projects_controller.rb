class Profile::ProjectsController < ProfileController 
  before_action :set_project, only: [:edit, :update, :destroy, :show]  
  
  def index
    @projects = Project.where(user_id: current_user.id )
  end
    
  def new
    @project = Project.new
  end

  def show
    @task = Task.new  
    @tasks = Task.where(project: @project)  
  end
  
    
  def create
    @project = Project.new(params_project)
    @project.user = current_user
    if @project.save
      redirect_to profile_projects_path, notice: "Projeto salvo com sucesso!"
    else
      render :new
    end    
  end

  def edit
        
  end

  def update
    if @project.update(params_project)
      redirect_to profile_projects_path,  notice: "Projeto editado com sucesso!"
    else
      render :edit
    end
  end

  def destroy
    if @project.destroy
      redirect_to profile_projects_path, notice: "Projeto apagado com sucesso!"
    end
  end
  
    

  private

    def params_project
      params.require(:project).permit(:id, :name, :description)
    end
    
    def set_project
      @project = Project.find(params[:id])
    end

    
    
    
end
