document.querySelector('footer').insertAdjacentHTML('afterend','<canvas id="cosmosFavico" width="32px" height="32px" style="display:none"></canvas>')


var canvas = document.getElementById("cosmosFavico")
         ctx = canvas.getContext('2d')
var fco = document.querySelector('link[rel*="icon"]')

var bc = 
    [
      "#FF66D0",
      "#9C8CEA",
      "#5ED2E5",
      "#98DB16",
      "#FFDB45",
      "#FF9D33",
      "#F94872"
    ]

setInterval(drawCosmosFavico,500)

function drawCosmosFavico()
{
  ctx.beginPath()
  ctx.fillStyle=bc[0]
  ctx.rect(0,0,32,32)
  ctx.fill()
  
  ctx.beginPath()
  ctx.fillStyle=bc[1]
  ctx.rect(2,2,28,28)
  ctx.fill()
  
  ctx.beginPath()
  ctx.fillStyle=bc[2]
  ctx.rect(4,4,24,24)
  ctx.fill()
  
  ctx.beginPath()
  ctx.fillStyle=bc[3]
  ctx.rect(6,6,20,20)
  ctx.fill()
  
  ctx.beginPath()
  ctx.fillStyle=bc[4]
  ctx.rect(8,8,16,16)
  ctx.fill()
  
  ctx.beginPath()
  ctx.fillStyle=bc[5]
  ctx.rect(10,10,12,12)
  ctx.fill()
  
  ctx.beginPath()
  ctx.fillStyle=bc[6]
  ctx.rect(12,12,8,8)
  ctx.fill()
  
  //Shift
  var shifting = bc.shift()
  bc.push(shifting)

  fco.href = canvas.toDataURL('image/png')
}




var nav_toggle = document.getElementById('nav-openclose')

nav_toggle.addEventListener("click",function()
{
	var nav_tar = document.querySelector('nav')

	nav_tar.classList.toggle('closed')
})
