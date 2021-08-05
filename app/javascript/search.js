window.addEventListener('load', function(){
    const pullDownButton = document.getElementById("search")
    const pullDownParents = document.getElementById("pull-down")
    pullDownButton.addEventListener('click', function(){
        pullDownParents.setAttribute("style", "display:flex;")
    })
})