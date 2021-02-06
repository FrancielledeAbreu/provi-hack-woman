# == Schema Information
#
# Table name: user_challenges
#
#  id           :bigint           not null, primary key
#  status       :integer          default("approved")
#  url          :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  challenge_id :bigint           not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_user_challenges_on_challenge_id  (challenge_id)
#  index_user_challenges_on_user_id       (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (challenge_id => challenges.id)
#  fk_rails_...  (user_id => users.id)
#
class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge

  STATUSES = %w(approved denied in_review)

  enum status: STATUSES
end
