node person {
    has name;
    has birthday;
    can date.quantize_to_year;
    can output with activity{
        //has param;
        std.out("rajni");
    }
}

walker init {
    std.out("test");
    // can output with activity{
    //     std.out("rajni");
    // }
    root {
        person1 = spawn here -->
            node::person(name="Josh", birthday="1995-05-20");
        take -->;
    }
    person {
        here::output;
        birthyear = date.quantize_to_year(here.birthday);
        std.out(birthyear);
    }
}