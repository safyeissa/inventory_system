<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Stock;
use App\Models\StockTransfer;
use App\Http\Requests\StoreStockTransferRequest;
use App\Services\StockTransferService;

class StockTransferController extends Controller
{

    public function store(StoreStockTransferRequest $request, StockTransferService $service)
    {

        $responseMessage = $service->transfer($request->validated());


        return response()->json([
            'success' => true,
            'message' => $responseMessage
        ]);
    }

}
