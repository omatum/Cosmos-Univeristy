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

class Celestial < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "celestials"
end

class Chakra < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "chakras"
end

class Company < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "companies"
end

class Crystal < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "crystals"
end

class CrystalsMagical < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "crystals-magical"
end

class Cycle < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "cycles"
end

class CyclesRhythm < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "cycles-rhythm"
end

class Deity < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "deities"
end

class DeitiesFamily < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "deities-family"
end

class Element < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "elements"
end

class Entity < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "entities"
end

class Institution < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "institutions"
end

class MagicEffect < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "magic-effects"
end

class MagicSchools < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "magic-schools"
end

class Materia < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "materia"
end

class MateriaProducts < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "materia-products"
end

class Number < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "numbers"
end

class Plant < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "plants"
end

class PlantMagical < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "plants-magical"

	#belongs_to :plant, class: "Plant", column: "id_plant"
end

class Person < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "people"

	#belongs_to :book, class:"Book", column: "books"
end

class Religion < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "religions"
end

class ReligionsConnections < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "religions-connections"
end

class Ritual < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "rituals"
end

class SourcebankImagePlant < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "sourcebank_images-plants"
end

class Symbols < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "symbols"
end

class SymbolsAssets < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "symbols-assets"
end

class SymbolsLinks < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "symbols-links"
end

class Tarot < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "tarot"
end

class TarotDeck < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "tarot_decks"
end

class TarotDeckCard < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "tarot_deck_cards"
end

class Tradition < Airrecord::Table
	self.base_key = ENV['AT_BASE_CUDB_ID']
	self.table_name = "traditions"
end


File.open("_data/books.json", "w") do |f|
	books = Book.all
	f.write(books.to_json)
end

File.open("_data/celestials.json", "w") do |f|
	data = Celestial.all
	f.write(data.to_json)
end

File.open("_data/chakras.json", "w") do |f|
	data = Chakra.all
	f.write(data.to_json)
end

File.open("_data/companies.json", "w") do |f|
	data = Company.all
	f.write(data.to_json)
end

File.open("_data/crystals.json", "w") do |f|
	data = Crystal.all
	f.write(data.to_json)
end

File.open("_data/crystals_magicals.json", "w") do |f|
	data = CrystalsMagical.all
	f.write(data.to_json)
end

File.open("_data/cycles.json", "w") do |f|
	data = Cycle.all
	f.write(data.to_json)
end

File.open("_data/cycles_rhythms.json", "w") do |f|
	data = CyclesRhythm.all
	f.write(data.to_json)
end

File.open("_data/deities.json", "w") do |f|
	data = Deity.all
	f.write(data.to_json)
end

File.open("_data/deities_family.json", "w") do |f|
	data = DeitiesFamily.all
	f.write(data.to_json)
end

File.open("_data/elements.json", "w") do |f|
	data = Element.all
	f.write(data.to_json)
end

File.open("_data/entities.json", "w") do |f|
	data = Entity.all
	f.write(data.to_json)
end

File.open("_data/institutions.json", "w") do |f|
	data = Institution.all
	f.write(data.to_json)
end

File.open("_data/magic_effects.json", "w") do |f|
	data = MagicEffect.all
	f.write(data.to_json)
end

File.open("_data/magic_schools.json", "w") do |f|
	data = MagicSchools.all
	f.write(data.to_json)
end

File.open("_data/materia.json", "w") do |f|
	data = Materia.all
	f.write(data.to_json)
end

File.open("_data/materia_products.json", "w") do |f|
	data = MateriaProducts.all
	f.write(data.to_json)
end

File.open("_data/numbers.json", "w") do |f|
	data = Number.all
	f.write(data.to_json)
end

File.open("_data/people.json", "w") do |f|
	data = Person.all
	f.write(data.to_json)
end

File.open("_data/plants.json", "w") do |f|
	data = Plant.all
	f.write(data.to_json)
end

File.open("_data/plant_magicals.json", "w") do |f|
	data = PlantMagical.all

	f.write(data.to_json)
end

File.open("_data/religions.json", "w") do |f|
	data = Religion.all
	f.write(data.to_json)
end

File.open("_data/religions_connections.json", "w") do |f|
	data = ReligionsConnections.all
	f.write(data.to_json)
end

File.open("_data/rituals.json", "w") do |f|
	data = Ritual.all
	f.write(data.to_json)
end

File.open("_data/sourcebank_image_plants.json", "w") do |f|
	data = SourcebankImagePlant.all
	f.write(data.to_json)
end

File.open("_data/symbols.json", "w") do |f|
	data = Symbols.all
	f.write(data.to_json)
end

File.open("_data/symbols_assets.json", "w") do |f|
	data = SymbolsAssets.all
	f.write(data.to_json)
end

File.open("_data/symbols_links.json", "w") do |f|
	data = SymbolsLinks.all
	f.write(data.to_json)
end

File.open("_data/tarots.json", "w") do |f|
	data = Tarot.all
	f.write(data.to_json)
end

File.open("_data/tarot_decks.json", "w") do |f|
	data = TarotDeck.all
	f.write(data.to_json)
end

File.open("_data/tarot_deck_cards.json", "w") do |f|
	data = TarotDeckCard.all
	f.write(data.to_json)
end


File.open("_data/traditions.json", "w") do |f|
	data = Tradition.all
	f.write(data.to_json)
end

##Create search json

