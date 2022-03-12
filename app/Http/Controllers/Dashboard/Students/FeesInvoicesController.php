<?php

namespace App\Http\Controllers\Dashboard\Students;

use App\Http\Controllers\Controller;
use App\Repository\FeeInvoicesRepositoryInterface;
use Illuminate\Http\Request;

class FeesInvoicesController extends Controller
{
    protected $fee_invoices;

    public function __construct(FeeInvoicesRepositoryInterface $fee_invoices)
    {
        $this->fee_invoices = $fee_invoices;
    }

    public function index()
    {
        return $this->fee_invoices->index();
    }

    public function store(Request $request)
    {
        return $this->fee_invoices->store($request);
    }

    public function show($id)
    {
        return $this->fee_invoices->show($id);
    }

    public function edit($id)
    {
        return $this->fee_invoices->edit($id);
    }

    public function update(Request $request)
    {
        return $this->fee_invoices->update($request);
    }

    public function destroy(Request $request)
    {
        return $this->fee_invoices->destroy($request);
    }
}
