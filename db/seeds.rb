<<<<<<< HEAD
# faker::Movies::PrincessBride
=======
10.times do
  location = Location.create(
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
>>>>>>> b009b9035267c3b74e49103530cfde6a7804847a
