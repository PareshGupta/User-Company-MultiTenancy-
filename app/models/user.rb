class User < ActiveRecord::Base

  devise :invitable, :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  belongs_to :company

  private

end
