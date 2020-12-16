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
                $("#kep").text(data.kep);
                $("#nev").text(data.nev);
                $("#jatekosszam").text(data.jatekosszam);
                $("#jatekido").text(data.jatekido);
				$("#leiras").text(data.leiras);
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
   
   
});