<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\InventoryItem;


class InventoryItemController extends Controller
{
    public function index(Request $request)
    {
        $query = InventoryItem::with(['stocks.warehouse']);

        // بحث بالاسم أو الـ SKU
        if ($request->has('search')) {
            $search = $request->input('search');

            $query->where(function ($q) use ($search) {
                $q->where('name', 'like', "%$search%")
                    ->orWhere('sku', 'like', "%$search%");
            });
        }

        // pagination (10 لكل صفحة)
        $items = $query->paginate(10);

        return response()->json($items);
    }

}
