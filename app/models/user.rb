# == Schema Information
#
# Table name: users
#
#  id                    :bigint           not null, primary key
#  birthdate             :datetime
#  email                 :string           not null
#  experience            :integer
#  job                   :string
#  name                  :string           not null
#  password              :string           not null
#  password_confirmation :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class User < ApplicationRecord
end
