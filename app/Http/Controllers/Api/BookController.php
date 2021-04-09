<?php
 
namespace App\Http\Controllers\Api;
 
use App\Http\Controllers\Controller;
 
use Illuminate\Http\Request;
 
use App\Models\Book;
use Validator;
class BookController extends Controller
{

		  public function index($id='')
			{
					if(!empty($id)){
					 $bookList = Book::listing('obj',['*'],"id=$id",'id-desc');
					}else{
					 $bookList = Book::listing('obj',['*'],"",'id-desc');
					}
					
					
					return response()->json([
					"success" => true,
					"message" => "Book list get successfully.",
					"data" => $bookList
					]);
			}
  
   
    public function store(Request $request)
    {
			$input = $request->all();
			$validator = Validator::make($input, [
			'author' => 'required',
			'title' => 'required',
			'isbn' => 'required',
			'release_date' => 'date_format:Y-m-d'
			]);
			
			if($validator->fails()){
					return response()->json([
					"success" => false,
					"message" => "Book Not Added successfully.",
					"error" => $validator->errors()
					]);
			       
			}
			
			$book = Book::create($input);
			return response()->json([
			"success" => true,
			"message" => "Book created successfully.",
			"data" => $book
			]);
    }
	
	public function update(Request $request)
    {
			$input = $request->all();
			$validator = Validator::make($input, [
			'book_id' => 'required',
			'author' => 'required',
			'title' => 'required',
			'isbn' => 'required',
			'release_date' => 'date_format:Y-m-d'
			]);
			
			if($validator->fails()){
					return response()->json([
					"success" => false,
					"message" => "Book Not Updated successfully.",
					"error" => $validator->errors()
					]);
			       
			}
			
			$book =  Book::find($request->book_id);
			$book->author=$request->author;
			$book->title=$request->title;
			$book->isbn=$request->isbn;
			$book->release_date=$request->release_date;
			$book->save();
			
			return response()->json([
			"success" => true,
			"message" => "Book updated successfully.",
			"data" => $book
			]);
    }
	
	public function destroy(Request $request)
    {
			$input = $request->all();
			$validator = Validator::make($input, [
			'book_id' => 'required',
			]);
			
			if($validator->fails()){
					return response()->json([
					"success" => false,
					"message" => "Book Not Deleted successfully.",
					"error" => $validator->errors()
					]);
			       
			}
			
			Book::destroy($request->book_id);
			
			return response()->json([
			"success" => true,
			"message" => "Book deleted successfully.",
			"data" => []
			]);
    }
  
    
}