<?php

namespace Tests\Unit;

use Tests\TestCase;
use App\Models\Stock;
use App\Models\Warehouse;
use App\Models\InventoryItem;
use App\Services\StockTransferService;
use Illuminate\Foundation\Testing\RefreshDatabase;

class StockTransferTest extends TestCase
{
    use RefreshDatabase;

    public function test_stock_transfer_updates_quantities_correctly()
    {
        // Arrange
        $item = InventoryItem::factory()->create();
        $fromWarehouse = Warehouse::factory()->create();
        $toWarehouse = Warehouse::factory()->create();

        $fromStock = Stock::factory()->create([
            'inventory_item_id' => $item->id,
            'warehouse_id' => $fromWarehouse->id,
            'quantity' => 100
        ]);

        $this->assertDatabaseMissing('stocks', [
            'inventory_item_id' => $item->id,
            'warehouse_id' => $toWarehouse->id,
        ]);

        $service = new StockTransferService();
        // Act
        $data = [
            'inventory_item_id' => $item->id,
            'from_warehouse_id' => $fromWarehouse->id,
            'to_warehouse_id' => $toWarehouse->id,
            'quantity' => 40,
        ];

        $service->transfer($data);

        // $this->assertEquals(60, $fromStock->fresh()->quantity);
        // dump(vars: Stock::all());

        // Assert
        $this->assertDatabaseHas('stocks', [
            'inventory_item_id' => $item->id,
            'warehouse_id' => $fromWarehouse->id,
            'quantity' => 60,
        ]);

        $this->assertDatabaseHas('stocks', [
            'inventory_item_id' => $item->id,
            'warehouse_id' => $toWarehouse->id,
            'quantity' => 40,
        ]);
    }
}
