class CompaniesController < ApplicationController
  def showAllCompanies
    @com = Company.all
    render json: @com.as_json
  end

  def getCompaniesName
    @com = Company.select('company_name').all
    render json: @com.as_json
  end

  def deleteCompanies
    @com = Company.delete_by(company_name: params[:company_name])
    puts @com
  end
end
