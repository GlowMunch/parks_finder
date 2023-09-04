class SearchFacade

  def get_parks(state)
    service = NationalParksService.new
    request = service.park_by_state(state)
    @parks = request[:data].map do |park|
      Park.new(park)
    end
  end
  
end