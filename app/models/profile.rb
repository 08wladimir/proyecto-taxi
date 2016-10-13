class Profile < ApplicationRecord
    
  #drivers
  has_many :drivers, dependent: :destroy
  accepts_nested_attributes_for :drivers, reject_if: proc { |attr| attr['type'].blank? }, allow_destroy: true
  validates :firstName, presence: true
  
  #vehicles
  has_many :vehicules, dependent: :destroy
  accepts_nested_attributes_for :vehicules, reject_if: proc { |attr| attr['kind'].blank? }, allow_destroy: true
  validates :firstName, presence: true
  
  #vehicles
  has_many :references_vehicle_drivers, dependent: :destroy
  accepts_nested_attributes_for :references_vehicle_drivers, reject_if: proc { |attr| attr['kind'].blank? }, allow_destroy: true
  validates :firstName, presence: true
end
