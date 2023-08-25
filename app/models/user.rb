class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


           # Validaciones
  validates :role, inclusion: { in: %w[normal administrador] }
  # Enum de roles
  enum role: {
    normal: 'normal',
    admin: 'administrador'
  }, _default: 'normal'

end
