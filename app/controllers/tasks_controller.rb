class TasksController < ApplicationController
  def show
    @tasks = Task.all
    @tasks.each do |elem|
      if elem.deadline > Date.current
        Task.update(elem.id,:result_id=>1)
      end
    end
    @send_task = Task.joins(:result).select('id','name','deadline','user_id','result_description').all
    render json: @send_task.as_json
  end
end
