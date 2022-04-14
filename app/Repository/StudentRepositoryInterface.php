<?php

namespace App\Repository;

interface StudentRepositoryInterface
{
    //  Get_Student
    public function Get_Student();

    // Edit_Student
    public function Edit_Student($id);

    //Update_Student
    public function Update_Student($request);

    // Show_Student
    public function Show_Student($id);

    //Delete_Student
    public function delete_student($request);

    // Get Add Form Student
    public function create();

    // Get classrooms
    public function get_classrooms($id);

    //Get Sections
    public function get_sections($id);

    //Get Blods
    //public function getBlods($id);

    //Store_Student
    public function Store_Student($request);

    //Upload_attachment
    public function Upload_attachment($request);

    //Download_attachment
    public function Download_attachment($studentsname,$filename);

    //Delete_attachment
    public function Delete_attachment($request);

}

