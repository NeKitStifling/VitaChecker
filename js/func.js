

$(document).ready(function(){
    $.post("index.php", {"hiddenmode": 1, "request" : "getpagelist"},function(data)
    {
        dd = jQuery.parseJSON(data);
        for(i = 0; i<dd.length; i++)
        {
            $(".navbar").append($("<li class = 'nav-item'><a href='#' id = 'item"+dd[i][0]+"' class='nav-link active navStr"+dd[i][1]+"' aria-current='page' rel = \""+dd[i][0]+"\">"+dd[i][1]+"</a></li>"))
        };
        homeCont();
        globalTableCont();

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
    $dd = jQuery.parseJSON(ddata);
    for(i = 0; i<dd.length; i++)
    {
        $(".content").append($("<div class='typeOption"+dd[i][0]+" typeOption' id='typeOption"+dd[i][0]+"'></div><hr>"));
        $(".typeOption"+dd[i][0]).append($("<a href='#' class='typeChoose' id='"+dd[i][0]+"'><div class='typeChooseContainer'><img src='"+dd[i][1]+"' class='optionIMG'><h1 class='chooseLabel'>"+dd[i][2]+"</h1></div></a>"));
        $(".typeOption"+dd[i][0]).append($("<div class='chosenType chosenType"+dd[i][0]+"' id='chosenType"+dd[i][0]+"'></div>"));
        vitaDraw();
    }
    globalTable();
    selection();
}

function selection(){
    $('.typeChoose').click(function(){
        var id = $(this).attr('id');
        const targetDiv = document.getElementById("chosenType"+id);
        if (targetDiv.style.display !== "block") {
            targetDiv.style.display = "block";
        } else {
            targetDiv.style.display = "none";
        }
    });
}


function vitaDraw(){

    $(".chosenType"+dd[i][0]).append($("<hr class='subline'><input type='number' class='inputNumberHint' id='inputGrams"+dd[i][0]+"' min='0' value='' title='Insert number of grams consumed and press Enter'><label> : Amount of grams consumed</label><br><button class='inputGramsBtn' id='inputGramsBtn'"+dd[i][0]+">Input</button><label style='font-style: italic'>Press the button to send data to a global table</label><hr><table class='chosenTable"+dd[i][0]+"'><thead><tr><td>Name   </td><td>Value in milligrams   </td><td>Normal daily percentage consumption   </td></tr></thead><tbody class='tableBody"+dd[i][0]+"'></tbody></table>"));
    $("#inputGrams"+dd[i][0]).change(function(){
        dd = $dd;
        // alert($(this).val());
        memid = $(this).attr("id");
        target = (memid.charAt(memid.length - 1));
        grValue = $(this).val() / 100;
        $(".tableBody"+target).html('');
        for(j = 0; j<optionNames.length; j++)
        {
            $(".tableBody"+target).append($("<tr><td>"+optionNames[j]+"</td><td>"+(dd[target-1][j+3]*grValue).toFixed(1)+"</td><td>"+toPercent((dd[target-1][j+3]*grValue)/dailyNorm[j])+"</td></tr>"));
            $tt[j] = dd[target-1][j+3]*grValue;
        };
    });
}

function globalTable(){
    $(".inputGramsBtn").click(function(){
        // alert($tt);
        $(".globalTableBody").html('');
        for(j = 0; j<optionNames.length; j++)
        {
            if($globRes.length < 43){
                temp = 0;
            } else {
                temp = $globRes[j];
            }
            $globRes[j] = $tt[j] + temp;
            $(".globalTableBody").append($("<tr><td>"+optionNames[j]+"</td><td>"+($globRes[j]).toFixed(1)+"</td><td>"+toPercent($globRes[j]/dailyNorm[j])+"</td></tr>"));
        }
        $(".globalTableBody").append('<button class="globalTableClear">Clear</button>')
        $(".globalTableClear").click(function(){
            for(j = 0; j<optionNames.length; j++)
            {
                $globRes[j] = 0;
            }
            $(".globalTableBody").html('');
            // alert($globRes);
        });
    });
}

const $tt = [];
const $globRes = [];

const optionNames = ['Fat','Protein','Carbohydrates','Water','A1','bCarotene','aCarotene','B1','B2','B3','B4','B5','B6','B7','B8',
                        'B9','B10','B11','B12','B13','B15','C','D1','D2','D3','E','K1','K2','N','P','Zn','Fe','Ca','Mg','Cu','Mn','Cr','Se','I','Mo','K','Na','F'];

const dailyNorm = [84000,75000,310000,2000000,0.9,5,5,1.2,1.3,16,500,5,1.3,0.03,1000,
0.4,100,100,0.0024,65,2,90,0.015,0.0075,0.01625,14.6,0.12,0.2,400,700,11,10,1000,400,0.9,2.3,0.05,0.055,0.2,0.1,4700,1300,4];

function toPercent(point){
    var percent = Number(point*100).toFixed(1);
    percent+="%";
    return percent;
}

function globalTableCont(){
    $(".tableBox").append($("<table class='globalTable'><thead><tr><td>Name   </td><td>Value in milligrams   </td><td>Normal daily percentage consumption   </td></tr></thead><tbody class='globalTableBody'></tbody></table>"))
}