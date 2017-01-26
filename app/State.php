<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class State extends Model
{
    protected $table = 'state';


    public function getRegion($zone){

    	return $this->select('census_region')->where('abbreviation',$zone)->get();

    }
}
