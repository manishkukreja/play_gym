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
      calculateTotal();
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
    $("input[type=checkbox][name=default_flat_200],input[type=checkbox][name=default_flat_2000],input[type=checkbox][name=per_hr_200]").click(function(){
      calculateTotal();
    });
    clearCharge = function(r_charge_nm, r_total_id){
      $('input[type=radio][name='+r_charge_nm+']:checked').attr('checked', false);
      $('#'+r_total_id).html('0');
      calculateTotal();
    }
    $('input[type=radio][name=summer_15_0]').change(function(){
      $("#total_21").html(parseInt($('input[type=radio][name=summer_15_0]:checked').attr('data-charge')));
      calculateTotal();
    });
    $('input[type=radio][name=summer_16_1]').change(function(){
      $("#total_22").html($('input[type=radio][name=summer_16_1]:checked').attr('data-charge'));
      calculateTotal();
    });
    $('input[type=radio][name=summer_17_2]').change(function(){
      $("#total_23").html($('input[type=radio][name=summer_17_2]:checked').attr('data-charge'));
      calculateTotal();
    });
    $('input[type=radio][name=summer_18_3]').change(function(){
      $("#total_24").html($('input[type=radio][name=summer_18_3]:checked').attr('data-charge'));
      calculateTotal();
    });

    $('input[type=radio][name=member_12_0]').change(function(){
      $("#total_44").html($('input[type=radio][name=member_12_0]:checked').first().data('charge'));
      calculateTotal();
    });
    $('input[type=radio][name=member_13_1]').change(function(){
      $("#total_45").html($('input[type=radio][name=member_13_1]:checked').first().data('charge'));
      calculateTotal();
    });
    $('input[type=radio][name=member_14_2]').change(function(){
      $("#total_46").html($('input[type=radio][name=member_14_2]:checked').first().data('charge'));
      calculateTotal();
    });   
  
    $('input[type=radio][name=member_summer_15_0]').change(function(){
      $("#total_53").html($('input[type=radio][name=member_summer_15_0]:checked').first().data('charge'));
      calculateTotal();
    });
    $('input[type=radio][name=member_summer_16_1]').change(function(){
      $("#total_54").html($('input[type=radio][name=member_summer_16_1]:checked').first().data('charge'));
      calculateTotal();
    });
    $('input[type=radio][name=member_summer_17_2]').change(function(){
      $("#total_55").html($('input[type=radio][name=member_summer_17_2]:checked').first().data('charge'));
      calculateTotal();
    });
    $('input[type=radio][name=member_summer_18_3]').change(function(){
      $("#total_56").html($('input[type=radio][name=member_summer_18_3]:checked').first().data('charge'));
      calculateTotal();
    });
    $('input[type=radio][name=member_summer_19_4]').change(function(){
      $("#total_57").html($('input[type=radio][name=member_summer_19_4]:checked').first().data('charge'));
      calculateTotal();
    });

    calculateTotal = function(){
      var total = 0, selected_radio = 1;
      $(".membership_type").each(function(){
        if($(this).is(":checked"))
          selected_radio = $(this).val();
      });
      if(selected_radio == "1"){
        if($("input[type=checkbox][name=default_flat_200]").is(":checked"))
          total += parseInt($("input[type=checkbox][name=default_flat_200]").first().attr('data-charge'))
        $("input[type=checkbox][name=per_hr_200]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=summer_15_0]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=summer_16_1]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=summer_17_2]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=summer_18_3]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("#total_pay_as_you_go").text(total);
      } else{
        if($("input[type=checkbox][name=default_flat_2000]").is(":checked")){
          discount = 0
          if(selected_radio == "3")
            discount = 10
          else if(selected_radio == "4")
            discount = 20
          else if(selected_radio == "5")
            discount = 30
          if(discount != 0){
            total += parseInt($("input[type=checkbox][name=default_flat_2000]").first().attr('data-charge')) - (parseInt($("input[type=checkbox][name=default_flat_2000]").first().attr('data-charge'))*discount)/100
          } else {
            total += parseInt($("input[type=checkbox][name=default_flat_2000]").first().attr('data-charge'))
          }
        }
        $("input[type=radio][name=member_12_0]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=member_13_1]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=member_14_2]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=member_15_0]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=member_16_1]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=member_17_2]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=member_18_3]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=member_19_4]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=member_summer_15_0]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=member_summer_16_1]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=member_summer_17_2]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=member_summer_18_3]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("input[type=radio][name=member_summer_19_4]").each(function(){
          if($(this).is(":checked"))
            total += parseInt($(this).attr('data-charge'));
        });
        $("#total_membership").text(total);
      }
    }
  });