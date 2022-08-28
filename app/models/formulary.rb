class Formulary < ApplicationRecord
    validates :name, presence: {message: "El campo name debe estar lleno!"} 
    validates :description, presence: {message: "El campo description debe estar lleno!"} 
    validates :condition, presence: {message: "El campo condition debe estar lleno!"} 
end
