class ClientsController < ApplicationController
  def showClients
    @client = Client.joins(:company).select('id','name','surname','thirdName','phone','date','link','company_name').all
    render json: @client.as_json
  end
  def addClients
    puts params
  end
  def getClient
    @client = Client.joins(:company).select('name','surname','thirdName','phone','date','link','company_name').find(params[:id])
    render json: @client.as_json
  end
end
