class ParksController < ApplicationController
  def index
    state = SearchFacade.new
    @parks = state.get_parks(params[:state])
  end
end