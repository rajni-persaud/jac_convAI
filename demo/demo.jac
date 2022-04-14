import {*} with './assets.jac'; // import all*
// import {node::apple, edge::banana} with './assets.jac';
walker init{
    root{
        spawn here --> node::apple;
        take -->;
    }

    apple{
        std.out(here.b);
    }
}