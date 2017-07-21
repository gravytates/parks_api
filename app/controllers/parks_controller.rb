class ParksController < ApplicationController
    # before_action :authenticate_request!, except: [:index, :show]

  def index

    if params[:name]
      name = params[:name]
      @parks = Park.search_by_name(name)
    elsif params[:state]
      state = params[:state]
      @parks = Park.search_by_state(state)
    elsif params[:acres]
      acres = params[:acres]
      @parks = Park.search_by_acres(acres)
    elsif params[:ownership]
      ownership = params[:ownership]
      @parks = Park.search_by_ownership(ownership)
    elsif params[:page]
      @parks = Park.paginate(page: params[:page], per_page: 10)
    else
      @parks = Park.all
    end

    json_response(@parks)
  end

  def show
    json_response(Park.find(params[:id]))
  end

  def create
    json_response(Park.create!(park_params), :created)
  end

  def update
    @park = Park.find(params[:id])
    @park.update(park_params)
    if @park.update!(park_params)
      render status: 200, json: { message: "Your park has successfully been updated." }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    @park.destroy
    if @park.destroy!
      render status: 200, json: { message: "Your park has successfully been deleted." }
    end
  end

  private

  def park_params
    params.permit(:name, :state, :acres, :ownership)
  end

end
