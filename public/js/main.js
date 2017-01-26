

$('#match').click(function(){

	$.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
	});


	var zipCode = $('#zipcode').val();
	var contact = $('#contact').val();


	$.post("getZipCode", {
                zipCode: zipCode,
                contact: contact
            },
            function (data) {
                $('#result').html(data);

            }).fail(function () {
            alert("Ups, something is wrong");
        });
});

$('#contactslist').click(function(){

	$.post("showFullList", {},
            function (data) {
                $('#full-table').html(data);

            }).fail(function () {
            alert("Ups, something is wrong");
        });
});



