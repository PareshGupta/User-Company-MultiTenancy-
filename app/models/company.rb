class Company < ActiveRecord::Base

  validates :name, :subdomain, presence: true
  validates :subdomain, uniqueness: { case_sensitive: false }

  has_one :owner
  has_many :users

  accepts_nested_attributes_for :owner

  after_create :downcase_subdomain

  # accepts_nested_attributes_for :users

  private

    def downcase_subdomain
      update(subdomain: subdomain.downcase)
    end

end