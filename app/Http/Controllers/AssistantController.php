<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TrxChat;

class AssistantController extends Controller
{
    public function answerQuestion(Request $request)
    {
        $validated = $request->validate([
            'question' => 'required|string',
        ]);

        $whereValue = $validated['question'];

        $whereField = 'question';
        $result = TrxChat::where($whereField,'LIKE','%'.strtolower($whereValue).'%')->select('answer')->first();
        return response()->json(['answer' => $result ? $result['answer'] : 'I am sorry, I do not understand the question.']);
    }
}
