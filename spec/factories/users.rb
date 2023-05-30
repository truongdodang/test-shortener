# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { 'Admin' }
    username { 'admin' }
    email { 'admin@example.com' }
    password { '123456' }
  end
end
