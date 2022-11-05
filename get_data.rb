require 'airrecord'
require 'dotenv'

require 'json'
require 'active_support/all'

Dotenv.load('.env')

Airrecord.api_key = ENV['AT_API_KEY']

class Book < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "books"
end

File.open("_data/books.json", "w") do |f|
	data = Book.all
	f.write(data.to_json)
end

class Celestial < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "celestials"
end

File.open("_data/celestials.json", "w") do |f|
	data = Celestial.all
	f.write(data.to_json)
end

class Chakra < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "chakras"
end

File.open("_data/chakras.json", "w") do |f|
	data = Chakra.all
	f.write(data.to_json)
end

class Company < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "companies"
end

File.open("_data/companies.json", "w") do |f|
	data = Company.all
	f.write(data.to_json)
end

class Crystal < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "crystals"
end

File.open("_data/crystals.json", "w") do |f|
	data = Crystal.all
	f.write(data.to_json)
end

class CrystalsMagical < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "crystals-magical"
end

File.open("_data/crystals_magicals.json", "w") do |f|
	data = CrystalsMagical.all
	f.write(data.to_json)
end

class Cycle < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "cycles"
end

File.open("_data/cycles.json", "w") do |f|
	data = Cycle.all
	f.write(data.to_json)
end

class CyclesRhythm < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "cycles-rhythm"
end

File.open("_data/cycles_rhythms.json", "w") do |f|
	data = CyclesRhythm.all
	f.write(data.to_json)
end

class Deity < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "deities"
end

File.open("_data/deities.json", "w") do |f|
	data = Deity.all
	f.write(data.to_json)
end

class Element < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "elements"
end

File.open("_data/elements.json", "w") do |f|
	data = Element.all
	f.write(data.to_json)
end

class Institution < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "institutions"
end

File.open("_data/institutions.json", "w") do |f|
	data = Institution.all
	f.write(data.to_json)
end

class MagicEffect < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "magic-effects"
end

File.open("_data/magic_effects.json", "w") do |f|
	data = MagicEffect.all
	f.write(data.to_json)
end

class MagicSchools < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "magic-schools"
end

File.open("_data/magic_schools.json", "w") do |f|
	data = MagicSchools.all
	f.write(data.to_json)
end

class Number < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "numbers"
end

File.open("_data/numbers.json", "w") do |f|
	data = Number.all
	f.write(data.to_json)
end

class Person < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "people"
end

File.open("_data/people.json", "w") do |f|
	data = Person.all
	f.write(data.to_json)
end

class Plant < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "plants"
end

File.open("_data/plants.json", "w") do |f|
	data = Plant.all
	f.write(data.to_json)
end

class PlantMagical < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "plants-magical"
end

File.open("_data/plant_magicals.json", "w") do |f|
	data = PlantMagical.all
	f.write(data.to_json)
end

class Religion < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "religions"
end

File.open("_data/religions.json", "w") do |f|
	data = Religion.all
	f.write(data.to_json)
end

class Ritual < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "rituals"
end

File.open("_data/rituals.json", "w") do |f|
	data = Ritual.all
	f.write(data.to_json)
end

class SourcebankImagePlant < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "sourcebank_images-plants"
end

File.open("_data/sourcebank_image_plants.json", "w") do |f|
	data = SourcebankImagePlant.all
	f.write(data.to_json)
end

class Tarot < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "tarot"
end

File.open("_data/tarots.json", "w") do |f|
	data = Tarot.all
	f.write(data.to_json)
end

class TarotDeck < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "tarot_decks"
end

File.open("_data/tarot_decks.json", "w") do |f|
	data = TarotDeck.all
	f.write(data.to_json)
end

class TarotDeckCard < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "tarot_deck_cards"
end

File.open("_data/tarot_deck_cards.json", "w") do |f|
	data = TarotDeckCard.all
	f.write(data.to_json)
end

class Tradition < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "traditions"
end

File.open("_data/traditions.json", "w") do |f|
	data = Tradition.all
	f.write(data.to_json)
end