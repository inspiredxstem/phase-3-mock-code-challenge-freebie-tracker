class Company < ActiveRecord::Base
    has_many :freebies
    has_many :dev, through: :freebies

    def give_freebie(dev, item_name, value)
        Freebie.create(item_name: item_name, value: value, company_id: self, dev_id: dev)
    end

    def self.oldest_copmany
        Company.all.order(:founding_year).first
    end
end
