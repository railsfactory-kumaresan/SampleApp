class Part < ActiveRecord::Base
  has_and_belongs_to_many :assemblies
  before_save :update_data

  private

  def update_data
    self.part_number = "dummy" + self.part_number
  end
end