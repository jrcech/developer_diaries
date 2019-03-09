# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  first_name             :string
#  last_name              :string
#  username               :string
#

FactoryBot.define do
  factory :user do
    email { 'user@example.com' }
    password { 'MyString' }
    reset_password_token { 'MyString' }
    reset_password_sent_at { '2019-03-08 15:33:28' }
    remember_created_at { '2019-03-08 15:33:28' }
    sign_in_count { 1 }
    current_sign_in_at { '2019-03-08 15:33:28' }
    last_sign_in_at { '2019-03-08 15:33:28' }
    current_sign_in_ip { '' }
    last_sign_in_ip { '' }
    confirmation_token { 'MyString' }
    confirmed_at { '2019-03-08 15:33:28' }
    confirmation_sent_at { '2019-03-08 15:33:28' }
    unconfirmed_email { 'MyString' }
    created_at { '2019-03-08 15:33:28' }
    updated_at { '2019-03-08 15:33:28' }
  end
end
