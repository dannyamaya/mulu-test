<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ Session::token() }}">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


    <title>Test Mulu</title>


</head>
<body>
<div class="container-fluid">


    <div class="row">


        <div class="jumbotron">
            <h1>Assign the Zip Code to an Agent!</h1>
            <p><input type="text" class="input-lg" id="contact" placeholder="Contact">
                <input type="text" id="zipcode" class="input-lg" placeholder="Zipcode"></p>
            <p>
                <button class="btn btn-primary btn-lg" id="match">Match</button>
            </p>
        </div>


        <div id="result"></div>
        <p>
            <button id="contactslist" class="btn btn-warning pull-right">Click Here to see the Full List</button>
        </p>
        <div id="full-table"></div>
    </div>
</div>
</body>
</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="{{ URL::asset('js/main.js') }}"></script>

