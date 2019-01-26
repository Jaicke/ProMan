module Profile::ProjectHelper
    OptionsForStatus = Struct.new(:id, :description)

    def options_for_status
        Task.statuses_i18n.map do |key, value|
            OptionsForStatus.new(key, value)
        end
        
    end  

    def which_status(task)
        if task.pending?
            '#FFEB3B'
        elsif task.in_progress?
            '#FF5722'
        else
            '#4CAF50'
        end
    end
end
