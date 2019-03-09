# frozen_string_literal: true

puts 'Seeding Admins'

seed User, { email: 'jiricech94@gmail.com' },
     password: '12345678',
     confirmed_at: DateTime.now,
     confirmation_token: 'Auto Confirmed'
puts
