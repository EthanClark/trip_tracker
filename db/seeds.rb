10.times do
  locations = Locations.create(
    loc_name: Faker::Games::WarhammerFantasy.location
  )
  5.times do
    trip = Trip.create(
      name: Faker::Movies::PrincessBride.quote
    )
    Reservation.create(
      trip_id: trip.id,
      location_id: location.id
    )
  end
end