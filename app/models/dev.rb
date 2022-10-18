class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def recevied_one?(item_name)
        self.freebies.any? do |freebie|
            freebie.item_name == item_name
        end
    end

    def give_away(dev, freebie)
        if(freebie.dev_id != self)
            freebie.update(dev_id: dev)
        end
    end

end
