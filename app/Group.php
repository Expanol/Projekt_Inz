<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    protected $table = 'groups';

    public function questionnaire()
    {
        return $this->morphMany('App\Questionnaire', "questionable");
    }

}
