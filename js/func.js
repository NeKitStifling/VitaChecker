

$(document).ready(function(){
    $.post("index.php", {"hiddenmode": 1, "request" : "getpagelist"},function(data)
    {
        dd = jQuery.parseJSON(data);
        for(i = 0; i<dd.length; i++)
        {
            $(".navbar").append($("<li class = 'nav-item'><a href='#' id = 'item"+dd[i][0]+"' class='nav-link active navStr"+dd[i][1]+"' aria-current='page' rel = \""+dd[i][0]+"\">"+dd[i][1]+"</a></li>"))
        };
        homeCont();

        $('.navStrHome').click(function(){
            cont(dd[0][0]);
            homeCont();


        });

        $('.navStrAbout').click(function(){
            cont(dd[0][0]);
            aboutCont();
        });
    });
    selection();
})

function cont(vl){
    $.post("index.php", {"hiddenmode": 1, "request" : "getval", "val":vl },function(data){
            console.log(data);
            $(".content").attr("rel",vl).html(data);
    });
}

function conts(vl){
    $.post("index.php", {"hiddenmode": 1, "request" : "getval", "val":vl },function(ddata){
            console.log(ddata);
            $(".content").attr("rel",vl).html(ddata);
    });
}

function homeCont(){
    $.post("index.php",{"hiddenmode": 1,"request" : "gethomecontent"},function(data){
        dd = jQuery.parseJSON(data);
        for(i = 0; i<dd.length; i++)
        {
            $(".content").append($("<a href='#' class='active cellLink cell"+dd[i][1]+"' id='cell"+dd[i][1]+"'><div class='mainCell' id='"+dd[i][1]+"'><img class='cellImg' src='"+dd[i][2]+"'><br>"+dd[i][1]+"</div></a>"))
        };
        cells();
    })
}

function aboutCont(){
    $.post("index.php",{"hiddenmode": 1,"request" : "getaboutcontent"},function(data){
        dd = jQuery.parseJSON(data);
        for(i = 0; i<dd.length; i++)
        {
            $(".content").append($("<"+dd[i][1]+">"+dd[i][2]+"</"+dd[i][1]+">"))
        };
    });
};

function cells(){
    $('.cellMeat').click(function(){
        postCellType("meat");
    });
    $('.cellFish').click(function(){
        postCellType("fish");
    });
    $('.cellVegetables').click(function(){
        postCellType("vegetables");
    });
    $('.cellFruits').click(function(){
        postCellType("fruits");
    });
    $('.cellGrains').click(function(){
        postCellType("grains");
    });
    $('.cellBeans').click(function(){
        postCellType("beans");
    });
    $('.cellNuts').click(function(){
        postCellType("nuts");
    });
    $('.cellPoultry').click(function(){
        postCellType("poultry");
    });
    $('.cellSeafood').click(function(){
        postCellType("seafood");
    });
    $('.cellDairy').click(function(){
        postCellType("dairy");
    });
    $('.cellBeverages').click(function(){
        postCellType("beverages");
    });
    $('.cellAlcohol').click(function(){
        postCellType("alcohol");
    });
    $('.cellComplex').click(function(){
        postCellType("complex");
    });
    $('.cellSweets').click(function(){
        postCellType("sweets");
    });
    $('.cellBakery').click(function(){
        postCellType("bakery");
    });
}

function postCellType($type){
    if (dd !== "undefined"){
        cont(dd[0][0]);
    }
    $.post("index.php",{"hiddenmode" : 1, "request" : "getcellcontent", "celltype" : $type},function(data){
        cellsContent(data);
    })
}

function cellsContent(ddata){
    dd = jQuery.parseJSON(ddata);
    for(i = 0; i<dd.length; i++)
    {
        $(".content").append($("<div class='typeOption"+dd[i][0]+"' id='typeOption"+dd[i][0]+"'></div><hr>"));
        $(".typeOption"+dd[i][0]).append($("<br><input type='radio' id='radio"+dd[i][0]+"'><label>"
                                +dd[i][1]
                                +"</label><select id='selectAmount'><option>Choose amount in...</option><option value='1'>Grams</option><option value='2'>Portions</option><option value='3'>Numbers</option></select>"+
                                +"<input type='number' id='grnum' value='1'><input type='number' id='portnum' value='2'><input type='number' id='numnum' value='3'>"
                                +"<select id='selectCondition'></select>"));
    }
}

