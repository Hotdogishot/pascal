{
+---------------+
|  Oussema Amri |
+---------------+
|      3SI      |
+---------------+
}
Uses Wincrt;
Type
  mat = Array[1..5,1..7] Of Integer;
  tab = Array[1..35] Of Integer;
Var
  m : mat;
  p,d,a,l,c,i,j,s: Integer;
  Par,Def,abon: tab ;
Function digisible(x:Integer): Boolean;
Var
  ok,ok1,ok2,ok3: Boolean;
  temp_string,ch: String;
  tmp,e: Integer;
Begin
  ok := False;
  ok1 := True;
  ok2 := True;
  ok3 := False;
  temp_string := '';
	str(x,ch);
  For i := 1 To Length(ch) Do
    Begin
		Val(ch[i],tmp,e);
      If (tmp = 0) Then
        ok1 := False;

    If (x Mod tmp <> 0) Then
       Ok2 := False;
    End;

  For i := 1 To Length(ch) Do
    Begin
      If ( Pos(ch[i],temp_string) = 0 ) Then
        temp_string := temp_string + ch[i];
      If ( temp_string = ch) Then
        ok3 := True;
    End;

 If (Ok3 = True) Then
  ok := True;
  digisible := ok;
End;
Function check(x:Integer): Integer;
Begin
  s := 0;
  For i := 1 To ( x Div 2 ) Do
    If (x Mod i = 0) Then
      s := s + i;
  check := S;
End;
Procedure Remplir(Var l,c:Integer;Var m:mat);
Begin
  Repeat
    Writeln('Tapez L: ');
    Readln(l);
  Until L In [1..5];
  Repeat
    Writeln('Tapez C: ');
    Readln(C);
  Until C In [1..7];
  For i := 1 To l Do
    For j := 1 To c Do
      Repeat
        Writeln('Tapez M[',i,',',j,']');
        Readln(m[i,j]);
      Until (digisible(m[i,j]) = True);
End;
Procedure Remplir_tab(Var p,d,a:Integer; Var Par,Def,abon:tab;l,c:Integer; m:mat);
Var
  tmp : Integer;
Begin
  For i := 1 To L Do
    For j := 1 To C Do
      Begin
        tmp := M[i,j];
        If (check(tmp) = tmp ) Then
          Begin
            p := p + 1;
            Par[p] := tmp;
          End
        Else If (check(tmp) > tmp) Then
               Begin
                 d := d + 1 ;
                 Def[d] := tmp;
               End
        Else If (check(tmp) < tmp) Then
               Begin
                 a := a + 1;
                 abon[a] := tmp;
               End;
      End ;
End;
Procedure Affiche(T:tab;x:Integer);
Begin
  For i:= 1 To X Do
    Write(T[i],'|');
End;
Begin
  Remplir(l,c,m);
  Remplir_tab(p,d,a,Par,Def,abon,l,c,m);
  Affiche(Par,p);
  Affiche(Def,d);
  Affiche(Abon,a);
End.
