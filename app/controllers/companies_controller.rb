class CompaniesController < ApplicationController
  def showAllCompanies
    @com = Company.all
    render json: @com.as_json
  end

  def getCompaniesName
    @com = Company.select('company_name').all
    render json: @com.as_json
  end
end
