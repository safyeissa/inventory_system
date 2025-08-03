<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Warehouse;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;

class WarehouseController extends Controller
{
    public function inventoryItems($id)
    {
        $warehouse = Warehouse::findOrFail($id);

        $inventory = Cache::remember("warehouse_inventory_$id", 300, function () use ($warehouse) {
            Cache::put('test_key', 'Hello', 60);

            Log::info(' fetched from DB and cached');
            return $warehouse->stocks()
                ->with('inventoryItem')
                ->get()
                ->map(function ($stock) {
                    return [
                        'id' => $stock->inventoryItem->id,
                        'name' => $stock->inventoryItem->name,
                        'sku' => $stock->inventoryItem->sku,
                        'quantity' => $stock->quantity,
                    ];
                });
        });

        return response()->json($inventory);
    }
}
