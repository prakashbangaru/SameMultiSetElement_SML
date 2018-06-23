local

fun length(ls) = if null(ls) then 0 else 1+length(tl(ls))

fun   getElementCount(s, [], count:int) = count 
     |  getElementCount(s, a::ls, count:int) = if s = a then getElementCount(s, ls, count+1) else getElementCount(s,ls, count)



fun memberPairElmCheck(x,[]) = false
 |  memberPairElmCheck(x,(a,b)::y) = if x=a then true else memberPairElmCheck(x,y)


fun memberPairElmCountCheck((m,n),[]) = false
 |   memberPairElmCountCheck((m,n),(a,b)::y) = if m=a then if n=b then true else false
                      else memberPairElmCountCheck((m,n),y)

fun subset([],y) = true
   |   subset(a::x,y) = if memberPairElmCountCheck(a,y) then subset(x,y) else false


fun getElementPairCount([],ElmPairList) = ElmPairList
   | getElementPairCount(a::ls,ElmPairList) = if memberPairElmCheck(a,ElmPairList) then getElementPairCount(ls,ElmPairList)
                                              else getElementPairCount(ls,ElmPairList@[(a,getElementCount(a,ls,1))])  

in

fun   mequal([],[]) = true
    | mequal([],y) = false
    | mequal(x,[]) = false 
    | mequal(x,y) =   if length(x)=length(y) 
                            then subset(getElementPairCount(x,[]),getElementPairCount(y,[])) andalso subset(getElementPairCount(y,[]),getElementPairCount(x,[]))
                            else false
end;

