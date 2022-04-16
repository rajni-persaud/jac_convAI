walker init {
    a=5;
    b=5.0;
    c=true;
    d='5';
    e=[a, b, c, d, 5];
    f={'num': 5};

    summary = {'int': a, 'float': b, 'bool': c, 
               'string': d, 'list': e, 'dict': f};
    
    std.out(summary);

    list_a = [1];
    list_b = [2];
    list_c = [];
    list_d = [];
    list_c.list::append(list_a);
    list_c.list::append(list_b);

    for i in list_a: list_d.list::append(i);
    for i in list_b: list_d.list::append(i);

    std.out('list_a', list_a);
    std.out('list_b', list_b);
    std.out('list_c', list_c);
    std.out('list_d', list_d);

}