class Profile::TasksController < ProfileController
    before_action :set_task, only: [:destroy, :edit, :update]
    
    
    def edit
        
    end

    def update
        project = @task.project
        if @task.update(params_tasks)
            redirect_to profile_project_path(project), notice: "Tarefa editada com sucesso!"
        else
            redirect_to profile_project_path(params[:project_id]), notice: "Erro ao editar tarefa!"
        end
    end   
    
    
    def create        
        @task = Task.new(params_tasks)
        @task.project_id = params[:project_id]
        if @task.save
            redirect_to profile_project_path(params[:project_id]), notice: "Tarefa adicionada com sucesso!"
        else
            redirect_to profile_project_path(params[:project_id]), notice: "Erro ao adicionar a tarefa!"
        end
        
    end
    
    def destroy
        project_id = @task.project_id
        if @task.destroy
            redirect_to profile_project_path(project_id), notice: "Tarefa apagada com sucesso!"
        end

    end
    

    private

        def set_task
            @task = Task.find(params[:id])
        end
    
        def params_tasks
            params.require(:task).permit(:name, :description, :project_id, :date_limit, :status)            
        end
        
end
