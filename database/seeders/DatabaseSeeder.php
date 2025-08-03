<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\InventoryItem;
use App\Models\Warehouse;
use App\Models\Stock;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // أنشئ 10 منتجات
        $items = InventoryItem::factory()->count(10)->create();

        // أنشئ 5 مخازن
        $warehouses = Warehouse::factory()->count(5)->create();

        // لكل منتج × مخزن → أعمل كمية عشوائية
        foreach ($items as $item) {
            foreach ($warehouses as $warehouse) {
                Stock::factory()->create([
                    'inventory_item_id' => $item->id,
                    'warehouse_id' => $warehouse->id,
                ]);
            }
        }
    }
}
