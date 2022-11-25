
$db_books = JSON.parse(File.read(File.expand_path("../../_data/books.json",__FILE__)))
$db_celestials = JSON.parse(File.read(File.expand_path("../../_data/celestials.json",__FILE__)))
$db_chakras = JSON.parse(File.read(File.expand_path("../../_data/chakras.json",__FILE__)))
$db_companies = JSON.parse(File.read(File.expand_path("../../_data/companies.json",__FILE__)))  
$db_crystals = JSON.parse(File.read(File.expand_path("../../_data/crystals.json",__FILE__)))
$db_crystals_magicals = JSON.parse(File.read(File.expand_path("../../_data/crystals_magicals.json",__FILE__)))
$db_cycles = JSON.parse(File.read(File.expand_path("../../_data/cycles.json",__FILE__)))
$db_cycles_rhythms = JSON.parse(File.read(File.expand_path("../../_data/cycles_rhythms.json",__FILE__)))
$db_deities = JSON.parse(File.read(File.expand_path("../../_data/deities.json",__FILE__)))
$db_deities_family = JSON.parse(File.read(File.expand_path("../../_data/deities_family.json",__FILE__)))
$db_elements = JSON.parse(File.read(File.expand_path("../../_data/elements.json",__FILE__)))
$db_institutions = JSON.parse(File.read(File.expand_path("../../_data/institutions.json",__FILE__)))   
$db_magic_effects = JSON.parse(File.read(File.expand_path("../../_data/magic_effects.json",__FILE__)))
$db_magic_schools = JSON.parse(File.read(File.expand_path("../../_data/magic_schools.json",__FILE__)))
$db_materia = JSON.parse(File.read(File.expand_path("../../_data/materia.json",__FILE__)))
$db_materia_products = JSON.parse(File.read(File.expand_path("../../_data/materia_products.json",__FILE__)))
$db_numbers = JSON.parse(File.read(File.expand_path("../../_data/numbers.json",__FILE__)))
$db_people = JSON.parse(File.read(File.expand_path("../../_data/people.json",__FILE__))) 
$db_plant_magicals = JSON.parse(File.read(File.expand_path("../../_data/plant_magicals.json",__FILE__)))
$db_plants = JSON.parse(File.read(File.expand_path("../../_data/plants.json",__FILE__)))
$db_religions = JSON.parse(File.read(File.expand_path("../../_data/religions.json",__FILE__))) 
$db_rituals = JSON.parse(File.read(File.expand_path("../../_data/rituals.json",__FILE__))) 
$db_sourcebank_image_plants = JSON.parse(File.read(File.expand_path("../../_data/sourcebank_image_plants.json",__FILE__)))
$db_tarot_deck_cards = JSON.parse(File.read(File.expand_path("../../_data/tarot_deck_cards.json",__FILE__)))  
$db_tarot_decks = JSON.parse(File.read(File.expand_path("../../_data/tarot_decks.json",__FILE__))) 
$db_tarots = JSON.parse(File.read(File.expand_path("../../_data/tarots.json",__FILE__))) 
$db_traditions = JSON.parse(File.read(File.expand_path("../../_data/traditions.json",__FILE__))) 

$site_json = []

$site_json << $db_books
$site_json << $db_celestials
$site_json << $db_chakras
$site_json << $db_companies
$site_json << $db_crystals
$site_json << $db_crystals_magicals
$site_json << $db_cycles
$site_json << $db_cycles_rhythms
$site_json << $db_deities
$site_json << $db_deities_family
$site_json << $db_elements
$site_json << $db_institutions
$site_json << $db_magic_effects
$site_json << $db_magic_schools
$site_json << $db_materia
$site_json << $db_materia_products
$site_json << $db_numbers
$site_json << $db_people
$site_json << $db_plant_magicals
$site_json << $db_plants
$site_json << $db_religions
$site_json << $db_rituals
$site_json << $db_sourcebank_image_plants
$site_json << $db_tarot_deck_cards
$site_json << $db_tarot_decks
$site_json << $db_tarots
$site_json << $db_traditions

$total_sources = $db_books.count
$total_datarecords = 0
$total_datapoints = 0

$site_json.each do |h|
  h.each do |i|
    $total_datarecords += 1
    $total_datapoints += i["fields"].count
    i.each do |b|
      if b.kind_of?(Array)
        $total_datapoints += b.count
      end
    end
  end
end


puts "Sources: #{$total_sources} || Records: #{$total_datarecords} || Datapoints: #{$total_datapoints}"

$nav_databanks = {
  live:
  {
    databanks:
    [
      {
        title: "Books",
        for: "books",
        dir_url: "/databank/books/",
        num_records: $db_books.count 
      },
      {
        title: "Celestials",
        for: "celestials",
        dir_url: "/databank/celestials/",
        num_records: $db_celestials.count
      },
      {
        title: "Chakras",
        for: "chakras",
        dir_url: "/databank/chakras/",
        num_records: $db_chakras.count
      },
      {
        title: "Crystals",
        for: "crystals",
        dir_url: "/databank/crystals/",
        num_records: $db_crystals.count
      },
      {
        title: "Deities",
        for: "deities",
        dir_url: "/databank/deities/",
        num_records: $db_deities.count
      },
      {
        title: "Elements",
        for: "elements",
        dir_url: "/databank/elements/",
        num_records: $db_elements.count
      },
      {
        title: "Magical Effects",
        for: "magic_effects",
        dir_url: "/databank/magic-effects/",
        num_records: $db_magic_effects.count
      },
      {
        title: "Plants",
        for: "plants",
        dir_url: "/databank/plants/",
        num_records: $db_plants.count
      }
    ],
    sections:
    [
      {
        title: "Homepage",
        dir_url:"/",
        for: "homepage"
      }
    ]
  },
  upcoming:  
  [
    {}
  ]
}