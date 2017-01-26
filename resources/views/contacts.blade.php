<table class="table table-hover">
    <thead>
    <tr>
        <th>Agent #</th>
        <th>Contact</th>
        <th>Zip Code</th>
    </tr>
    </thead>
    <tbody>
    @foreach($contacts as $contact)
        <tr>
            <td>{{$contact->agent}}</td>
            <td>{{$contact->contact}}</td>
            <td>{{$contact->zip_code}}</td>
        </tr>
    @endforeach
    </tbody>

</table>