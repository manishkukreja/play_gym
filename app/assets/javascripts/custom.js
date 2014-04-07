	$(document).ready(function(){
    $(".membership_type").change(function(){
      $("#exampleInputEmail4").removeAttr("disabled");
      $("#exampleInputEmail4").removeAttr("title");
      if($(this).val()=="1"){
        $("#exampleInputEmail5").removeAttr("disabled");
        $("#exampleInputEmail5").removeAttr("title");
        $("#charges_table_1").show();
        $("#charges_table_2").hide();
      } else {
        $("#charges_table_1").hide();
        $("#charges_table_2").show();
        $("#exampleInputEmail5").attr({"disabled":true});
        $("#exampleInputEmail5").val(countDate("-", $("#exampleInputEmail4").val(), $("input:radio[name='member[membership_type]']:checked").val()));
      }
    });

    $("#exampleInputEmail4").change(function(){     
      $("#exampleInputEmail5").val(countDate("-", $("#exampleInputEmail4").val(), $("input:radio[name='member[membership_type]']:checked").val()));
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
      // case "2":
      //   d.setDate(d.getDate() + 7);
      //   break;
      case "2":
        d.setMonth(d.getMonth() + 1);
        break;
      case "3":
        d.setMonth(d.getMonth() + 4);
        break;
      case "4":
        d.setMonth(d.getMonth() + 6);
        break;
      case "5":
        d.setFullYear(d.getFullYear() + 1);
        break;
    }
    d.setDate(d.getDate() - 1);
    var month = d.getMonth()+1;
    var day = d.getDate();
    var output = d.getFullYear() + sape + (month<10 ? '0' : '') + month + sape + (day<10 ? '0' : '') + day;
    return output;
  }
  

  $(document).ready(function(){
    $('input[type=radio][name=summer_15_0]').change(function(){
      $("#total_21").html($('input[type=radio][name=summer_15_0]:checked').val());
    });
    $('input[type=radio][name=summer_16_1]').change(function(){
      $("#total_22").html($('input[type=radio][name=summer_16_1]:checked').val());
    });
    $('input[type=radio][name=summer_17_2]').change(function(){
      $("#total_23").html($('input[type=radio][name=summer_17_2]:checked').val());
    });
    $('input[type=radio][name=summer_18_3]').change(function(){
      $("#total_24").html($('input[type=radio][name=summer_18_3]:checked').val());
    });

    $('input[type=radio][name=member_12_0]').change(function(){
      $("#total_44").html($('input[type=radio][name=member_12_0]:checked').val());
    });
    $('input[type=radio][name=member_13_1]').change(function(){
      $("#total_45").html($('input[type=radio][name=member_13_1]:checked').val());
    });
    $('input[type=radio][name=member_14_2]').change(function(){
      $("#total_46").html($('input[type=radio][name=member_14_2]:checked').val());
    });   
  
    $('input[type=radio][name=member_summer_15_0]').change(function(){
      $("#total_53").html($('input[type=radio][name=member_summer_15_0]:checked').val());
    });
    $('input[type=radio][name=member_summer_16_1]').change(function(){
      $("#total_54").html($('input[type=radio][name=member_summer_16_1]:checked').val());
    });
    $('input[type=radio][name=member_summer_17_2]').change(function(){
      $("#total_55").html($('input[type=radio][name=member_summer_17_2]:checked').val());
    });
    $('input[type=radio][name=member_summer_18_3]').change(function(){
      $("#total_56").html($('input[type=radio][name=member_summer_18_3]:checked').val());
    });
    $('input[type=radio][name=member_summer_19_4]').change(function(){
      $("#total_57").html($('input[type=radio][name=member_summer_19_4]:checked').val());
    });

    $('input[type=radio][name=karate]').change(function(){
      $("#karate").html($('input[type=radio][name=karate]:checked').val());
    });
    $('input[type=radio][name=gymnastics]').change(function(){
      $("#gymnatics").html($('input[type=radio][name=gymnastics]:checked').val());
    });
    $('input[type=radio][name=art_craft]').change(function(){
      $("#art_craft").html($('input[type=radio][name=art_craft]:checked').val());
    });
    $('input[type=radio][name=water_play]').change(function(){
      $("#water_play").html($('input[type=radio][name=water_play]:checked').val());
    });
  });