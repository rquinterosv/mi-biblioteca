class Libro < ApplicationRecord
    validates :titulo, presence: true 
    validates :autor, presence: true
    validates :estado, presence: true
    validates :fecha_prestado, presence: true
    validates :fecha_devolucion, presence: true

    enum estado: [:prestado, :en_estante]
end
