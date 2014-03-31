	$(document).ready(function(){
    $(".membership_type").change(function(){
      $("#exampleInputEmail4").removeAttr("disabled");
      $("#exampleInputEmail4").removeAttr("title");
      if($(this).val()=="1"){
        $("#exampleInputEmail5").removeAttr("disabled");
        $("#exampleInputEmail5").removeAttr("title");
      } else {
        $("#exampleInputEmail5").attr({"disabled":true});
        $("#exampleInputEmail5").val(countDate("-", $("#exampleInputEmail4").val(), $("input:radio[name='member[membership_type]']:checked").val()));
      }
      // $("input:radio[name='member[membership_type]']:checked").val();
    });

    $("#exampleInputEmail4").change(function(){     
      $("#exampleInputEmail5").val(countDate("-", $("#exampleInputEmail4").val(), $("input:radio[name='member[membership_type]']:checked").val()));
    });

    handler = Gmaps.build('Google');
    handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
      markers = handler.addMarkers([
        {
          "lng": 77.6430424,
          "lat": 13.0178769,
          "picture": {
            // "url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
            // "width":  36,
            // "height": 36
          },
          "infowindow": "<p><b>Address:</b>&nbsp 7M-215, 7TH Main road, HRBR Layout 2nd block, Kalyan nagar,Banaswadi, Bangalore - 560043</p>"
        }
      ]);
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();
    });
    
    $('input[type=radio][name=football]').change(function(){
      $("#football").val($('input[type=radio][name=football]:checked').val());
    });
    $('input[type=radio][name=tennis]').change(function(){
      $("#tennis").val($('input[type=radio][name=tennis]:checked').val());
    });
    $('input[type=radio][name=yoga]').change(function(){
      $("#yoga").val($('input[type=radio][name=yoga]:checked').val());
    });
    $('input[type=radio][name=karate]').change(function(){
      $("#karate").val($('input[type=radio][name=karate]:checked').val());
    });
    $('input[type=radio][name=gymnastics]').change(function(){
      $("#gymnatics").val($('input[type=radio][name=gymnastics]:checked').val());
    });
    $('input[type=radio][name=art_craft]').change(function(){
      $("#art_craft").val($('input[type=radio][name=art_craft]:checked').val());
    });
    $('input[type=radio][name=water_play]').change(function(){
      $("#water_play").val($('input[type=radio][name=water_play]:checked').val());
    });
  });

  function checkForm(start_date, end_date)
  {
    d1 = new Date($(start_date).val());
    d2 = new Date($(end_date).val());
    
    if(d1 == 'Invalid Date') {
      alert("Invalid start date");
      $(start_date).focus();
      return false;
    }

    if($(start_date).val() < currDate("-")){
      alert("Start date should not be past or current date!");
      return false;
    }

    if(d2 == 'Invalid Date') {
      alert("Invalid end date");
      $(start_date).focus();
      return false;
    }

    if($(end_date).val() < currDate("-")){
      alert("Start date should not be past or current date!");
      return false;
    }

    if($(end_date).val() < $(start_date).val()){
      alert("End date should not be less than start date!");
      return false;
    }
    $("#exampleInputEmail5").removeAttr("disabled");
    return true;
  }

  function currDate(sape){
    var d = new Date();
    var month = d.getMonth()+1;
    var day = d.getDate();
    var output = d.getFullYear() + sape + (month<10 ? '0' : '') + month + sape + (day<10 ? '0' : '') + day;
    return output;
  }

  function countDate(sape, date, type){
    var d = new Date(date);
    switch(type){
      case "2":
        d.setDate(d.getDate() + 7);
        break;
      case "3":
        d.setMonth(d.getMonth() + 1);
        break;
      case "4":
        d.setMonth(d.getMonth() + 4);
        break;
      case "5":
        d.setMonth(d.getMonth() + 6);
        break;
      case "6":
        d.setFullYear(d.getFullYear() + 1);
        break;
    }
    d.setDate(d.getDate() - 1);
    var month = d.getMonth()+1;
    var day = d.getDate();
    var output = d.getFullYear() + sape + (month<10 ? '0' : '') + month + sape + (day<10 ? '0' : '') + day;
    return output;
  }
  