$(function () {
    $('#bKash').on('click',function () {
        $('.paymentInfo').empty().append('<div class="col-md-6 mb-3">\n' +
            '    <label for="paymentPhone">Phone Number</label>\n' +
            '    <input type="tel" name="payment_phone" class="form-control" id="paymentPhone" required>\n' +
            '</div>\n' +
            '<div class="col-md-6 mb-3">\n' +
            '    <label for="trxid">TrxID <span class="text-muted">(Optional)</span></label>\n' +
            '    <input type="text" name="trxid" class="form-control" id="trxid" placeholder="">\n' +
            '</div>')
    });

    $('#নগদ').on('click',function () {
        $('.paymentInfo').empty().append('<div class="col-md-6 mb-3">\n' +
            '    <label for="paymentPhone">Phone Number</label>\n' +
            '    <input type="tel" name="payment_phone" class="form-control" id="paymentPhone" placeholder="" required>\n' +
            '</div>')
    });

    $('#Cash').on('click',function () {
        $('.paymentInfo').empty().append();
    });

    var time = new Date();
    var hour = time.getHours();
    if (hour < 10){
        hour = '0'+hour;
    }
    var minutes = time.getMinutes();
    if (minutes < 10){
        minutes = '0'+minutes;
    }
    var seconds = time.getSeconds();
    if (seconds < 10){
        seconds = '0'+seconds;
    }
    time = hour+':'+minutes+':'+seconds;
   $('.time').val(time);
});
