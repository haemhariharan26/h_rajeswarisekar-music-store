<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Album;

class AlbumController extends Controller {
    /**
     * Create a new controller instance.
     * 'title','artist_id','album_date','album_image' artist_name   album structure
     * 'name', 'email','age','gender   artist structure
     *
     * @return void
     */
    public function getAll() {
        $album = Album::select('artist','albums.artist_id','=','artist.id')
        ->select('albums.id','title','album_date','album_image','album_type','artist_name')
        ->orderBy('album_date','desc')
        ->get();
        return response()->json($album);
    }

    public function getOne($id) {
        $album = Album::join('artist','albums.artist_id','=','artist.id')
        ->where('albums.id','=',$id)
        ->get();
        return response()->json($album);
    }

    // public function save(Request $request) {
    //     $this->validate($request, [
    //         'title' => 'required',
    //         'author_id' => 'required',
    //         'published_date' => 'required|date',
    //         'book_image' => 'required',
    //     ]);
    //     $book = Album::create($request->all());
    //     return response()->json($book, 201);
    // }

    // public function update(Request $request, $id) {
    //     $this->validate($request, [
    //         'title' => 'required',
    //         'author_id' => 'required',
    //         'published_date' => 'required|date',
    //         'book_image' => 'required',
    //     ]);
    //     $book = update($request->all());
    //     return response()->json($book, 201);
    // }

    // public function delete($id) {
    //     $book = Album::findOrFail($id);
    //     $book->delete();
    //     return response()->json(null, 204);
    // }
}