$db_books = JSON.parse(File.read(File.expand_path("../_data/books.json",__FILE__)))
$db_celestials = JSON.parse(File.read(File.expand_path("../_data/celestials.json",__FILE__)))
$db_chakras = JSON.parse(File.read(File.expand_path("../_data/chakras.json",__FILE__)))
$db_companies = JSON.parse(File.read(File.expand_path("../_data/companies.json",__FILE__)))  
$db_crystals = JSON.parse(File.read(File.expand_path("../_data/crystals.json",__FILE__)))
$db_crystals_magicals = JSON.parse(File.read(File.expand_path("../_data/crystals_magicals.json",__FILE__)))
$db_cycles = JSON.parse(File.read(File.expand_path("../_data/cycles.json",__FILE__)))
$db_cycles_rhythms = JSON.parse(File.read(File.expand_path("../_data/cycles_rhythms.json",__FILE__)))
$db_deities = JSON.parse(File.read(File.expand_path("../_data/deities.json",__FILE__)))  
$db_elements = JSON.parse(File.read(File.expand_path("../_data/elements.json",__FILE__)))
$db_entities = JSON.parse(File.read(File.expand_path("../_data/entities.json",__FILE__)))
$db_institutions = JSON.parse(File.read(File.expand_path("../_data/institutions.json",__FILE__)))   
$db_magic_effects = JSON.parse(File.read(File.expand_path("../_data/magic_effects.json",__FILE__)))
$db_magic_schools = JSON.parse(File.read(File.expand_path("../_data/magic_schools.json",__FILE__)))
$db_materia = JSON.parse(File.read(File.expand_path("../_data/materia.json",__FILE__)))
$db_materia_products = JSON.parse(File.read(File.expand_path("../_data/materia_products.json",__FILE__)))
$db_numbers = JSON.parse(File.read(File.expand_path("../_data/numbers.json",__FILE__)))
$db_people = JSON.parse(File.read(File.expand_path("../_data/people.json",__FILE__))) 
$db_plant_magicals = JSON.parse(File.read(File.expand_path("../_data/plant_magicals.json",__FILE__)))
$db_plants = JSON.parse(File.read(File.expand_path("../_data/plants.json",__FILE__)))
$db_religions = JSON.parse(File.read(File.expand_path("../_data/religions.json",__FILE__)))
$db_religions_connections = JSON.parse(File.read(File.expand_path("../_data/religions_connections.json",__FILE__))) 
$db_rituals = JSON.parse(File.read(File.expand_path("../_data/rituals.json",__FILE__))) 
$db_sourcebank_image_plants = JSON.parse(File.read(File.expand_path("../_data/sourcebank_image_plants.json",__FILE__)))
$db_symbols = JSON.parse(File.read(File.expand_path("../_data/symbols.json",__FILE__)))
$db_symbols_assets = JSON.parse(File.read(File.expand_path("../_data/symbols_assets.json",__FILE__)))
$db_symbols_links = JSON.parse(File.read(File.expand_path("../_data/symbols_links.json",__FILE__)))
$db_tarot_deck_cards = JSON.parse(File.read(File.expand_path("../_data/tarot_deck_cards.json",__FILE__)))  
$db_tarot_decks = JSON.parse(File.read(File.expand_path("../_data/tarot_decks.json",__FILE__))) 
$db_tarots = JSON.parse(File.read(File.expand_path("../_data/tarots.json",__FILE__))) 
$db_traditions = JSON.parse(File.read(File.expand_path("../_data/traditions.json",__FILE__))) 

search_base = []

$db_books.each do |p|
	search_base.push(
	{
		a: "A",
		b: p["fields"]["title"],
		c: p['fields']['slug']+"/",
		d: p['fields']['author_rollup']
	})
end

$db_celestials.each do |p|
	search_base.push(
	{
		a: "B",
		b: p["fields"]["name"],
		c: p['fields']['slug']+"/"
	})
end

$db_chakras.each do |p|
	search_base.push(
	{
		a: "C",
		b: p["fields"]["name"],
		c: p['fields']['slug']+"/",
		d: p["fields"]["aka"]
	})
end

$db_crystals.each do |p|
	search_base.push(
	{
		a: "D",
		b: p["fields"]["name_common"],
		c: p['fields']['slug']+"/",
		d: p["fields"]["names_aka"]
	})
end

$db_deities.each do |p|
	search_base.push(
	{
		a: "E",
		b: p["fields"]["name_common"],
		c: p['fields']['slug']+"/",
		d: p["fields"]["names_aka"]
	})
end

$db_elements.each do |p|
	search_base.push(
	{
		a: "F",
		b: p["fields"]["name"],
		c: p['fields']['slug']+"/"
	})
end

$db_magic_effects.each do |p|
	search_base.push(
	{
		a: "G",
		b: p["fields"]["name"],
		c: p['fields']['slug']+"/"
	})
end

$db_plants.each do |p|
	search_base.push(
	{
		a: "H",
		b: p["fields"]["name_common"],
		c: p['fields']['slug']+"/",
		d: "#{p['fields']['name_scientific']} | #{p['fields']['names_aka']}"
	})
end

$db_people.each do |p|
	search_base.push(
	{
		a: "I",
		b: p["fields"]["name_full_long"],
		c: p['fields']['slug']+"/"
	})
end

$db_religions.each do |p|
	search_base.push(
	{
		a: "J",
		b: p["fields"]["name"],
		c: p["fields"]["slug"]+"/"
	})
end

$db_entities.each do |p|
	search_base.push(
	{
		a: "K",
		b: p["fields"]["name_plural"],
		c: p["fields"]["slug"]+"/",
		d: p["fields"]["name_singular"]
	})
end


File.open("src/js/data/search.json", "w") do |f|
	tmp = "const cosmos_search_data = #{search_base.to_json}"
	f.write(tmp)
end