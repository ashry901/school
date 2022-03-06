<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Nationalitie;
use App\Models\Religion;
use App\Models\Bloodtype;
use App\Models\Guardian;
use Illuminate\Support\Facades\Hash;
use App\Models\Grade;
use App\Models\ParentAttachment;
use Livewire\WithFileUploads;

class Addparent extends Component
{
    use WithFileUploads;

    public $successMessage = '';

    public $catchError,
        $updateMode = false,
        $photos,
        $show_table = true,
        $parent_id;

    public $currentStep = 1,

        // Father_INPUTS
        $email,
        $password,
        $name_father,
        $name_father_en,
        $national_id_father,
        $passport_id_father,
        $phone_father,
        $job_father,
        $job_father_en,
        $nationality_father_id,
        $blood_type_father_id,
        $religion_father_id,
        $address_father,

        // Mother_INPUTS
        $name_mother,
        $name_mother_en,
        $national_id_mother,
        $passport_id_mother,
        $phone_mother,
        $job_mother,
        $job_mother_en,
        $nationality_mother_id,
        $blood_type_mother_id,
        $religion_mother_id,
        $address_mother;

    public function updated($propertyName)
    {
        $this->validateOnly($propertyName, [
            'email'              => 'required|email',
            'national_id_father' => 'required|string|min:14|max:14|regex:/[0-13]{14}/',
            'passport_id_father' => 'min:10|max:10',
            'phone_father'       => 'regex:/^([0-10\s\-\+\(\)]*)$/|min:11',
            'national_id_mother' => 'required|string|min:14|max:14|regex:/[0-13]{14}/',
            'passport_id_mother' => 'min:10|max:10',
            'phone_mother'       => 'regex:/^([0-10\s\-\+\(\)]*)$/|min:11'
        ]);
    }

    public function render()
    {
        return view('livewire.addparent', [
            'nationalities' => Nationalitie::all(),
            'bloodtypes'    => Bloodtype::all(),
            'religions'     => Religion::all(),
            'guardians'     => Guardian::all(),
        ]);
    }

    public function showformadd()
    {
        $this->show_table = false;
    }

    //firstStepSubmit
    public function firstStepSubmit()
    {
        $this->validate([
            'email'                 => 'required|unique:guardians,email,'.$this->id,
            'password'              => 'required',
            'name_father'           => 'required',
            'name_father_en'        => 'required',
            'job_father'            => 'required',
            'job_father_en'         => 'required',
            'national_id_father'    => 'required|unique:guardians,national_id_father,' . $this->id,
            'passport_id_father'    => 'unique:guardians,passport_id_father,' . $this->id,
            'phone_father'          => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10',
            'nationality_father_id' => 'required',
            'blood_type_father_id'  => 'required',
            'religion_father_id'    => 'required',
            'address_father'        => 'required',
        ]);

        $this->currentStep = 2;
    }

    //secondStepSubmit
    public function secondStepSubmit()
    {
        $this->validate([
            'name_mother'           => 'required',
            'name_mother_en'        => 'required',
            'national_id_mother'    => 'required|unique:guardians,national_id_mother,' . $this->id,
            'passport_id_mother'    => 'unique:guardians,passport_id_mother,' . $this->id,
            'phone_mother'          => 'required',
            'job_mother'            => 'required',
            'job_mother_en'         => 'required',
            'nationality_mother_id' => 'required',
            'blood_type_mother_id'  => 'required',
            'religion_mother_id'    => 'required',
            'address_mother'        => 'required',
        ]);

        $this->currentStep = 3;
    }

    public function submitForm()
    {
        try {
            $guardian = new Guardian();
            // Father_INPUTS
            $guardian->email                    = $this->email;
            $guardian->password                 = Hash::make($this->password);
            $guardian->name_father              = ['en' => $this->name_father_en, 'ar' => $this->name_father];
            $guardian->national_id_father       = $this->national_id_father;
            $guardian->passport_id_father       = $this->passport_id_father;
            $guardian->phone_father             = $this->phone_father;
            $guardian->job_father               = ['en' => $this->job_father_en, 'ar' => $this->job_father];
            $guardian->passport_id_father       = $this->passport_id_father;
            $guardian->nationality_father_id    = $this->nationality_father_id;
            $guardian->blood_type_father_id     = $this->blood_type_father_id;
            $guardian->religion_father_id       = $this->religion_father_id;
            $guardian->address_father           = $this->address_father;

            // Mother_INPUTS
            $guardian->name_mother              = ['en' => $this->name_mother_en, 'ar' => $this->name_mother];
            $guardian->national_id_mother       = $this->national_id_mother;
            $guardian->passport_id_mother       = $this->passport_id_mother;
            $guardian->phone_mother             = $this->phone_mother;
            $guardian->job_mother               = ['en' => $this->job_mother_en, 'ar' => $this->job_mother];
            $guardian->passport_id_mother       = $this->passport_id_mother;
            $guardian->nationality_mother_id    = $this->nationality_mother_id;
            $guardian->blood_type_mother_id     = $this->blood_type_mother_id;
            $guardian->religion_mother_id       = $this->religion_mother_id;
            $guardian->address_mother           = $this->address_mother;

            $guardian->save();

            if (!empty($this->photos)){
                foreach ($this->photos as $photo) {
                    $photo->storeAs($this->national_id_father, $photo->getClientOriginalName(), $disk = 'parent_attachments');
                    ParentAttachment::create([
                        'file_name' => $photo->getClientOriginalName(),
                        'parent_id' => Guardian::latest()->first()->id,
                    ]);
                }
            }

            $this->successMessage = trans('cpanel/messages.success');

            $this->clearForm();

            $this->currentStep = 1;
        }
        catch (\Exception $e) {
            $this->catchError = $e->getMessage();
        }

    }

