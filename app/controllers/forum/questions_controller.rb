class Forum::QuestionsController < ProfileController
  before_action :set_question, only: [:edit, :update, :show, :destory]
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new    
  end

  def create
    @question = Question.new(params_question)
    if @question.save
      redirect_to forum_questions_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    
    def set_question
      @question = Question.find(params[:id])
    end

    def params_question
      params.require(:question).permit(:title, :body)
    end
    


  
end
