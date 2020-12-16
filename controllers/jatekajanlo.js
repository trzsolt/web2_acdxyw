function korosztaly() {
    $.post(
        "models/jatekajanlo_model.php",
        {"op" : "korosztaly"},
        function(data) {
            //$("#korselect").html('<option value="0">Válasszon ...</option>');
            $("<option>").val("0").text("Válasszon ...").appendTo("#korselect");
            var lista = data.lista;
            for(i=0; i<lista.length; i++)
                //$("#korselect").append('<option value="'+lista[i].id+'">'+lista[i].csoport+'</option>');
                $("<option>").val(lista[i].id).text(lista[i].csoport).appendTo("#korselect");
        },
        "json"                                                    
    );
};

function jatekosszam() {
    $("#jatekosselect").html("");
    $("#jatekselect").html("");
    $(".adat").html("");
    var orszagid = $("#korselect").val();
    if (orszagid != 0) {
        $.post(
            "models/jatekajanlo_model.php",
            {"op" : "jatekosszam", "id" : orszagid},
            function(data) {
                $("#jatekosselect").html('<option value="0">Válasszon ...</option>');
                var lista = data.lista;
                for(i=0; i<lista.length; i++)
                    $("#jatekosselect").append('<option value="'+lista[i].id+'">'+lista[i].jatekos+'</option>');
            },
            "json"                                                    
        );
    }
}

function kategoriak() {
    $("#jatekselect").html("");
    $(".adat").html("");
    var varosid = $("#jatekosselect").val();
    if (varosid != 0) {
        $.post(
            "models/jatekajanlo_model.php",
            {"op" : "jatekok", "id" : varosid},
            function(data) {
                $("#jatekselect").html('<option value="0">Válasszon ...</option>');
                var lista = data.lista;
                for(i=0; i<lista.length; i++)
                    $("#jatekselect").append('<option value="'+lista[i].id+'">'+lista[i].nev+'</option>');
            },
            "json"                                                    
        );
    }
}

function jatek() {
    $(".adat").html("");
    var jatekid = $("#jatekselect").val();
    if (jatekid != 0) {
        $.post(
            "models/jatekajanlo_model.php",
            {"op" : "info", "id" : jatekid},
            function(data) {
                $("#kep").html("<img src=images/" + data.kep + " width=85%>");
                $("#nev").text(data.nev);
                $("#jatekosszam").html("<br><strong>Játékosszám:</strong> " + data.jatekosszam);
                $("#jatekido").html("<br><strong>Játékidő:</strong> " + data.jatekido);
				$("#leiras").html("<br><strong>Leírás:</strong> " + data.leiras);
            },
            "json"                                                    
        );
    }
}

$(document).ready(function() {
   korosztaly();
   
   $("#korselect").change(jatekosszam);
   $("#jatekosselect").change(kategoriak);
   $("#jatekselect").change(jatek);
   
  // $(".adat").hover(function() {
  //      $(this).css({"color" : "white", "background-color" : "black"});
  //  }, function() {
  //     $(this).css({"color" : "black", "background-color" : "white"});
   // });
});