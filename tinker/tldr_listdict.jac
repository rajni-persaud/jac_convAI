walker init {
    // d = {'four':4, 'five':5};
    // b = d.dict::copy;  # equal to b=d.d::copy;
    // b['four'] += b['five'];
    // std.out(d.d::keys, d.d::values, d.d::items, b.d::items);
    // for c in d.d::keys : std.out(c);
    // text = "web_custom";
    // ts = text.str::split("_")[1];
    // std.out(ts);

    // b_vals = b.d::values;
    // b_vals.list::append(6.5);  # equal to b=d.d::copy;
    // std.out(b_vals);
    // b_vals.l::sort; std.out(b_vals);
    // b_vals.l::reverse; std.out(b_vals);

    // n = ["main", "website", "one_pager", "meeting", "text", "meeting"];
    // n.list::remove("meeting");
    // std.out(n);

    // intents_list = ["website", "mobile app", "information systems", "one page", "5-page", "game", "social"];
    // node_name_list = ["website", "mobile_app", "info_system", "one_pager", "five_pager", "gaming", "social"];

    // std.out(intents_list.list::index("game"));
    // std.out(node_name_list[5]);

    // num = [3 , 4, 2, 1, 5];
    // for i=0 to i < 3 by i += 1{
    //     num_sorted = num.l::copy;
    //     num_sorted.l::sort;
    //     num_sorted.l::reverse; 
    // }
    //     std.out(num);
    //     std.out(num_sorted);
     // num.l::sort; std.out(num);

     text = "I wanna build a mobile app like facebook";
     a = text.str::split;
     std.out(a);
    //  for i=0 to i < (a).length by i += 3{
    //      std.out(a[i]);
    //  }

    mini_text = [];
    mini = "";
    num = 1;
    for i in a {
        mini = mini + " " + i;
        // std.out("i", i);
        // std.out("mini", mini);
        // std.out("num", num);

        num = num + 1;

        if num == 3{
            mini_text.list::append(mini);
            num = 1;
            mini = "";
        }
    }
    std.out(mini_text);
}
