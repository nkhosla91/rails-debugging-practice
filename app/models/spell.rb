class Spell < ApplicationRecord
    has_many :favorite_spells
    has_many :wizards, through: :favorite_spells
end
