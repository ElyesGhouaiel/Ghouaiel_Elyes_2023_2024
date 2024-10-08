let mots = document.getElementsByClassName("name")
//console.log(mots[4].innerText)
let motchoisi = document.querySelector("#searchInput")

motchoisi.addEventListener('keyup',(event)=>{
    for(let i=0; i < mots.length;i++){
     if(mots[i].innerText.includes(event.target.value)){
        console.log(mots[i].target.value)
     }else{
        console.log("nada")
     }
}
})