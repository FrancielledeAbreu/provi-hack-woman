# == Schema Information
#
# Table name: challenges
#
#  id              :bigint           not null, primary key
#  challenges_type :integer          default("single")
#  description     :text             not null
#  image           :string
#  level           :integer          default("easy")
#  name            :string           not null
#  status          :integer          default("active")
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Challenge < ApplicationRecord
  LEVELS = %w(easy medium hard)
  TYPES = %w(single team)
  STATUSES = %w(active inactive)

  enum level: LEVELS
  enum challenges_type: TYPES
  enum status: STATUSES
end
