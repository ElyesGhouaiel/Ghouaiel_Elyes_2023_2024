let img = document.querySelector('#Nemo');
document.onkeydown = checkKey;


let X = 20;
let Y = 20;

function checkKey(e) {

    if (e.keyCode == '38') {
        //up arrow
        console.log(img.offsetTop)
        img.style.top = (img.offsetTop - 10) + "px";
        img.style.transform="rotate(-90deg)"
    }
    else if (e.keyCode == '40') {
        //down arrow
        img.style.top = (img.offsetTop + 10) + "px";
        img.style.transform="rotate(90deg)"
    }
    else if (e.keyCode == '37') {
       //left arrow
       img.style.left = (img.offsetLeft - 10) + "px";
       img.style.transform="scaleX(-1)"
    }
    else if (e.keyCode == '39') {
       //right arrow
       img.style.left = (img.offsetLeft + 10) + "px";
       img.style.transform="scaleX(1)"
    }

}