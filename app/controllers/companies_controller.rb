class CompaniesController < ApplicationController
  def showAllCompanies
    @com = Company.all
    render json: @com.as_json
  end
end
