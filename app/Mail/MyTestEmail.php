<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class MyTestEmail extends Mailable
{
    use Queueable, SerializesModels;
    public $data;

    /**
     * Create a new message instance.
     */
    public function __construct($data)
    {
        
        $this->data = $data;
    }

    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'My Test Email',
        );
    }

    /**
     * Get the message content definition.
     */
    public function content(): Content
    {
        return new Content(
            view: 'mail.email',
          
        );
    }

    /**
     * Get the attachments for the message.
     *
     * @return array<int, \Illuminate\Mail\Mailables\Attachment>
     */
//     public function attachments(): array
//     {
        

//         // $imagePath = asset('storage/images/' . $data->photo);
//         $imagePath = asset('storage/images/' . $this->data->photo);


//     // Return an array with the attachment details
//     return [
//         [
//             'file' => $imagePath,  // Path to the image file
//             'options' => [
//                 'mime' => 'image/jpeg',  // MIME type of the image
//             ],
//         ],
//     ];
//     }
// }
}