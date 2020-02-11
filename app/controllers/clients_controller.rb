require 'json'
class ClientsController < ApplicationController
  def show
    @client = Client.joins(:company).select('id',
                                            'client_name',
                                            'client_surname',
                                            'client_thirdname',
                                            'client_phone',
                                            'client_date',
                                            'link',
                                            'company_name').all
    render json: @client.as_json
  end
  def create
    @company = Company.find_by_company_name(params[:clickedCompany])
    @client = Client.create(
        :client_name=>params[:name],
        :client_surname=>params[:surname],
        :client_thirdname=>params[:thirdName],
        :client_phone=>params[:phone],
        :client_date=>params[:date],
        :link=>params[:link],
        :company_id=>@company.id
    )
    if @client
      render json: {status:'ok',id:@client.id}, status: 200
    else
      render json: {status:'not ok'}, status: 500 
    end
  end
  def show_client
    @client = Client.joins(:company).select('client_name',
                                            'client_surname',
                                            'client_thirdname',
                                            'client_phone',
                                            'client_date',
                                            'link',
                                            'company_name').find(params[:id])
    render json: @client.as_json
  end
  def show_name
    @clients = Client.select('id,client_name,client_surname').all
    render json: @clients.as_json
  end
  def delete
    @client = Client.find(params[:id])
    @client.destroy
    render json: {status:'ok'}, status: 200
  end
end
