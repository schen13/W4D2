# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
  COLORS = %w(brown orange black white other)
  
  validates :birth_date, :name, :description, presence: true
  validates :color, presence: true, inclusion: {in: COLORS}
  validates :sex, presence: true, inclusion: {in: %w(M F)}
  
  has_many :cat_rental_requests,
  foreign_key: :cat_id,
  class_name: :CatRentalRequest,
  dependent: :destroy
  
  def age
    (Time.now - birth_date)/(3600 * 24 * 365)
  end
end
