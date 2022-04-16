walker init {
    can use.enc_question, use.enc_answer;

    answers = [
        'I am 20 years old', 
        'My dog is hungry', 
        'My TV is broken',
        'Eldon is a good teacher',
        'Jason is only ok at teaching'
    ];
    
    while(true) {
        std.out("Ask a question..");

        // question = "If I wanted to fix something what should I fix?";
        question = std.input("> ");

        q_enc = use.enc_question(question);
        a_enc = use.enc_answer(answers); # can take lists or single strings

        a_scores=[];

        max_score = 0;

        for i in a_enc:
            a_scores.l::append(vector.cosine_sim(q_enc, i));

        for i in a_scores {
            if i > max_score: 
                max_score = i;
        }

        max_index = a_scores.list::index(max_score);

        std.out(answers[max_index]);
    }

    // report [a_scores, max_score, max_index];
}