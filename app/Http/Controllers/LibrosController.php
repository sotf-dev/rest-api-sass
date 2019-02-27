<?php

namespace App\Http\Controllers;

use App\AuthorModel;
use App\EstudianteModel;
use App\LibAutModel;
use App\LibrosModel;
use App\PrestamoModel;

class LibrosController extends Controller
{

    /**
     * @return \Illuminate\Http\JsonResponse
     * Books
     */
    public function books()
    {
        $modelbook = LibrosModel::get();
        $books = [];

        foreach ($modelbook as $book) {
            $books[] = [
                "id" => $book->id,
                "titulo" => $book->titulo,
                "editorial" => $book->editorial,
                "area" => $book->area
            ];
        }

        return response()->json($books);
    }

    /**
     * @return \Illuminate\Http\JsonResponse
     * Books Loan limit 5
     */
    public function bookLoan() {
        $modelprestamo = PrestamoModel::limit(5)->get();
        $prestamos = [];

        foreach ($modelprestamo as $prestamo) {
            $name = EstudianteModel::where('id', $prestamo->id_est)->first();
            $book = LibrosModel::where('id', $prestamo->id_lib)->first();

            if ($name && $book) {
                $prestamos[] = [
                    "name" => $name->nombre. ' '. $name->apellido,
                    "book" => $book->titulo,
                    "date_prestamo" => $prestamo->date_prestamo,
                    "date_devuelto" => $prestamo->date_devuelto,
                    "devuelto" => $prestamo->devuelto,
                ];
            }
        }

        return response()->json($prestamos);
    }

    /**
     * @return \Illuminate\Http\JsonResponse
     * Books Loan All
     */
    public function bookLoanAll() {
        $modelprestamo = PrestamoModel::get();
        $prestamos = [];

        foreach ($modelprestamo as $prestamo) {
            $name = EstudianteModel::where('id', $prestamo->id_est)->first();
            $book = LibrosModel::where('id', $prestamo->id_lib)->first();

            if ($name && $book) {
                $prestamos[] = [
                    "name" => $name->nombre. ' '. $name->apellido,
                    "book" => $book->titulo,
                    "date_prestamo" => $prestamo->date_prestamo,
                    "date_devuelto" => $prestamo->date_devuelto,
                    "devuelto" => $prestamo->devuelto,
                ];
            }
        }

        return response()->json($prestamos);
    }

    /**
     * @param $name
     * @return \Illuminate\Http\JsonResponse
     * Books Search
     */
    public function searchBook($name)
    {
        $booksearch = LibrosModel::where('titulo', 'like', '%' . $name . "%")->get();
        $books = [];

        if ($booksearch) {
            foreach ($booksearch as $book) {
                $books[] = [
                    "id" => $book->id,
                    "titulo" => $book->titulo,
                    "editorial" => $book->editorial,
                    "area" => $book->area
                ];
            }
        }

        return response()->json($books);
    }

    /**
     * @return \Illuminate\Http\JsonResponse
     * Books Authors
     */
    public function authorBook() {
        $libauthors = LibAutModel::get();
        $authors = [];

        foreach ($libauthors as $lia) {
            $name = AuthorModel::where('id', $lia->id_author)->first();
            $book = LibrosModel::where('id', $lia->id_lib)->first();

            if ($name && $book) {
                $authors[] = [
                    "name" => $name->nombre,
                    "country" => $name->nacionalidad,
                    "age" => $name->edad,
                    "book" => $book->titulo,
                ];
            }
        }

        return response()->json($authors);
    }

    /**
     * @return \Illuminate\Http\JsonResponse
     * Students
     */
    public function students() {
        $modelstudent = EstudianteModel::get();
        $students = [];

        foreach ($modelstudent as $student) {
            $students[] = [
                "id" => $student->id,
                "ci" => $student->ci,
                "name" => $student->nombre. ' ' .$student->apellido,
                "address" => $student->direccion,
                "school" => $student->carrera,
                "age" => $student->edad,
            ];
        }

        return response()->json($students);
    }

}
