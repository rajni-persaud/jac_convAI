node apple{
    has a, b="goodbye";
}

edge banana{
    has c="hello";
}

walker init{
    root{
        spawn here --> node::apple;
        take -->;
    }

    apple{
        std.out(here.b);
    }
}