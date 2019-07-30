<?php

namespace App\Jobs;

use App\Mails;
use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;

class SendReminderEmail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    private $owner_email;
    private $client_email;
    private $client_name;
    private $form_data;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($owner_email,$user_email,$client_name,$form_data)
    {
        $this->owner_email=$owner_email;
        $this->client_email=$user_email;
        $this->client_name=$client_name;
        $this->form_data=$form_data;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        Mails::client_email($this->client_email,$this->client_name);
        Mails::owner_email($this->owner_email,$this->form_data);
    }
}
