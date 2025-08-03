<?php

namespace App\Listeners;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Events\LowStockDetected;
use Illuminate\Support\Facades\Log;

class SendLowStockNotification
{
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(LowStockDetected $event)
    {
        Log::info('LowStockDetected Event Triggered');
        Log::debug('Event stock: ' . json_encode($event->stock));


        $stock = $event->stock;

        Log::warning(" Low stock detected for item ID {$stock->inventory_item_id} in warehouse ID {$stock->warehouse_id}. Remaining quantity: {$stock->quantity}");
        // Log::info('LowStockDetected event triggered');
    }

}
