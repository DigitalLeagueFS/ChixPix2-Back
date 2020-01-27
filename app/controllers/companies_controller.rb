class CompaniesController < ApplicationController
  def show
    @com = Company.all
    render json: @com.as_json
  end

  def show_name
    @com = Company.select('company_name').all
    render json: @com.as_json
  end

  def delete
    @com = Company.find(params[:id])
    @com.destroy
    render json: {status:'ok'}, status: 200
  end

  def create
    @com = Company.create(
        :company_name=>params[:name],
        :desc=>params[:type],
        :link=>params[:link],
        :text=>params[:description],
        :img=>params[:photoLink]
    )
    @com.save
    render json:@com.as_json
  end
end
