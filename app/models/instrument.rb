class Instrument < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON #This is only because we're using SQLITE. Once in production, change this!
  belongs_to :user, optional: true

  #Add validations here
  BRAND = %w(Fender Gibson Takamine Martin Ibanez)
  MODEL = %w(Uno Dos Tres Quatro)
  FINISH = %w(Black White Navy Red Clear Satin)
  CONDITION = %w(New Good Fair Poor)

end
