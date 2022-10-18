puts "Creating companies..."
company1 = Company.create(id: 1, name: "Google", founding_year: 1998)
company2 = Company.create(id: 2, name: "Facebook", founding_year: 2004)
company3 = Company.create(id: 3, name: "Dunder Mifflin", founding_year: 2002)
company4 = Company.create(id: 4, name: "Enron", founding_year: 1995)

puts "Creating devs..."
dev1 = Dev.create(id: 1, name: "Rick")
dev2 = Dev.create(id: 2, name: "Morty")
dev3 = Dev.create(id: 3, name: "Mr. Meseeks")
dev4 = Dev.create(id: 4, name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(id: 1, item_name: "Charger", value: 10, company_id: company1.id, dev_id: dev1.id)
Freebie.create(id: 2, item_name: "Laptop", value: 100, company_id: company3.id, dev_id: dev3.id)
Freebie.create(id: 3, item_name: "Apple", value: 9, company_id: company3.id, dev_id: dev3.id)
Freebie.create(id: 4, item_name: "Book", value: 200, company_id: company2.id, dev_id: dev2.id)
Freebie.create(id: 5, item_name: "TV", value: 1, company_id: company1.id, dev_id: dev1.id)


puts "Seeding done!"
