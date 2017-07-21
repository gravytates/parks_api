class ParksController < ApplicationController

  def index
    @parks = {"name": "Yellowstone", "state": "Wyoming", "acres": "2221440"}
    json_response(@parks)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
