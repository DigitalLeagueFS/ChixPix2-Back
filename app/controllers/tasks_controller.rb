class TasksController < ApplicationController
  def show
    @tasks = Task.all
    @tasks.each do |elem|
      if elem.deadline > Date.current
        Task.update(elem.id,:result_id=>1)
      else
        Task.update(elem.id,:result_id=>2)
      end
    end
    @send_task = Task.joins(:result).select('id','name','deadline','user_id','result_description')
        .where.not(result_id: 2)
    render json: @send_task.as_json
  end
  def show_task
    puts Task.third.as_json
    @task = Task.joins(:client,:result,:user)
                .select('name','description','beginning','deadline','result_description',
                        'client_name','client_surname','client_thirdName',
                        'user_firstName','user_secondName','user_thirdName').find(params[:id])
    render json: @task.as_json
  end
end
