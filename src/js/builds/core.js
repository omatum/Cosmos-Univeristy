document.addEventListener('DOMContentLoaded',function(){site_search()});

document.addEventListener('keyup',(ev)=>
{
	if (ev.key=='/')
	{
		document.querySelector('#input_cosmos-search').focus();
	}
})

function site_search()
{
	//TODO: Add capture for down / up keys to select an item and ENTER to go to that page
	var $search = document.querySelector('#input_cosmos-search')

	$search.addEventListener('search',(ev)=>
	{
		if(ev.target.value.length==0)
		{
			return document.querySelector('#input_cosmos-search-results').textContent=""
		}
	})

	//Attach keyup bindings to run primary search function
	$search.addEventListener('keyup',(ev)=>
	{
		var text = ev.target.value;

		text = text.trim().toLowerCase();

		if(text.length < 2)
		{
			return document.querySelector('#input_cosmos-search-results').textContent=""
		}

		var search_results = cosmos_search_data.filter(function(sr)
		{
			var r_txt = sr.b
			if("d" in sr){r_txt+=` ${sr.d}`}
			r_txt = r_txt.toLowerCase()
			return r_txt.indexOf(text) > -1
		})

		if(search_results.length == 0)
		{
			document.querySelector('#input_cosmos-search-results').textContent=""
			return
		}

		//Lookup Arrays
		var lookup = 
		{
			A: {name:"Book",url:"/databank/books/"},
			B: {name:"Celestial",url:"/databank/celestials/"},
			C: {name:"Chakra",url:"/databank/chakras/"},
			D: {name:"Crystal",url:"/databank/crystals/"},
			E: {name:"Deity",url:"/databank/deities/"},
			F: {name:"Elements",url:"/databank/elements/"},
			G: {name:"Magical Effect",url:"/databank/magic-effects/"},
			H: {name:"Plant",url:"/databank/plants/"},
			I: {name:"Person",url:"/databank/people/"},
			J: {name:"Religion",url:"/databank/religions/"},
			K: {name:"Entity", url:"/databank/entities/"}
		}

		var search_result_html = ""

		search_results.forEach(function(item)
		{
			var item_data = 
			{
				databank: `${lookup[item.a].name}`,
				url: `${lookup[item.a].url}${item.c}`,
				title: item.b,
				addtl:''
			}

			if("d" in item)
			{
				console.log(item)
				if(item.d!=null)
				{
					item_data.addtl = `<div class="search-addtl">${item.d}</div>`
				}
			}

			search_result_html += `<a href="${item_data.url}" class="item_search-result">
								<div class="databank">${item_data.databank}</div>
								<div class="result-wrap">
									<div class="search-title">${item_data.title}</div>
									${item_data.addtl}
								</div>
							</a>`;
		})

		document.querySelector('#input_cosmos-search-results').innerHTML = search_result_html
	})
}