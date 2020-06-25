<?php

namespace App\Http\Controllers;

use App\Http\Requests\PostRequest;
use App\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Validator;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {

        $this->middleware('auth')->except('index', 'show', 'myform', 'myformPost');
    }

    public function index(Request $request)
    {
        if($request->search)
        {
            $posts = Post::join('users', 'author_id', '=', 'users.id')
                ->where('title', 'like', '%'.$request->search.'%')
                ->orWhere('description', 'like', '%'.$request->search.'%')
                ->orWhere('name', 'like', '%'.$request->search.'%')
                ->orderBy('posts.created_at', 'desc')
                ->get();

        return view('posts.index', compact('posts'));
        }
        $posts = Post::join('users', 'author_id', '=', 'users.id')
            ->orderBy('posts.created_at', 'desc')
            ->paginate(4);
        return view('posts.index', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PostRequest $request)
    {
        $post = new Post();
        $post->title = $request->title;
        $post->author_id = \Auth::user()->id;
        $post->description = $request->description;
        $post->short_title = Str::length($request->description) > 30 ? Str::substr($request->description, 0, 27) .'...':$request->description;

        if (!empty($request->file('img')))
        {
            $path = \Storage::putFile('public', $request->file('img'));
            $url = \Storage::url($path);
            $post->img = $url;
        }
        else
        {
            //$post->img = 'img/default.jpg';
            $post->img = null;
        }
        $post->save();
        return redirect()->route('post.index')->with('success', 'Пост успешно создан!');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //$post = Post::find($id);
        //var_dump($post);
        $post = Post::join('users', 'author_id', '=', 'users.id')
            ->find($id);
        //dd($post);
        if(is_null($post))
        {
            return redirect()->route('post.index')->withErrors('Пост еще не создан, либо удален');
        }


        //var_dump($post);
        return view('posts.show', ['post' => $post]);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Post::findOrFail($id);
//        $this->filterPost($post);
        if ($post->author_id != \Auth::user()->id) {
            //return redirect()->home();
            return redirect()->route('post.index')->withErrors('Вы не можете редактировать данный пост');
        }
        return view('posts.edit', ['post'=>$post]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(PostRequest $request, $id)
    {
        $post = Post::findOrFail($id);
        if ($post->author_id != \Auth::user()->id) {
            //return redirect()->home();
            return redirect()->route('post.index')->withErrors('Вы не можете редактировать данный пост');
        }
        $post->title = $request->title;
        $post->author_id = rand(1, 4);
        $post->description = $request->description;
        $post->short_title = Str::length($request->description) > 30 ? Str::substr($request->description, 0, 27) .'...':$request->description;

        if (!empty($request->file('img')))
        {
            $path = \Storage::putFile('public', $request->file('img'));
            $url = \Storage::url($path);
            $post->img = $url;
        }
        else
        {
            //$post->img = 'img/default.jpg';
            $post->img = null;
        }
        $post->update();
        $id = $post->post_id;
        return redirect()->route('post.show', ['id'=>$id])->with('success', 'Пост успешно отредактирован!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::findOrFail($id);
        if ($post->author_id != \Auth::user()->id) {
            //return redirect()->home();
            return redirect()->route('post.index')->withErrors('Вы не можете удалить данный пост');
        }
        $post->delete();
        return redirect()->route('post.index')->with('success', 'Пост успешно удален!');
    }


    /**
     * Display a listing of the myform.
     *
     * @return \Illuminate\Http\Response
     */
    public function myform()
    {
        return view('myform');
    }


    /**
     * Display a listing of the myformPost.
     *
     * @return \Illuminate\Http\Response
     */
    public function myformPost(Request $request)
    {


        $validator = Validator::make($request->all(), [
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required|email',
            'address' => 'required',
        ]);


        if ($validator->passes()) {


            return response()->json(['success'=>'Added new records.']);
        }


        return response()->json(['error'=>$validator->errors()->all()]);
    }

}
