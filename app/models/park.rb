class Park < ApplicationRecord
  validates :name, :state, :acres, :ownership, presence: true

  scope :search_by_name, -> (name) { where("lower(name) like ?", "%#{name.downcase}%") }

  scope :search_by_state, -> (state) { where("lower(state) like ?", "%#{state.downcase}%") }

  scope :search_by_acres, -> (acres) { where("acres = ?", acres ) }

  scope :search_by_ownership, -> (ownership) { where("lower(ownership) like ?", "%#{ownership.downcase}%") }

  def self.random_id
    # binding.pry
    n = self.count
    id = rand(n)
  end

  scope :random_park, -> (id) {where("id = ?", id )}


end
