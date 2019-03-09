# frozen_string_literal: true

puts 'Seeding Roles'

roles = %w[user admin super_admin]

roles.each do |role|
  seed Role, name: role
end

puts
