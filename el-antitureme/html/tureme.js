$(function(){
    window.onload = (e) => {
        window.addEventListener("message", (event) => {
            var item = event.data;
            if(item !== undefined && item.type === "ui") {
                if (item.display) {
                    $('#turemebukucu31').show();
                    $('#driog')[0].play(); 
                } else{
                    $('#turemebukucu31').hide();
                    $('#driog')[0].pause();
                }
            }
        })
    }
})