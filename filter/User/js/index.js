function search(){
    const search_txt=document.getElementById("search-txt").value.toUpperCase();
    const product=document.querySelectorAll(".product");
    const product_name=document.getElementsByTagName("h2");
    for(var i=0;i<product_name.length;i++){
        let match=product[i].getElementsByTagName('h2')[0];
        if(match){
            let text_value=match.textContent || match.innerHTML;
            if(text_value.toUpperCase().indexOf(search_txt)>-1){
                product[i].style.display="";
            }else{
                product[i].style.display="none";
            }
        }
    }
}