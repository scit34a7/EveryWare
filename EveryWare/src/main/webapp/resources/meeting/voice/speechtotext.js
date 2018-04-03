$(function() {

    annyang.addCallback("start", function(){

        console.log("start");

    });

    annyang.addCallback("error", function() {

        //console.log("error");

    });

    annyang.addCallback("end", function(){

        //console.log("end");

    });

    annyang.addCallback("soundstart", function(){

        //console.log("soundstart");

    });

    annyang.addCallback("result", function(data){
    	var tot = document.getElementById('change');
        console.log("result");
        
        console.log(data[0]);
        tot.value += data[0];
    });

    annyang.addCallback("resultMatch", function(){

        //console.log("resultMatch");

    });

    annyang.addCallback("resultNoMatch", function(){

        //console.log("resultNoMatch");

        restart();

    });

    annyang.addCallback("errorNetwork", function(){

        //console.log("errorNetwork");

    });

    annyang.addCallback("errorPermissionBlocked", function(){

        //console.log("errorPermissionBlocked");

    });

    annyang.addCallback("errorPermissionDenied", function(){

        //console.log("errorPermissionDenied");

    });

    

    annyang.start({autoRestart: true , continuous: true});

});

 

function restart() {

    annyang.abort();

    annyang.start({autoRestart: true , continuous: true});

}