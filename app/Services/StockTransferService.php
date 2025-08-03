<?php

namespace App\Services;

use App\Models\Stock;
use App\Models\StockTransfer;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use App\Events\LowStockDetected;

class StockTransferService
{
    public function transfer(array $data)
    {
        return DB::transaction(function () use ($data) {
            $fromStock = Stock::where('inventory_item_id', $data['inventory_item_id'])
                ->where('warehouse_id', $data['from_warehouse_id'])
                ->lockForUpdate()
                ->first();

            if (!$fromStock || $fromStock->quantity < $data['quantity']) {
                throw new \Exception('Insufficient stock');
            }
            if ($fromStock->quantity < 1000) {
                event(new LowStockDetected($fromStock));
            }

            $fromStock->quantity -= $data['quantity'];
            $fromStock->save();

            $toStock = Stock::firstOrCreate([
                'inventory_item_id' => $data['inventory_item_id'],
                'warehouse_id' => $data['to_warehouse_id'],
            ], ['quantity' => 0]);

            $toStock->quantity += $data['quantity'];
            $toStock->save();

            StockTransfer::create([
                'inventory_item_id' => $data['inventory_item_id'],
                'from_warehouse_id' => $data['from_warehouse_id'],
                'to_warehouse_id' => $data['to_warehouse_id'],
                'quantity' => $data['quantity'],
            ]);

            Cache::forget("warehouse_inventory_" . $data['from_warehouse_id']);
            Cache::forget("warehouse_inventory_" . $data['to_warehouse_id']);

            return "Stock transferred successfully";
        });
    }
}