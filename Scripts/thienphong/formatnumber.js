$(document).ready(function () {

    $(document).on('keydown', '#txtGiaMua', function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
            // Allow: Ctrl+A, Command+A
            (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
            // Allow: home, end, left, right, down, up
            (e.keyCode >= 35 && e.keyCode <= 40)) {
            // let it happen, don't do anything
            return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
    $(document).on('keyup', '#txtGiaMua', function () {
        if ($(this).val() == '')
            $(this).val(0);
        else {
            var value = tp_decode_currency_format($(this).val());
            $(this).val(tp_encode_currency_format(value));
        }
    });
    //gia ban le
    $(document).on('keydown', '#txtGiaBan1', function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
            // Allow: Ctrl+A, Command+A
            (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
            // Allow: home, end, left, right, down, up
            (e.keyCode >= 35 && e.keyCode <= 40)) {
            // let it happen, don't do anything
            return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
    $(document).on('keyup', '#txtGiaBan1', function () {
        if ($(this).val() == '')
            $(this).val(0);
        else {
            var value = tp_decode_currency_format($(this).val());
            $(this).val(tp_encode_currency_format(value));
        }
    });
    //gia ban si
    $(document).on('keydown', '#txtGiaBan2', function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
            // Allow: Ctrl+A, Command+A
            (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
            // Allow: home, end, left, right, down, up
            (e.keyCode >= 35 && e.keyCode <= 40)) {
            // let it happen, don't do anything
            return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
    $(document).on('keyup', '#txtGiaBan2', function () {
        if ($(this).val() == '')
            $(this).val(0);
        else {
            var value = tp_decode_currency_format($(this).val());
            $(this).val(tp_encode_currency_format(value));
        }
    });
    //gia ban net
    $(document).on('keydown', '#txtGiaBan3', function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
            // Allow: Ctrl+A, Command+A
            (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
            // Allow: home, end, left, right, down, up
            (e.keyCode >= 35 && e.keyCode <= 40)) {
            // let it happen, don't do anything
            return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
    $(document).on('keyup', '#txtGiaBan3', function () {
        if ($(this).val() == '')
            $(this).val(0);
        else {
            var value = tp_decode_currency_format($(this).val());
            $(this).val(tp_encode_currency_format(value));
        }
    });
    //Ty le chiet khau
    $(document).on('keydown', '#txtTyLeCK', function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
            // Allow: Ctrl+A, Command+A
            (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
            // Allow: home, end, left, right, down, up
            (e.keyCode >= 35 && e.keyCode <= 40)) {
            // let it happen, don't do anything
            return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
    $(document).on('keyup', '#txtTyLeCK', function () {
        if ($(this).val() == '')
            $(this).val(0);
        else {
            var value = tp_decode_currency_format($(this).val());
            $(this).val(tp_encode_currency_format(value));
        }
    });
    $(document).on('keydown', '#txtDebtLimit', function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
            // Allow: Ctrl+A, Command+A
            (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
            // Allow: home, end, left, right, down, up
            (e.keyCode >= 35 && e.keyCode <= 40)) {
            // let it happen, don't do anything
            return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });

    $(document).on('keyup', '#txtDebtLimit', function () {
        if ($(this).val() == '')
            $(this).val(0);
        else {
            var value = tp_decode_currency_format($(this).val());
            $(this).val(tp_encode_currency_format(value));
        }
    });


    function tp_encode_currency_format(obs) {
        return obs.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }

    function tp_decode_currency_format(obs) {
        if (obs == '')
            return 0;
        else
            return parseInt(obs.replace(/,/g, ''));
    }

});