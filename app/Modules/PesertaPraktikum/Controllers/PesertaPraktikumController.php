<?php
namespace App\Modules\PesertaPraktikum\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Modules\PesertaPraktikum\Models\PesertaPraktikum;
use Yajra\Datatables\Datatables;
use App\Models\Content;
use App\Models\Log;
use DB;
use Form;

class PesertaPraktikumController extends Controller
{
	protected $slug = 'pesertapraktikum';
	protected $module = 'PesertaPraktikum';
	protected $title = "Peserta Praktikum";

	protected $column_title;
	protected $ajax_field;
	protected $validation;
	protected $create_form;
	protected $update_form;

	public function __construct()
	{
		$this->column_title = array('pesertapraktikum', 'Simbol', 'Nilai');
		$this->ajax_field = array(['pesertapraktikum', 'name', 'value'], [0,1,2]);
		$this->validation = array(
			'pesertapraktikum' => 'required|string|max:191',
		);
		$this->create_form = array(
			'pesertapraktikum' =>	Form::text('pesertapraktikum', old('pesertapraktikum'), ['class' => 'form-control', 'placeholder' => 'Contoh: w', ] ),
		);
		$this->update_form = array(
			'pesertapraktikum' =>	Form::text('pesertapraktikum', old('pesertapraktikum'), ['class' => 'form-control', 'placeholder' => 'Contoh: w', 'id' => 'key'] ),
		);
	}

	public function index()
	{
		$data['pesertapraktikum'] = PesertaPraktikum::all();
		$data['title'] = $this->title;
		$data['create_route'] = route($this->slug.'.post.create');
		$data['update_route'] = route($this->slug.'.post.update', ['id'=>null]);
		$data['delete_route'] = route($this->slug.'.delete', ['id'=>null]);
		$data['detail_route'] = route($this->slug.'.details.read', ['id'=>null]);
		$data['read_route'] = route($this->slug.'.get-data.read');
		$data['column_title'] = $this->column_title;
		$data['ajax_field'] = $this->ajax_field;
		$data['create_form'] = $this->create_form;
		$data['update_form'] = $this->update_form;

		$data['create_button'] = "";
		if(Content::menuPermission('create')){
			$data['create_button'] = '<button class="btn btn-sm btn-default" data-target="#add" data-toggle="modal">
											<i class="fa fa-plus" aria-hidden="true"></i>
											<span class="hidden-xs">Tambah '.$this->title.'</span>
										</button>';
		}

		return view('PesertaPraktikum::pesertapraktikum', $data);
	}

	public function getData(Datatables $datatables, Request $request)
	{
		DB::statement(DB::raw('set @no=0'));

		$data =  PesertaPraktikum::get([
							DB::raw('@no  := @no  + 1 AS no'),
							'id',
						]);

		$datatables = Datatables::of($data);
			if ($keyword = $request->get('search')['value']) {
					$datatables->filterColumn('no', 'whereRaw', '@no  + 1 like ?', ["%{$keyword}%"]);
			}

		return $datatables
			->orderColumn('pesertapraktikum', 'pesertapraktikum $1')
			->editColumn('created_at', function ($data) {
				return Content::tanggal_indo($data->created_at, true);
			})
			->addColumn('action', function ($data) {
				$update = "";
				$validate = "";
				$delete = "";
				if(Content::menuPermission('update')){
					$update = '<button type="button" data-target="#formEditModal" value="'. $data->id .'" data-toggle="modal" class="btn btn-sm btn-outline btn-primary">
							<i class="fa fa-pencil" aria-hidden="true"></i> Edit
						</button>';
				}
				if(Content::menuPermission('delete')){
					$delete = '<button type="button" id="confirmDelete" value="'. $data->id .'" class="btn btn-outline  btn-sm btn-danger" data-target="#confirmDeleteModal" data-toggle="modal">
							<i class="fa fa-trash" aria-hidden="true"></i> Delete
						</button>';
				}
				if(Content::menuPermission('validate')){
					$validate = '<a href="'.route($this->slug.'.validate', ['id' => $data->id]).'" class="btn btn-outline btn-sm btn-warning"> <i class="fa fa-cogs" aria-hidden="true"></i> Validate </a>';
				}

				return '
					<div class="btn-group" aria-label="User Action">'.
						$update.$delete.$validate
						.
					'</div>' ;
			})
			->make(true);
	}

	function postCreate(Request $request)
	{
		$this->validate($request, $this->validation);

		$pesertapraktikum = new PesertaPraktikum();

		$pesertapraktikum->pesertapraktikum = $request->input('pesertapraktikum');
		$pesertapraktikum->created_by = Auth::user()->id;

		$pesertapraktikum->save();

		Log::aktivitas('Menambah '.$this->title.'.');

		return redirect()->back()->with('message_sukses', $this->title.' berhasil ditambahkan!');
	}

	public function details($id)
	{
		return $data['pesertapraktikum'] = PesertaPraktikum::find($id)->toJson();

	}

	public function postUpdate(Request $request)
	{
		$this->validate($request, $this->validation);

		$pesertapraktikum = PesertaPraktikum::find($request->input('edit_id'));

		$pesertapraktikum->pesertapraktikum = $request->input('pesertapraktikum');
		$pesertapraktikum->updated_by = Auth::user()->id;

		$pesertapraktikum->save();

		Log::aktivitas('Mengubah '.$this->title.'.');
		return redirect()->back()->with('message_sukses', $this->title.' berhasil diubah!');
	}

	public function delete($id)
	{
		$pesertapraktikum = PesertaPraktikum::find($id);
		$pesertapraktikum->deleted_by = Auth::user()->id;
		$pesertapraktikum->save();

		PesertaPraktikum::destroy($id);
		Log::aktivitas('Menghapus '.$this->title.'.');
		return redirect()->back()->with('message_sukses', $this->title.' berhasil dihapus!');
	}

}
