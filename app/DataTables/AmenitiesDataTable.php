<?php

/**
 * AmenitiesData Data Table
 *
 * AmenitiesData Data Table handles AmenitiesData datas.
 *
 * @category   AmenitiesData
 * @package    migrateshop
 * @author     Migrateshop
 * @copyright  2020 migrateshop.com
 * @license
 * @version    4.0
 * @link       http://migrateshop.com
 * @since      Version 1.3
 * @deprecated None
 */

namespace App\DataTables;

use App\Models\Amenities;
use Yajra\DataTables\Services\DataTable;

class AmenitiesDataTable extends DataTable
{
    public function ajax()
    {
        return datatables()
            ->eloquent($this->query())
            ->addColumn('action', function ($amenities) {

                $edit = '<a href="' . url('admin/edit-amenities/' . $amenities->id) . '" class="btn btn-sm svbtn"><i class="fa fa-pencil"></i></a>&nbsp;';
                $delete = '<a href="' . url('admin/delete-amenities/' . $amenities->id) . '" class="btn btn-sm svbtn delete-warning"><i class="glyphicon glyphicon-trash"></i></a>';
                return $edit . ' ' . $delete;
            })
            ->rawColumns(['action'])
            ->make(true);
    }

    public function query()
    {
        $query = Amenities::where('lang', 'en')->where('deleted_status', 'No' )->select();

        return $this->applyScopes($query);
    }
    
    public function html()
    {
        return $this->builder()
            ->addColumn(['data' => 'title', 'name' =>'amenities.title', 'title' => 'Name'])
            ->addColumn(['data' => 'description', 'name' =>'amenities.description', 'title' => 'Description'])
            ->addColumn(['data' => 'symbol', 'name' =>'amenities.symbol', 'title' => 'Symbol'])
            ->addColumn(['data' => 'status', 'name' =>'amenities.status', 'title' => 'Status'])
            ->addColumn(['data' => 'action', 'name' =>'action', 'title' => 'Action', 'orderable' => false, 'searchable' => false])
             ->parameters([
                'dom' => 'lBfrtip',
                'buttons' => [],
                'order' => [0, 'desc'],
                'pageLength' => \Session::get('row_per_page'),
            ]);
    }

    protected function getColumns()
    {
        return [
            'id',
            'created_at',
            'updated_at',
        ];
    }

    protected function filename()
    {
        return 'amenitiesdatatables_' . time();
    }
}
