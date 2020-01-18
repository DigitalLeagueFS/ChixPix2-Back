require 'json'
class ClientsController < ApplicationController
  def showClients
    @client = Client.joins(:company).select('id','name','surname','thirdName','phone','date','link','company_name').all
    render json: @client.as_json
  end
  def addClients
    @company = Company.find_by_company_name(params[:clickedCompany][:company_name])
    @client = Client.create(
        :name=>params[:name],
        :surname=>params[:surname],
        :thirdName=>params[:thirdName],
        :phone=>params[:phone],
        :date=>params[:date],
        :link=>params[:link],
        :company_id=>@company.id
    )
    if @client
      render json: {status:'ok'}, status: 200
    else
      render json: {status:'not ok'}, status: 500 
    end
  end
  def getClient
    @client = Client.joins(:company).select('name','surname','thirdName','phone','date','link','company_name').find(params[:id])
    render json: @client.as_json
  end
  def deleteClients
    @client = Client.delete(params[:id])
    render json: {status:'ok'}, status: 200
  end

  def changeInfo
    @client = Client.update(params[:id],:name => params[:name], :surname => params[:surname], :thirdName => params[:thirdName], :phone => params[:phone])
    puts @client
  end
end
