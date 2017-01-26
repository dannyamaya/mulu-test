<?php

namespace App\Http\Controllers;

use Request;
use GuzzleHttp\Client;
use App\State;
use App\Agents_zones;
use App\Contacts;


class MainController extends Controller
{

    private $apiKey;

    private $client;


    public function __construct()
    {
        //Api Key From Google
        $this->apiKey = 'AIzaSyDo5iTy_dNrsYPBnCD0gNwL_1oQH2z8aMw';

        //Creating the Client with Guzzle for http requests
        $this->client = new \GuzzleHttp\Client(['base_uri' => 'https://maps.googleapis.com/maps/api/geocode/json']);

    }

    public function index()
    {
        //returning main view
        return view('welcome');

    }

    public function getZipCode()
    {

        //Getting the vars in the form
        $zipCode = Request::input('zipCode');
        $contact = Request::input('contact');

        //Making the request to google geocoding
        $response = $this->client->request('GET', '?address=unitedstates' . $zipCode . '&sensor=true&key=' . $this->apiKey);
        $response = json_decode($response->getBody());

        $zone = $response->results[0];

        $result = '';

        //Looking for administrative area level 1 in the response, that is the name of the state
        foreach ($zone as $results) {
            foreach ($results as $value) {
                if (json_encode($value->types[0]) == '"administrative_area_level_1"') {
                    $result = $value;
                    break;
                }
            }
            break;
        }

        //getting the region in the database with the state saved in the previous step
        $state = new State();
        $state = $state->getRegion($result->short_name);

        //getting the agent responsable of that region
        $agent = new Agents_zones();
        $agent = $agent->getAgentByRegion($state[0]->census_region);

        //saving the data in the contacts table
        $contactInTable = new Contacts();
        $contactInTable->contact = $contact;
        $contactInTable->agent = $agent[0]->zone_agent;
        $contactInTable->zip_code = $zipCode;
        $contactInTable->save();

        //returning message
        return '<div class="alert alert-success " role="alert">
  		<strong>Zip Code assigned to agent!</strong> State: ' . $result->long_name . ' Agent: ' . $agent[0]->zone_agent . ' Contact:' . $contact . ' Zip Code: ' . $zipCode . '
		</div>';


    }

    public function showFullList()
    {
        //getting all the contacts for the full list table button
        $contacts = Contacts::all();
        return view('contacts')->with('contacts', $contacts);

    }


}
