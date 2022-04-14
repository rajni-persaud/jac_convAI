import {*} with './assets.jac';
walker init{
    root{
        spawn here --> node::apple;
        take -->;
    }

    apple{
        std.out(here.b);
    }
}