class TasksController < ApplicationController
  private def token_id
    secret = 'CRM_SYSTEM'
    str = request.headers['Authorization']
    JWT.decode str, secret, false, {algorithm: 'HS256'}
  end
  def show
    @tasks = Task.all
    @tasks.each do |elem|
      if elem.deadline < Date.current
        Task.update(elem.id,result_id:2)
      end
    end
    @send_task = Task.left_outer_joins(:result,:user).select('id','name','deadline','user_id','result_description',
                                                             'user_firstname')
        .where.not(result_id: [2,3,4])
    render json: @send_task.as_json
  end
  def show_task
    @task = Task.left_outer_joins(:client,:result,:user)
                .select('name','description','beginning','deadline','result_description',
                        'client_name','client_surname','client_thirdName',
                        'user_firstName','user_secondName','user_thirdName').find(params[:id])

    render json: @task.as_json
  end
  def delete
    @task = Task.delete(params[:id])
    render json: @task.as_json, status: 200
  end
  def take
    id = token_id
    @task = Task.find(params[:id])
    @task.update(user_id:Integer(id[0]))
    @send_task = Task.left_outer_joins(:user).select('user_firstname').find(params[:id])
    render json: {'tasks':@task.as_json,'name':@send_task.as_json}
  end
  def create
    @task = Task.create(name:params[:name],
                        description:params[:description],
                        beginning:params[:beginning],
                        deadline:params[:deadline],
                        result_id:1,
                        client_id:params[:user_id]
    )
    render json: {task:@task.as_json,result_description:'Not ready'}
    @task.save!
  end
  def user_tasks
    id = token_id[0]
    @send_task = Task.left_outer_joins(:result).select('id','name','deadline','user_id','result_description')
        .where(user_id:id,result_id:1).all
    render json:@send_task.as_json
  end
  def complete
    @task = Task.update(params[:id],result_id:3)
    render json: @task.as_json
  end
  def archive
    @send_task = Task.left_outer_joins(:result,:user).select('id','name','deadline','user_id','result_description',
                                                             'user_firstname')
                     .where.not(result_id: 1)
    render json: @send_task.as_json
  end
end