    public function edit($id)
    {
        $this->show_table = false;
        $this->updateMode = true;
        $guardian = Guardian::where('id', $id)->first();

        $this->parent_id                = $id;
        $this->email                    = $guardian->email;
        $this->password                 = $guardian->password;
        $this->name_father              = $guardian->getTranslation('name_father', 'ar');
        $this->name_father_en           = $guardian->getTranslation('name_father', 'en');
        $this->job_father               = $guardian->getTranslation('job_father', 'ar');
        $this->job_father_en            = $guardian->getTranslation('job_father', 'en');
        $this->national_id_father       = $guardian->national_id_father;
        $this->passport_id_father       = $guardian->passport_id_father;
        $this->phone_father             = $guardian->phone_father;
        $this->nationality_father_id    = $guardian->nationality_father_id;
        $this->blood_type_father_id     = $guardian->blood_type_father_id;
        $this->address_father           = $guardian->address_father;
        $this->religion_father_id       = $guardian->religion_father_id;

        $this->name_mother              = $guardian->getTranslation('name_mother', 'ar');
        $this->name_mother_en           = $guardian->getTranslation('name_mother', 'en');
        $this->job_mother               = $guardian->getTranslation('job_mother', 'ar');
        $this->job_mother_en            = $guardian->getTranslation('job_mother', 'en');
        $this->national_id_mother       = $guardian->national_id_mother;
        $this->passport_id_mother       = $guardian->passport_id_mother;
        $this->phone_mother             = $guardian->phone_mother;
        $this->nationality_mother_id    = $guardian->nationality_mother_id;
        $this->blood_type_mother_id     = $guardian->blood_type_mother_id;
        $this->address_mother           = $guardian->address_mother;
        $this->religion_mother_id       = $guardian->religion_mother_id;
    }

    //firstStepSubmit
    public function firstStepSubmit_edit()
    {
        $this->updateMode = true;
        $this->currentStep = 2;
    }

    //secondStepSubmit_edit
    public function secondStepSubmit_edit()
    {
        $this->updateMode = true;
        $this->currentStep = 3;
    }

    public function submitForm_edit()
    {
        try {

            if ($this->parent_id){
                $parent = Guardian::find($this->parent_id);
                $parent->update([
                    'email'                 => $this->email,
                    'password'              => $this->password,
                    //'name_father'           => ['en' => $this->name_father_en, 'ar' => $this->name_father],
                    'name_father'           => $this->name_father,
                    //'name_father_en'        => $this->name_father_en,
                    'job_father'            => $this->job_father,
                    //'job_father_en'         => $this->job_father_en,
                    'national_id_father'    => $this->national_id_father,
                    'passport_id_father'    => $this->passport_id_father,
                    'phone_father'          => $this->phone_father,
                    'nationality_father_id' => $this->nationality_father_id,
                    'blood_type_father_id'  => $this->blood_type_father_id,
                    'address_father'        => $this->address_father,
                    'religion_father_id'    => $this->religion_father_id,
                    'name_mother'           => $this->name_mother,
                    //'name_mother_en'        => $this->name_mother_en,
                    'job_mother'            => $this->job_mother,
                    //'job_mother_en'         => $this->job_mother_en,
                    'national_id_mother'    => $this->national_id_mother,
                    'passport_id_mother'    => $this->passport_id_mother,
                    'phone_mother'          => $this->phone_mother,
                    'nationality_mother_id' => $this->nationality_mother_id,
                    'blood_type_mother_id'  => $this->blood_type_mother_id,
                    'address_mother'        => $this->address_mother,
                    'religion_mother_id'    => $this->religion_mother_id,

                ]);

            }
            $this->successMessage = trans('cpanel/messages.Update');

            $this->clearForm();

            $this->currentStep = 1;
        }

        catch (\Exception $e) {

            $this->catchError = $e->getMessage();
        }
        //return redirect()->route('add_parent')->with('success', 'successMessage');
        //return redirect()->route('add_parent');
        //return redirect()->to('/add_parent');
    }

    public function delete($id)
    {
        try {
            Guardian::findOrFail($id)->delete();

            $this->successMessage = trans('cpanel/messages.Delete');
        }

        catch (\Exception $e) {

            $this->catchError = $e->getMessage();
        }


        //return redirect()->to('/add_parent');
    }

    //clearForm
    public function clearForm()
    {
        $this->email                    = '';
        $this->password                 = '';
        $this->name_father              = '';
        $this->name_father_en           = '';
        $this->job_father               = '';
        $this->job_father_en            = '';
        $this->national_id_father       = '';
        $this->passport_id_father       = '';
        $this->phone_father             = '';
        $this->nationality_father_id    = '';
        $this->blood_type_father_id     = '';
        $this->religion_father_id       = '';
        $this->address_father           = '';

        $this->name_mother              = '';
        $this->job_mother               = '';
        $this->job_mother_en            = '';
        $this->name_mother_en           = '';
        $this->national_id_mother       = '';
        $this->passport_id_mother       = '';
        $this->phone_mother             = '';
        $this->nationality_mother_id    = '';
        $this->blood_type_mother_id     = '';
        $this->religion_mother_id       = '';
        $this->address_mother           = '';

        //$this->successMessage = trans('messages.success');

    }

    //back
    public function back($step)
    {
        $this->currentStep = $step;
    }
}
