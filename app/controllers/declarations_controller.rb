class DeclarationsController < ApplicationController
  before_action :set_declaration, only: :show

  # GET /declarations
  def index
    if params[:state]
      @state = params[:state]
      @declarations = Declaration.where("state = '#{@state}'")
    elsif params[:year]
      @year = params[:year]
      @declarations = Declaration.where("fiscal_year = #{@year}")
    elsif params[:disaster]
      @disaster = params[:disaster]
      @declarations = Declaration.where("disaster_type = '#{@disaster}'")
    elsif params[:incident]
      @incident = params[:incident]
      @declarations = Declaration.where("incident_type = '#{@incident}'")
    else
      @declarations = Declaration.all
    end
      json_response(@declarations)
  end

  # GET /declarations/:id
  def show
    json_response(@declaration)
  end


  private

  def set_declaration
    @declaration = Declaration.find(params[:id])
  end
end