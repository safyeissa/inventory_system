<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Stock;
use App\Models\Warehouse;
use App\Models\InventoryItem;


class StockTransferTest extends TestCase
{
    /**
     * A basic feature test example.
     */
    public function test_example(): void
    {
        $response = $this->get('/');

        $response->assertStatus(200);
    }


    public function test_stock_transfer_api_works_correctly()
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

        $payload = [
            'inventory_item_id' => $item->id,
            'from_warehouse_id' => $fromWarehouse->id,
            'to_warehouse_id' => $toWarehouse->id,
            'quantity' => 40,
        ];

        // Act
        $response = $this->postJson('/api/stock-transfers', $payload);

        // Assert
        $response->assertStatus(200);
        $this->assertDatabaseHas('stocks', [
            'inventory_item_id' => $item->id,
            'warehouse_id' => $fromWarehouse->id,
            'quantity' => 60
        ]);
        $this->assertDatabaseHas('stocks', [
            'inventory_item_id' => $item->id,
            'warehouse_id' => $toWarehouse->id,
            'quantity' => 40
        ]);
    }

}
