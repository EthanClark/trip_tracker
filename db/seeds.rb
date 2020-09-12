10.times do
  location = Location.create(
    loc_name: Faker::Games::WarhammerFantasy.location
    loc_type: Faker::Games::ElderScrolls.region
    main_activity: Faker::Esport.game
    first_name: Faker::Name.first_name  
    last_name: Faker::Name.last_name  
  )
  5.times do
    trip = Trip.create(
      trip_name: Faker::Movies::PrincessBride.quote
<<<<<<< HEAD
      party_size: Faker::Number.between(from: 1, to: 10)
      trip_deposit: Faker::Boolean.boolean
=======
>>>>>>> 39b3e26... trip_fuse
    )
    Reservation.create(
      res_date: Faker::Date.forward(days: 89)
      trip_id: trip.id,
      location_id: location.id
    )
  end
end
