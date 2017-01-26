<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Agents_zones extends Model
{
     protected $table = 'agents_zones';

     public function getAgentByRegion($region){

    	return $this->select('zone_agent')->where('id',$region)->get();

    }
}
