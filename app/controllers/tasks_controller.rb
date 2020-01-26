class TasksController < ApplicationController
  def show
    @res = Task.create(
        :name=>'Pet a cat',
        :description=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac lacus in nisl consequat blandit. Proin consectetur rhoncus erat in vestibulum. Proin sed mauris ante. Proin euismod neque eget nunc venenatis, sagittis facilisis neque aliquam. Nulla vel aliquam arcu. Etiam elit eros, tristique vel tempor sed, fermentum et eros. Quisque aliquet placerat neque nec vehicula.
    Donec aliquet magna tempus, malesuada magna non, pellentesque ligula. Curabitur congue mattis nisi ut pellentesque.',
        :beginning=>'2020-01-25',
        :deadline=>'2020-01-29',
        :finished=>nil,
        :user_id=>nil,
        :report=>nil,
        :result_id=>nil,
        :client_id=>2
    )
    puts @res.save!
    @tasks = Task.all
    render json: @tasks.as_json
  end
end
