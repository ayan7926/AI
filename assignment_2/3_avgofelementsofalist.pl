avg( List, Avg ):- 
    sum( List, Sum ),
    length1( List, Length), 
    Avg is Sum / Length.
