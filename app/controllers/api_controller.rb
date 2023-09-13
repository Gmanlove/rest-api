# app/controllers/api_controller.rb
class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  before_action :set_api, only: [:show, :update, :destroy]

  # INDEX Endpoint
  def index
    @api = Person.all
    render json: @api
  end

  # CREATE Endpoint
  def create
    @api = Person.new(api_params)

    if @api.save
      render json: @api, status: :created
    else
      render json: @api.errors, status: :unprocessable_entity
    end
  end

  # READ Endpoint
  def show
    render json: @api
  end

  # UPDATE Endpoint
  def update
    if @api.update(api_params)
      render json: @api
    else
      render json: @api.errors, status: :unprocessable_entity
    end
  end

  # DELETE Endpoint
  def destroy
    @api.destroy
    head :no_content
  end

  # Find by Name Endpoint
  def find_by_name
    @api = Person.where(name: params[:name])
    render json: @api
  end
   # CREATE by Name Endpoint
   def create_by_name
    @api = Person.new(api_params.merge(name: params[:name]))

    if @api.save
      render json: @api, status: :created
    else
      render json: @api.errors, status: :unprocessable_entity
    end
  end

  # READ by Name Endpoint
  def show_by_name
    @api = Person.find_by(name: params[:name])
    render json: @api
  end

  # UPDATE by Name Endpoint
  def update_by_name
    @api = Person.find_by(name: params[:name])

    if @api.update(api_params)
      render json: @api
    else
      render json: @api.errors, status: :unprocessable_entity
    end
  end
  
  def destroy_by_name
    @api = Person.find_by(name: params[:name])
    @api.destroy
    head :no_content
  end

  private

  def set_api
    @api = Person.find(params[:id])
  end

  def api_params
    params.require(:person).permit(:name, :age)
  end
end
