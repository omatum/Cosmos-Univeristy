
$db_books = JSON.parse(File.read(File.expand_path("../../_data/books.json",__FILE__)))
$db_celestials = JSON.parse(File.read(File.expand_path("../../_data/celestials.json",__FILE__)))
$db_chakras = JSON.parse(File.read(File.expand_path("../../_data/chakras.json",__FILE__)))
$db_companies = JSON.parse(File.read(File.expand_path("../../_data/companies.json",__FILE__)))  
$db_crystals = JSON.parse(File.read(File.expand_path("../../_data/crystals.json",__FILE__)))
$db_crystals_magicals = JSON.parse(File.read(File.expand_path("../../_data/crystals_magicals.json",__FILE__)))
$db_cycles = JSON.parse(File.read(File.expand_path("../../_data/cycles.json",__FILE__)))
$db_cycles_rhythms = JSON.parse(File.read(File.expand_path("../../_data/cycles_rhythms.json",__FILE__)))
$db_deities = JSON.parse(File.read(File.expand_path("../../_data/deities.json",__FILE__)))  
$db_elements = JSON.parse(File.read(File.expand_path("../../_data/elements.json",__FILE__)))
$db_institutions = JSON.parse(File.read(File.expand_path("../../_data/institutions.json",__FILE__)))   
$db_magic_effects = JSON.parse(File.read(File.expand_path("../../_data/magic_effects.json",__FILE__)))
$db_magic_schools = JSON.parse(File.read(File.expand_path("../../_data/magic_schools.json",__FILE__)))
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



$source_count = $db_books.count

$total_datapoints = $db_books.count + $db_celestials.count + $db_chakras.count + $db_companies.count + $db_crystals.count + $db_crystals_magicals.count + $db_cycles.count + $db_cycles_rhythms.count + $db_deities.count + $db_elements.count + $db_institutions.count + $db_magic_effects.count + $db_magic_schools.count + $db_numbers.count + $db_people.count + $db_plant_magicals.count + $db_plants.count + $db_religions.count + $db_rituals.count + $db_rituals.count + $db_sourcebank_image_plants.count + $db_tarot_deck_cards.count + $db_tarot_decks.count + $db_tarots.count + $db_traditions.count