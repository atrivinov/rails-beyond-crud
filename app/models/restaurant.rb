class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # la u ltima linea nos permite que si
  # eliminamos un restaurante las reviews asignadas a dicho restaurante
  # tambien se eliminaran
end
