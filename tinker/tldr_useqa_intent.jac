walker init {
    can use.enc_question, use.enc_answer;

    main_intents = [
        'greeting', 
        'website',
        'mobile app',
        'info system',
        'back',
        'goodbye',
        'I dont understand'
    ];

    basic_intents = [
        'yes',
        'yeah',
        'of course',
        'absolutely',
        "I'd like that",
        'negative',
        'no',
        'not',
        'back'
    ];
    
    while(true) {
        std.out("Ask a question..");

        question = std.input("> ");

        q_enc = use.enc_question(question);
        a_enc = use.enc_answer(basic_intents); # can take lists or single strings

        a_scores=[];

        max_score = 0;

        for i in a_enc:
            a_scores.l::append(vector.cosine_sim(q_enc, i));

        for i in a_scores {
            if i > max_score: 
                max_score = i;
        }

        max_index = a_scores.list::index(max_score);

        std.out(basic_intents[max_index]);
    }

    // report [a_scores, max_score, max_index];
}