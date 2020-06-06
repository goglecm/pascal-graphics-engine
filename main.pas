program main;

uses
  wincrt,
  graph;

const
  cl = 2;
var
  a: array[1..1000, 1..1000, 1..1000] of byte;
  f: Text;
  ch: char;
  c: array[1..1000, 1..1000] of byte;
  x, y, z, i, n, j, k, h1, h2, h3, m1, m2, m3, r, u, c1, c2, c3, q1, q2, q3, k1, k2, k3, g1, g2, g3, t1, t2, t3, r1, r2, r3, e1, e2, e3, w1, w2, w3: integer;

procedure puncte(ch: char);
begin
  if ch = #77 then
    if (e1 > x) and (e2 <= y) then
      if a[e1, e2 + 1, e3] <> 0 then
        e2 := e2 + 1
      else
      if a[e1 + 1, e2, e3] <> 0 then
        e1 := e1 + 1
      else
      begin
        e1 := e1 + 1;
        while a[e1, e2, e3] = 0 do
          Inc(e2);
      end
    else
    if (e1 >= x) and (e2 > y) then
      if a[e1, e2 + 1, e3] <> 0 then
        e2 := e2 + 1
      else
      if a[e1 - 1, e2, e3] <> 0 then
        e1 := e1 - 1
      else
      begin
        e2 := e2 + 1;
        while a[e1, e2, e3] = 0 do
          Dec(e1);
      end
    else
    if (e1 <= x) and (e2 > y) then
      if a[e1 - 1, e2, e3] <> 0 then
        e1 := e1 - 1
      else
      if a[e1, e2 - 1, e3] <> 0 then
        e2 := e2 - 1
      else
      begin
        e1 := e1 - 1;
        while a[e1, e2, e3] = 0 do
          Dec(e2);
      end
    else
    if a[e1, e2 - 1, e3] <> 0 then
      e2 := e2 - 1
    else
    if a[e1 + 1, e2, e3] <> 0 then
      e1 := e1 + 1
    else
    begin
      e2 := e2 - 1;
      while a[e1, e2, e3] = 0 do
        Inc(e1);
    end
  else

  if ch = #75 then
    if (e1 >= x) and (e2 < y) then
      if a[e1 - 1, e2, e3] <> 0 then
        e1 := e1 - 1
      else
      if a[e1, e2 - 1, e3] <> 0 then
        e2 := e2 - 1
      else
      begin
        e2 := e2 - 1;
        while a[e1, e2, e3] = 0 do
          Dec(e1);
      end
    else
    if (e1 < x) and (e2 <= y) then
      if a[e1, e2 + 1, e3] <> 0 then
        e2 := e2 + 1
      else
      if a[e1 - 1, e2, e3] <> 0 then
        e1 := e1 - 1
      else
      begin
        e1 := e1 - 1;
        while a[e1, e2, e3] = 0 do
          Inc(e2);
      end
    else
    if (e1 < x) and (e2 >= y) then
      if a[e1 + 1, e2, e3] <> 0 then
        e1 := e1 + 1
      else
      if a[e1, e2 + 1, e3] <> 0 then
        e2 := e2 + 1
      else
      begin
        e2 := e2 + 1;
        while a[e1, e2, e3] = 0 do
          Inc(e1);
      end
    else
    if a[e1, e2 - 1, e3] <> 0 then
      e2 := e2 - 1
    else
    if a[e1 + 1, e2, e3] <> 0 then
      e1 := e1 + 1
    else
    begin
      e1 := e1 + 1;
      while a[e1, e2, e3] = 0 do
        Dec(e2);
    end
  else
  if ch = #72 then
    if (e3 > x) and (e2 <= y) then
      if a[e3, e2 + 1, e1] <> 0 then
        e2 := e2 + 1
      else
      if a[e3 + 1, e2, e1] <> 0 then
        e3 := e3 + 1
      else
      begin
        e3 := e3 + 1;
        while a[e3, e2, e1] = 0 do
          Inc(e2);
      end
    else
    if (e3 >= x) and (e2 > y) then
      if a[e3, e2 + 1, e1] <> 0 then
        e2 := e2 + 1
      else
      if a[e3 - 1, e2, e1] <> 0 then
        e3 := e3 - 1
      else
      begin
        e2 := e2 + 1;
        while a[e3, e2, e1] = 0 do
          Dec(e3);
      end
    else
    if (e3 <= x) and (e2 > y) then
      if a[e3 - 1, e2, e1] <> 0 then
        e3 := e3 - 1
      else
      if a[e3, e2 - 1, e1] <> 0 then
        e2 := e2 - 1
      else
      begin
        e3 := e3 - 1;
        while a[e3, e2, e1] = 0 do
          Dec(e2);
      end
    else
    if a[e3, e2 - 1, e1] <> 0 then
      e2 := e2 - 1
    else
    if a[e3 + 1, e2, e1] <> 0 then
      e3 := e3 + 1
    else
    begin
      e2 := e2 - 1;
      while a[e3, e2, e1] = 0 do
        Inc(e3);
    end
  else
  if ch = #80 then
    if (e3 >= x) and (e2 < y) then
      if a[e3 - 1, e2, e1] <> 0 then
        e3 := e3 - 1
      else
      if a[e3, e2 - 1, e1] <> 0 then
        e2 := e2 - 1
      else
      begin
        e2 := e2 - 1;
        while a[e3, e2, e1] = 0 do
          Dec(e3);
      end
    else
    if (e3 < x) and (e2 <= y) then
      if a[e3, e2 + 1, e1] <> 0 then
        e2 := e2 + 1
      else
      if a[e3 - 1, e2, e1] <> 0 then
        e3 := e3 - 1
      else
      begin
        e3 := e3 - 1;
        while a[e3, e2, e1] = 0 do
          Inc(e2);
      end
    else
    if (e3 < x) and (e2 >= y) then
      if a[e3 + 1, e2, e1] <> 0 then
        e3 := e3 + 1
      else
      if a[e3, e2 + 1, e1] <> 0 then
        e2 := e2 + 1
      else
      begin
        e2 := e2 + 1;
        while a[e3, e2, e1] = 0 do
          Inc(e3);
      end
    else
    if a[e3, e2 - 1, e1] <> 0 then
      e2 := e2 - 1
    else
    if a[e3 + 1, e2, e1] <> 0 then
      e3 := e3 + 1
    else
    begin
      e3 := e3 + 1;
      while a[e3, e2, e1] = 0 do
        Dec(e2);
    end;
end;

procedure punctw(ch: char);
begin
  if ch = #77 then
    if (w1 > x) and (w2 <= y) then
      if a[w1, w2 + 1, w3] <> 0 then
        w2 := w2 + 1
      else
      if a[w1 + 1, w2, w3] <> 0 then
        w1 := w1 + 1
      else
      begin
        w1 := w1 + 1;
        while a[w1, w2, w3] = 0 do
          Inc(w2);
      end
    else
    if (w1 >= x) and (w2 > y) then
      if a[w1, w2 + 1, w3] <> 0 then
        w2 := w2 + 1
      else
      if a[w1 - 1, w2, w3] <> 0 then
        w1 := w1 - 1
      else
      begin
        w2 := w2 + 1;
        while a[w1, w2, w3] = 0 do
          Dec(w1);
      end
    else
    if (w1 <= x) and (w2 > y) then
      if a[w1 - 1, w2, w3] <> 0 then
        w1 := w1 - 1
      else
      if a[w1, w2 - 1, w3] <> 0 then
        w2 := w2 - 1
      else
      begin
        w1 := w1 - 1;
        while a[w1, w2, w3] = 0 do
          Dec(w2);
      end
    else
    if a[w1, w2 - 1, w3] <> 0 then
      w2 := w2 - 1
    else
    if a[w1 + 1, w2, w3] <> 0 then
      w1 := w1 + 1
    else
    begin
      w2 := w2 - 1;
      while a[w1, w2, w3] = 0 do
        Inc(w1);
    end
  else

  if ch = #75 then
    if (w1 >= x) and (w2 < y) then
      if a[w1 - 1, w2, w3] <> 0 then
        w1 := w1 - 1
      else
      if a[w1, w2 - 1, w3] <> 0 then
        w2 := w2 - 1
      else
      begin
        w2 := w2 - 1;
        while a[w1, w2, w3] = 0 do
          Dec(w1);
      end
    else
    if (w1 < x) and (w2 <= y) then
      if a[w1, w2 + 1, w3] <> 0 then
        w2 := w2 + 1
      else
      if a[w1 - 1, w2, w3] <> 0 then
        w1 := w1 - 1
      else
      begin
        w1 := w1 - 1;
        while a[w1, w2, w3] = 0 do
          Inc(w2);
      end
    else
    if (w1 < x) and (w2 >= y) then
      if a[w1 + 1, w2, w3] <> 0 then
        w1 := w1 + 1
      else
      if a[w1, w2 + 1, w3] <> 0 then
        w2 := w2 + 1
      else
      begin
        w2 := w2 + 1;
        while a[w1, w2, w3] = 0 do
          Inc(w1);
      end
    else
    if a[w1, w2 - 1, w3] <> 0 then
      w2 := w2 - 1
    else
    if a[w1 + 1, w2, w3] <> 0 then
      w1 := w1 + 1
    else
    begin
      w1 := w1 + 1;
      while a[w1, w2, w3] = 0 do
        Dec(w2);
    end
  else
  if ch = #72 then
    if (w3 > x) and (w2 <= y) then
      if a[w3, w2 + 1, w1] <> 0 then
        w2 := w2 + 1
      else
      if a[w3 + 1, w2, w1] <> 0 then
        w3 := w3 + 1
      else
      begin
        w3 := w3 + 1;
        while a[w3, w2, w1] = 0 do
          Inc(w2);
      end
    else
    if (w3 >= x) and (w2 > y) then
      if a[w3, w2 + 1, w1] <> 0 then
        w2 := w2 + 1
      else
      if a[w3 - 1, w2, w1] <> 0 then
        w3 := w3 - 1
      else
      begin
        w2 := w2 + 1;
        while a[w3, w2, w1] = 0 do
          Dec(w3);
      end
    else
    if (w3 <= x) and (w2 > y) then
      if a[w3 - 1, w2, w1] <> 0 then
        w3 := w3 - 1
      else
      if a[w3, w2 - 1, w1] <> 0 then
        w2 := w2 - 1
      else
      begin
        w3 := w3 - 1;
        while a[w3, w2, w1] = 0 do
          Dec(w2);
      end
    else
    if a[w3, w2 - 1, w1] <> 0 then
      w2 := w2 - 1
    else
    if a[w3 + 1, w2, w1] <> 0 then
      w3 := w3 + 1
    else
    begin
      w2 := w2 - 1;
      while a[w3, w2, w1] = 0 do
        Inc(w3);
    end
  else
  if ch = #80 then
    if (w3 >= x) and (w2 < y) then
      if a[w3 - 1, w2, w1] <> 0 then
        w3 := w3 - 1
      else
      if a[w3, w2 - 1, w1] <> 0 then
        w2 := w2 - 1
      else
      begin
        w2 := w2 - 1;
        while a[w3, w2, w1] = 0 do
          Dec(w3);
      end
    else
    if (w3 < x) and (w2 <= y) then
      if a[w3, w2 + 1, w1] <> 0 then
        w2 := w2 + 1
      else
      if a[w3 - 1, w2, w1] <> 0 then
        w3 := w3 - 1
      else
      begin
        w3 := w3 - 1;
        while a[w3, w2, w1] = 0 do
          Inc(w2);
      end
    else
    if (w3 < x) and (w2 >= y) then
      if a[w3 + 1, w2, w1] <> 0 then
        w3 := w3 + 1
      else
      if a[w3, w2 + 1, w1] <> 0 then
        w2 := w2 + 1
      else
      begin
        w2 := w2 + 1;
        while a[w3, w2, w1] = 0 do
          Inc(w3);
      end
    else
    if a[w3, w2 - 1, w1] <> 0 then
      w2 := w2 - 1
    else
    if a[w3 + 1, w2, w1] <> 0 then
      w3 := w3 + 1
    else
    begin
      w3 := w3 + 1;
      while a[w3, w2, w1] = 0 do
        Dec(w2);
    end;
end;

procedure punctr(ch: char);
begin
  if ch = #77 then
    if (r1 > x) and (r2 <= y) then
      if a[r1, r2 + 1, r3] <> 0 then
        r2 := r2 + 1
      else
      if a[r1 + 1, r2, r3] <> 0 then
        r1 := r1 + 1
      else
      begin
        r1 := r1 + 1;
        while a[r1, r2, r3] = 0 do
          Inc(r2);
      end
    else
    if (r1 >= x) and (r2 > y) then
      if a[r1, r2 + 1, r3] <> 0 then
        r2 := r2 + 1
      else
      if a[r1 - 1, r2, r3] <> 0 then
        r1 := r1 - 1
      else
      begin
        r2 := r2 + 1;
        while a[r1, r2, r3] = 0 do
          Dec(r1);
      end
    else
    if (r1 <= x) and (r2 > y) then
      if a[r1 - 1, r2, r3] <> 0 then
        r1 := r1 - 1
      else
      if a[r1, r2 - 1, r3] <> 0 then
        r2 := r2 - 1
      else
      begin
        r1 := r1 - 1;
        while a[r1, r2, r3] = 0 do
          Dec(r2);
      end
    else
    if a[r1, r2 - 1, r3] <> 0 then
      r2 := r2 - 1
    else
    if a[r1 + 1, r2, r3] <> 0 then
      r1 := r1 + 1
    else
    begin
      r2 := r2 - 1;
      while a[r1, r2, r3] = 0 do
        Inc(r1);
    end
  else

  if ch = #75 then
    if (r1 >= x) and (r2 < y) then
      if a[r1 - 1, r2, r3] <> 0 then
        r1 := r1 - 1
      else
      if a[r1, r2 - 1, r3] <> 0 then
        r2 := r2 - 1
      else
      begin
        r2 := r2 - 1;
        while a[r1, r2, r3] = 0 do
          Dec(r1);
      end
    else
    if (r1 < x) and (r2 <= y) then
      if a[r1, r2 + 1, r3] <> 0 then
        r2 := r2 + 1
      else
      if a[r1 - 1, r2, r3] <> 0 then
        r1 := r1 - 1
      else
      begin
        r1 := r1 - 1;
        while a[r1, r2, r3] = 0 do
          Inc(r2);
      end
    else
    if (r1 < x) and (r2 >= y) then
      if a[r1 + 1, r2, r3] <> 0 then
        r1 := r1 + 1
      else
      if a[r1, r2 + 1, r3] <> 0 then
        r2 := r2 + 1
      else
      begin
        r2 := r2 + 1;
        while a[r1, r2, r3] = 0 do
          Inc(r1);
      end
    else
    if a[r1, r2 - 1, r3] <> 0 then
      r2 := r2 - 1
    else
    if a[r1 + 1, r2, r3] <> 0 then
      r1 := r1 + 1
    else
    begin
      r1 := r1 + 1;
      while a[r1, r2, r3] = 0 do
        Dec(r2);
    end
  else
  if ch = #72 then
    if (r3 > x) and (r2 <= y) then
      if a[r3, r2 + 1, r1] <> 0 then
        r2 := r2 + 1
      else
      if a[r3 + 1, r2, r1] <> 0 then
        r3 := r3 + 1
      else
      begin
        r3 := r3 + 1;
        while a[r3, r2, r1] = 0 do
          Inc(r2);
      end
    else
    if (r3 >= x) and (r2 > y) then
      if a[r3, r2 + 1, r1] <> 0 then
        r2 := r2 + 1
      else
      if a[r3 - 1, r2, r1] <> 0 then
        r3 := r3 - 1
      else
      begin
        r2 := r2 + 1;
        while a[r3, r2, r1] = 0 do
          Dec(r3);
      end
    else
    if (r3 <= x) and (r2 > y) then
      if a[r3 - 1, r2, r1] <> 0 then
        r3 := r3 - 1
      else
      if a[r3, r2 - 1, r1] <> 0 then
        r2 := r2 - 1
      else
      begin
        r3 := r3 - 1;
        while a[r3, r2, r1] = 0 do
          Dec(r2);
      end
    else
    if a[r3, r2 - 1, r1] <> 0 then
      r2 := r2 - 1
    else
    if a[r3 + 1, r2, r1] <> 0 then
      r3 := r3 + 1
    else
    begin
      r2 := r2 - 1;
      while a[r3, r2, r1] = 0 do
        Inc(r3);
    end
  else
  if ch = #80 then
    if (r3 >= x) and (r2 < y) then
      if a[r3 - 1, r2, r1] <> 0 then
        r3 := r3 - 1
      else
      if a[r3, r2 - 1, r1] <> 0 then
        r2 := r2 - 1
      else
      begin
        r2 := r2 - 1;
        while a[r3, r2, r1] = 0 do
          Dec(r3);
      end
    else
    if (r3 < x) and (r2 <= y) then
      if a[r3, r2 + 1, r1] <> 0 then
        r2 := r2 + 1
      else
      if a[r3 - 1, r2, r1] <> 0 then
        r3 := r3 - 1
      else
      begin
        r3 := r3 - 1;
        while a[r3, r2, r1] = 0 do
          Inc(r2);
      end
    else
    if (r3 < x) and (r2 >= y) then
      if a[r3 + 1, r2, r1] <> 0 then
        r3 := r3 + 1
      else
      if a[r3, r2 + 1, r1] <> 0 then
        r2 := r2 + 1
      else
      begin
        r2 := r2 + 1;
        while a[r3, r2, r1] = 0 do
          Inc(r3);
      end
    else
    if a[r3, r2 - 1, r1] <> 0 then
      r2 := r2 - 1
    else
    if a[r3 + 1, r2, r1] <> 0 then
      r3 := r3 + 1
    else
    begin
      r3 := r3 + 1;
      while a[r3, r2, r1] = 0 do
        Dec(r2);
    end;
end;

procedure punctt(ch: char);
begin
  if ch = #77 then
    if (t1 > x) and (t2 <= y) then
      if a[t1, t2 + 1, t3] <> 0 then
        t2 := t2 + 1
      else
      if a[t1 + 1, t2, t3] <> 0 then
        t1 := t1 + 1
      else
      begin
        t1 := t1 + 1;
        while a[t1, t2, t3] = 0 do
          Inc(t2);
      end
    else
    if (t1 >= x) and (t2 > y) then
      if a[t1, t2 + 1, t3] <> 0 then
        t2 := t2 + 1
      else
      if a[t1 - 1, t2, t3] <> 0 then
        t1 := t1 - 1
      else
      begin
        t2 := t2 + 1;
        while a[t1, t2, t3] = 0 do
          Dec(t1);
      end
    else
    if (t1 <= x) and (t2 > y) then
      if a[t1 - 1, t2, t3] <> 0 then
        t1 := t1 - 1
      else
      if a[t1, t2 - 1, t3] <> 0 then
        t2 := t2 - 1
      else
      begin
        t1 := t1 - 1;
        while a[t1, t2, t3] = 0 do
          Dec(t2);
      end
    else
    if a[t1, t2 - 1, t3] <> 0 then
      t2 := t2 - 1
    else
    if a[t1 + 1, t2, t3] <> 0 then
      t1 := t1 + 1
    else
    begin
      t2 := t2 - 1;
      while a[t1, t2, t3] = 0 do
        Inc(t1);
    end
  else

  if ch = #75 then
    if (t1 >= x) and (t2 < y) then
      if a[t1 - 1, t2, t3] <> 0 then
        t1 := t1 - 1
      else
      if a[t1, t2 - 1, t3] <> 0 then
        t2 := t2 - 1
      else
      begin
        t2 := t2 - 1;
        while a[t1, t2, t3] = 0 do
          Dec(t1);
      end
    else
    if (t1 < x) and (t2 <= y) then
      if a[t1, t2 + 1, t3] <> 0 then
        t2 := t2 + 1
      else
      if a[t1 - 1, t2, t3] <> 0 then
        t1 := t1 - 1
      else
      begin
        t1 := t1 - 1;
        while a[t1, t2, t3] = 0 do
          Inc(t2);
      end
    else
    if (t1 < x) and (t2 >= y) then
      if a[t1 + 1, t2, t3] <> 0 then
        t1 := t1 + 1
      else
      if a[t1, t2 + 1, t3] <> 0 then
        t2 := t2 + 1
      else
      begin
        t2 := t2 + 1;
        while a[t1, t2, t3] = 0 do
          Inc(t1);
      end
    else
    if a[t1, t2 - 1, t3] <> 0 then
      t2 := t2 - 1
    else
    if a[t1 + 1, t2, t3] <> 0 then
      t1 := t1 + 1
    else
    begin
      t1 := t1 + 1;
      while a[t1, t2, t3] = 0 do
        Dec(t2);
    end
  else
  if ch = #72 then
    if (t3 > x) and (t2 <= y) then
      if a[t3, t2 + 1, t1] <> 0 then
        t2 := t2 + 1
      else
      if a[t3 + 1, t2, t1] <> 0 then
        t3 := t3 + 1
      else
      begin
        t3 := t3 + 1;
        while a[t3, t2, t1] = 0 do
          Inc(t2);
      end
    else
    if (t3 >= x) and (t2 > y) then
      if a[t3, t2 + 1, t1] <> 0 then
        t2 := t2 + 1
      else
      if a[t3 - 1, t2, t1] <> 0 then
        t3 := t3 - 1
      else
      begin
        t2 := t2 + 1;
        while a[t3, t2, t1] = 0 do
          Dec(t3);
      end
    else
    if (t3 <= x) and (t2 > y) then
      if a[t3 - 1, t2, t1] <> 0 then
        t3 := t3 - 1
      else
      if a[t3, t2 - 1, t1] <> 0 then
        t2 := t2 - 1
      else
      begin
        t3 := t3 - 1;
        while a[t3, t2, t1] = 0 do
          Dec(t2);
      end
    else
    if a[t3, t2 - 1, t1] <> 0 then
      t2 := t2 - 1
    else
    if a[t3 + 1, t2, t1] <> 0 then
      t3 := t3 + 1
    else
    begin
      t2 := t2 - 1;
      while a[t3, t2, t1] = 0 do
        Inc(t3);
    end
  else
  if ch = #80 then
    if (t3 >= x) and (t2 < y) then
      if a[t3 - 1, t2, t1] <> 0 then
        t3 := t3 - 1
      else
      if a[t3, t2 - 1, t1] <> 0 then
        t2 := t2 - 1
      else
      begin
        t2 := t2 - 1;
        while a[t3, t2, t1] = 0 do
          Dec(t3);
      end
    else
    if (t3 < x) and (t2 <= y) then
      if a[t3, t2 + 1, t1] <> 0 then
        t2 := t2 + 1
      else
      if a[t3 - 1, t2, t1] <> 0 then
        t3 := t3 - 1
      else
      begin
        t3 := t3 - 1;
        while a[t3, t2, t1] = 0 do
          Inc(t2);
      end
    else
    if (t3 < x) and (t2 >= y) then
      if a[t3 + 1, t2, t1] <> 0 then
        t3 := t3 + 1
      else
      if a[t3, t2 + 1, t1] <> 0 then
        t2 := t2 + 1
      else
      begin
        t2 := t2 + 1;
        while a[t3, t2, t1] = 0 do
          Inc(t3);
      end
    else
    if a[t3, t2 - 1, t1] <> 0 then
      t2 := t2 - 1
    else
    if a[t3 + 1, t2, t1] <> 0 then
      t3 := t3 + 1
    else
    begin
      t3 := t3 + 1;
      while a[t3, t2, t1] = 0 do
        Dec(t2);
    end;
end;

procedure punctc(ch: char);
begin
  if ch = #77 then
    if (c1 > x) and (c2 <= y) then
      if a[c1, c2 + 1, c3] <> 0 then
        c2 := c2 + 1
      else
      if a[c1 + 1, c2, c3] <> 0 then
        c1 := c1 + 1
      else
      begin
        c1 := c1 + 1;
        while a[c1, c2, c3] = 0 do
          Inc(c2);
      end
    else
    if (c1 >= x) and (c2 > y) then
      if a[c1, c2 + 1, c3] <> 0 then
        c2 := c2 + 1
      else
      if a[c1 - 1, c2, c3] <> 0 then
        c1 := c1 - 1
      else
      begin
        c2 := c2 + 1;
        while a[c1, c2, c3] = 0 do
          Dec(c1);
      end
    else
    if (c1 <= x) and (c2 > y) then
      if a[c1 - 1, c2, c3] <> 0 then
        c1 := c1 - 1
      else
      if a[c1, c2 - 1, c3] <> 0 then
        c2 := c2 - 1
      else
      begin
        c1 := c1 - 1;
        while a[c1, c2, c3] = 0 do
          Dec(c2);
      end
    else
    if a[c1, c2 - 1, c3] <> 0 then
      c2 := c2 - 1
    else
    if a[c1 + 1, c2, c3] <> 0 then
      c1 := c1 + 1
    else
    begin
      c2 := c2 - 1;
      while a[c1, c2, c3] = 0 do
        Inc(c1);
    end
  else

  if ch = #75 then
    if (c1 >= x) and (c2 < y) then
      if a[c1 - 1, c2, c3] <> 0 then
        c1 := c1 - 1
      else
      if a[c1, c2 - 1, c3] <> 0 then
        c2 := c2 - 1
      else
      begin
        c2 := c2 - 1;
        while a[c1, c2, c3] = 0 do
          Dec(c1);
      end
    else
    if (c1 < x) and (c2 <= y) then
      if a[c1, c2 + 1, c3] <> 0 then
        c2 := c2 + 1
      else
      if a[c1 - 1, c2, c3] <> 0 then
        c1 := c1 - 1
      else
      begin
        c1 := c1 - 1;
        while a[c1, c2, c3] = 0 do
          Inc(c2);
      end
    else
    if (c1 < x) and (c2 >= y) then
      if a[c1 + 1, c2, c3] <> 0 then
        c1 := c1 + 1
      else
      if a[c1, c2 + 1, c3] <> 0 then
        c2 := c2 + 1
      else
      begin
        c2 := c2 + 1;
        while a[c1, c2, c3] = 0 do
          Inc(c1);
      end
    else
    if a[c1, c2 - 1, c3] <> 0 then
      c2 := c2 - 1
    else
    if a[c1 + 1, c2, c3] <> 0 then
      c1 := c1 + 1
    else
    begin
      c1 := c1 + 1;
      while a[c1, c2, c3] = 0 do
        Dec(c2);
    end
  else
  if ch = #72 then
    if (c3 > x) and (c2 <= y) then
      if a[c3, c2 + 1, c1] <> 0 then
        c2 := c2 + 1
      else
      if a[c3 + 1, c2, c1] <> 0 then
        c3 := c3 + 1
      else
      begin
        c3 := c3 + 1;
        while a[c3, c2, c1] = 0 do
          Inc(c2);
      end
    else
    if (c3 >= x) and (c2 > y) then
      if a[c3, c2 + 1, c1] <> 0 then
        c2 := c2 + 1
      else
      if a[c3 - 1, c2, c1] <> 0 then
        c3 := c3 - 1
      else
      begin
        c2 := c2 + 1;
        while a[c3, c2, c1] = 0 do
          Dec(c3);
      end
    else
    if (c3 <= x) and (c2 > y) then
      if a[c3 - 1, c2, c1] <> 0 then
        c3 := c3 - 1
      else
      if a[c3, c2 - 1, c1] <> 0 then
        c2 := c2 - 1
      else
      begin
        c3 := c3 - 1;
        while a[c3, c2, c1] = 0 do
          Dec(c2);
      end
    else
    if a[c3, c2 - 1, c1] <> 0 then
      c2 := c2 - 1
    else
    if a[c3 + 1, c2, c1] <> 0 then
      c3 := c3 + 1
    else
    begin
      c2 := c2 - 1;
      while a[c3, c2, c1] = 0 do
        Inc(c3);
    end
  else
  if ch = #80 then
    if (c3 >= x) and (c2 < y) then
      if a[c3 - 1, c2, c1] <> 0 then
        c3 := c3 - 1
      else
      if a[c3, c2 - 1, c1] <> 0 then
        c2 := c2 - 1
      else
      begin
        c2 := c2 - 1;
        while a[c3, c2, c1] = 0 do
          Dec(c3);
      end
    else
    if (c3 < x) and (c2 <= y) then
      if a[c3, c2 + 1, c1] <> 0 then
        c2 := c2 + 1
      else
      if a[c3 - 1, c2, c1] <> 0 then
        c3 := c3 - 1
      else
      begin
        c3 := c3 - 1;
        while a[c3, c2, c1] = 0 do
          Inc(c2);
      end
    else
    if (c3 < x) and (c2 >= y) then
      if a[c3 + 1, c2, c1] <> 0 then
        c3 := c3 + 1
      else
      if a[c3, c2 + 1, c1] <> 0 then
        c2 := c2 + 1
      else
      begin
        c2 := c2 + 1;
        while a[c3, c2, c1] = 0 do
          Inc(c3);
      end
    else
    if a[c3, c2 - 1, c1] <> 0 then
      c2 := c2 - 1
    else
    if a[c3 + 1, c2, c1] <> 0 then
      c3 := c3 + 1
    else
    begin
      c3 := c3 + 1;
      while a[c3, c2, c1] = 0 do
        Dec(c2);
    end;
end;

procedure punctq(ch: char);
begin
  if ch = #77 then
    if (q1 > x) and (q2 <= y) then
      if a[q1, q2 + 1, q3] <> 0 then
        q2 := q2 + 1
      else
      if a[q1 + 1, q2, q3] <> 0 then
        q1 := q1 + 1
      else
      begin
        q1 := q1 + 1;
        while a[q1, q2, q3] = 0 do
          Inc(q2);
      end
    else
    if (q1 >= x) and (q2 > y) then
      if a[q1, q2 + 1, q3] <> 0 then
        q2 := q2 + 1
      else
      if a[q1 - 1, q2, q3] <> 0 then
        q1 := q1 - 1
      else
      begin
        q2 := q2 + 1;
        while a[q1, q2, q3] = 0 do
          Dec(q1);
      end
    else
    if (q1 <= x) and (q2 > y) then
      if a[q1 - 1, q2, q3] <> 0 then
        q1 := q1 - 1
      else
      if a[q1, q2 - 1, q3] <> 0 then
        q2 := q2 - 1
      else
      begin
        q1 := q1 - 1;
        while a[q1, q2, q3] = 0 do
          Dec(q2);
      end
    else
    if a[q1, q2 - 1, q3] <> 0 then
      q2 := q2 - 1
    else
    if a[q1 + 1, q2, q3] <> 0 then
      q1 := q1 + 1
    else
    begin
      q2 := q2 - 1;
      while a[q1, q2, q3] = 0 do
        Inc(q1);
    end
  else

  if ch = #75 then
    if (q1 >= x) and (q2 < y) then
      if a[q1 - 1, q2, q3] <> 0 then
        q1 := q1 - 1
      else
      if a[q1, q2 - 1, q3] <> 0 then
        q2 := q2 - 1
      else
      begin
        q2 := q2 - 1;
        while a[q1, q2, q3] = 0 do
          Dec(q1);
      end
    else
    if (q1 < x) and (q2 <= y) then
      if a[q1, q2 + 1, q3] <> 0 then
        q2 := q2 + 1
      else
      if a[q1 - 1, q2, q3] <> 0 then
        q1 := q1 - 1
      else
      begin
        q1 := q1 - 1;
        while a[q1, q2, q3] = 0 do
          Inc(q2);
      end
    else
    if (q1 < x) and (q2 >= y) then
      if a[q1 + 1, q2, q3] <> 0 then
        q1 := q1 + 1
      else
      if a[q1, q2 + 1, q3] <> 0 then
        q2 := q2 + 1
      else
      begin
        q2 := q2 + 1;
        while a[q1, q2, q3] = 0 do
          Inc(q1);
      end
    else
    if a[q1, q2 - 1, q3] <> 0 then
      q2 := q2 - 1
    else
    if a[q1 + 1, q2, q3] <> 0 then
      q1 := q1 + 1
    else
    begin
      q1 := q1 + 1;
      while a[q1, q2, q3] = 0 do
        Dec(q2);
    end
  else
  if ch = #72 then
    if (q3 > x) and (q2 <= y) then
      if a[q3, q2 + 1, q1] <> 0 then
        q2 := q2 + 1
      else
      if a[q3 + 1, q2, q1] <> 0 then
        q3 := q3 + 1
      else
      begin
        q3 := q3 + 1;
        while a[q3, q2, q1] = 0 do
          Inc(q2);
      end
    else
    if (q3 >= x) and (q2 > y) then
      if a[q3, q2 + 1, q1] <> 0 then
        q2 := q2 + 1
      else
      if a[q3 - 1, q2, q1] <> 0 then
        q3 := q3 - 1
      else
      begin
        q2 := q2 + 1;
        while a[q3, q2, q1] = 0 do
          Dec(q3);
      end
    else
    if (q3 <= x) and (q2 > y) then
      if a[q3 - 1, q2, q1] <> 0 then
        q3 := q3 - 1
      else
      if a[q3, q2 - 1, q1] <> 0 then
        q2 := q2 - 1
      else
      begin
        q3 := q3 - 1;
        while a[q3, q2, q1] = 0 do
          Dec(q2);
      end
    else
    if a[q3, q2 - 1, q1] <> 0 then
      q2 := q2 - 1
    else
    if a[q3 + 1, q2, q1] <> 0 then
      q3 := q3 + 1
    else
    begin
      q2 := q2 - 1;
      while a[q3, q2, q1] = 0 do
        Inc(q3);
    end
  else
  if ch = #80 then
    if (q3 >= x) and (q2 < y) then
      if a[q3 - 1, q2, q1] <> 0 then
        q3 := q3 - 1
      else
      if a[q3, q2 - 1, q1] <> 0 then
        q2 := q2 - 1
      else
      begin
        q2 := q2 - 1;
        while a[q3, q2, q1] = 0 do
          Dec(q3);
      end
    else
    if (q3 < x) and (q2 <= y) then
      if a[q3, q2 + 1, q1] <> 0 then
        q2 := q2 + 1
      else
      if a[q3 - 1, q2, q1] <> 0 then
        q3 := q3 - 1
      else
      begin
        q3 := q3 - 1;
        while a[q3, q2, q1] = 0 do
          Inc(q2);
      end
    else
    if (q3 < x) and (q2 >= y) then
      if a[q3 + 1, q2, q1] <> 0 then
        q3 := q3 + 1
      else
      if a[q3, q2 + 1, q1] <> 0 then
        q2 := q2 + 1
      else
      begin
        q2 := q2 + 1;
        while a[q3, q2, q1] = 0 do
          Inc(q3);
      end
    else
    if a[q3, q2 - 1, q1] <> 0 then
      q2 := q2 - 1
    else
    if a[q3 + 1, q2, q1] <> 0 then
      q3 := q3 + 1
    else
    begin
      q3 := q3 + 1;
      while a[q3, q2, q1] = 0 do
        Dec(q2);
    end;
end;

procedure punctk(ch: char);
begin
  if ch = #77 then
    if (k1 > x) and (k2 <= y) then
      if a[k1, k2 + 1, k3] <> 0 then
        k2 := k2 + 1
      else
      if a[k1 + 1, k2, k3] <> 0 then
        k1 := k1 + 1
      else
      begin
        k1 := k1 + 1;
        while a[k1, k2, k3] = 0 do
          Inc(k2);
      end
    else
    if (k1 >= x) and (k2 > y) then
      if a[k1, k2 + 1, k3] <> 0 then
        k2 := k2 + 1
      else
      if a[k1 - 1, k2, k3] <> 0 then
        k1 := k1 - 1
      else
      begin
        k2 := k2 + 1;
        while a[k1, k2, k3] = 0 do
          Dec(k1);
      end
    else
    if (k1 <= x) and (k2 > y) then
      if a[k1 - 1, k2, k3] <> 0 then
        k1 := k1 - 1
      else
      if a[k1, k2 - 1, k3] <> 0 then
        k2 := k2 - 1
      else
      begin
        k1 := k1 - 1;
        while a[k1, k2, k3] = 0 do
          Dec(k2);
      end
    else
    if a[k1, k2 - 1, k3] <> 0 then
      k2 := k2 - 1
    else
    if a[k1 + 1, k2, k3] <> 0 then
      k1 := k1 + 1
    else
    begin
      k2 := k2 - 1;
      while a[k1, k2, k3] = 0 do
        Inc(k1);
    end
  else

  if ch = #75 then
    if (k1 >= x) and (k2 < y) then
      if a[k1 - 1, k2, k3] <> 0 then
        k1 := k1 - 1
      else
      if a[k1, k2 - 1, k3] <> 0 then
        k2 := k2 - 1
      else
      begin
        k2 := k2 - 1;
        while a[k1, k2, k3] = 0 do
          Dec(k1);
      end
    else
    if (k1 < x) and (k2 <= y) then
      if a[k1, k2 + 1, k3] <> 0 then
        k2 := k2 + 1
      else
      if a[k1 - 1, k2, k3] <> 0 then
        k1 := k1 - 1
      else
      begin
        k1 := k1 - 1;
        while a[k1, k2, k3] = 0 do
          Inc(k2);
      end
    else
    if (k1 < x) and (k2 >= y) then
      if a[k1 + 1, k2, k3] <> 0 then
        k1 := k1 + 1
      else
      if a[k1, k2 + 1, k3] <> 0 then
        k2 := k2 + 1
      else
      begin
        k2 := k2 + 1;
        while a[k1, k2, k3] = 0 do
          Inc(k1);
      end
    else
    if a[k1, k2 - 1, k3] <> 0 then
      k2 := k2 - 1
    else
    if a[k1 + 1, k2, k3] <> 0 then
      k1 := k1 + 1
    else
    begin
      k1 := k1 + 1;
      while a[k1, k2, k3] = 0 do
        Dec(k2);
    end
  else
  if ch = #72 then
    if (k3 > x) and (k2 <= y) then
      if a[k3, k2 + 1, k1] <> 0 then
        k2 := k2 + 1
      else
      if a[k3 + 1, k2, k1] <> 0 then
        k3 := k3 + 1
      else
      begin
        k3 := k3 + 1;
        while a[k3, k2, k1] = 0 do
          Inc(k2);
      end
    else
    if (k3 >= x) and (k2 > y) then
      if a[k3, k2 + 1, k1] <> 0 then
        k2 := k2 + 1
      else
      if a[k3 - 1, k2, k1] <> 0 then
        k3 := k3 - 1
      else
      begin
        k2 := k2 + 1;
        while a[k3, k2, k1] = 0 do
          Dec(k3);
      end
    else
    if (k3 <= x) and (k2 > y) then
      if a[k3 - 1, k2, k1] <> 0 then
        k3 := k3 - 1
      else
      if a[k3, k2 - 1, k1] <> 0 then
        k2 := k2 - 1
      else
      begin
        k3 := k3 - 1;
        while a[k3, k2, k1] = 0 do
          Dec(k2);
      end
    else
    if a[k3, k2 - 1, k1] <> 0 then
      k2 := k2 - 1
    else
    if a[k3 + 1, k2, k1] <> 0 then
      k3 := k3 + 1
    else
    begin
      k2 := k2 - 1;
      while a[k3, k2, k1] = 0 do
        Inc(k3);
    end
  else
  if ch = #80 then
    if (k3 >= x) and (k2 < y) then
      if a[k3 - 1, k2, k1] <> 0 then
        k3 := k3 - 1
      else
      if a[k3, k2 - 1, k1] <> 0 then
        k2 := k2 - 1
      else
      begin
        k2 := k2 - 1;
        while a[k3, k2, k1] = 0 do
          Dec(k3);
      end
    else
    if (k3 < x) and (k2 <= y) then
      if a[k3, k2 + 1, k1] <> 0 then
        k2 := k2 + 1
      else
      if a[k3 - 1, k2, k1] <> 0 then
        k3 := k3 - 1
      else
      begin
        k3 := k3 - 1;
        while a[k3, k2, k1] = 0 do
          Inc(k2);
      end
    else
    if (k3 < x) and (k2 >= y) then
      if a[k3 + 1, k2, k1] <> 0 then
        k3 := k3 + 1
      else
      if a[k3, k2 + 1, k1] <> 0 then
        k2 := k2 + 1
      else
      begin
        k2 := k2 + 1;
        while a[k3, k2, k1] = 0 do
          Inc(k3);
      end
    else
    if a[k3, k2 - 1, k1] <> 0 then
      k2 := k2 - 1
    else
    if a[k3 + 1, k2, k1] <> 0 then
      k3 := k3 + 1
    else
    begin
      k3 := k3 + 1;
      while a[k3, k2, k1] = 0 do
        Dec(k2);
    end;
end;

procedure punctg(ch: char);
begin
  if ch = #77 then
    if (g1 > x) and (g2 <= y) then
      if a[g1, g2 + 1, g3] <> 0 then
        g2 := g2 + 1
      else
      if a[g1 + 1, g2, g3] <> 0 then
        g1 := g1 + 1
      else
      begin
        g1 := g1 + 1;
        while a[g1, g2, g3] = 0 do
          Inc(g2);
      end
    else
    if (g1 >= x) and (g2 > y) then
      if a[g1, g2 + 1, g3] <> 0 then
        g2 := g2 + 1
      else
      if a[g1 - 1, g2, g3] <> 0 then
        g1 := g1 - 1
      else
      begin
        g2 := g2 + 1;
        while a[g1, g2, g3] = 0 do
          Dec(g1);
      end
    else
    if (g1 <= x) and (g2 > y) then
      if a[g1 - 1, g2, g3] <> 0 then
        g1 := g1 - 1
      else
      if a[g1, g2 - 1, g3] <> 0 then
        g2 := g2 - 1
      else
      begin
        g1 := g1 - 1;
        while a[g1, g2, g3] = 0 do
          Dec(g2);
      end
    else
    if a[g1, g2 - 1, g3] <> 0 then
      g2 := g2 - 1
    else
    if a[g1 + 1, g2, g3] <> 0 then
      g1 := g1 + 1
    else
    begin
      g2 := g2 - 1;
      while a[g1, g2, g3] = 0 do
        Inc(g1);
    end
  else

  if ch = #75 then
    if (g1 >= x) and (g2 < y) then
      if a[g1 - 1, g2, g3] <> 0 then
        g1 := g1 - 1
      else
      if a[g1, g2 - 1, g3] <> 0 then
        g2 := g2 - 1
      else
      begin
        g2 := g2 - 1;
        while a[g1, g2, g3] = 0 do
          Dec(g1);
      end
    else
    if (g1 < x) and (g2 <= y) then
      if a[g1, g2 + 1, g3] <> 0 then
        g2 := g2 + 1
      else
      if a[g1 - 1, g2, g3] <> 0 then
        g1 := g1 - 1
      else
      begin
        g1 := g1 - 1;
        while a[g1, g2, g3] = 0 do
          Inc(g2);
      end
    else
    if (g1 < x) and (g2 >= y) then
      if a[g1 + 1, g2, g3] <> 0 then
        g1 := g1 + 1
      else
      if a[g1, g2 + 1, g3] <> 0 then
        g2 := g2 + 1
      else
      begin
        g2 := g2 + 1;
        while a[g1, g2, g3] = 0 do
          Inc(g1);
      end
    else
    if a[g1, g2 - 1, g3] <> 0 then
      g2 := g2 - 1
    else
    if a[g1 + 1, g2, g3] <> 0 then
      g1 := g1 + 1
    else
    begin
      g1 := g1 + 1;
      while a[g1, g2, g3] = 0 do
        Dec(g2);
    end
  else
  if ch = #72 then
    if (g3 > x) and (g2 <= y) then
      if a[g3, g2 + 1, g1] <> 0 then
        g2 := g2 + 1
      else
      if a[g3 + 1, g2, g1] <> 0 then
        g3 := g3 + 1
      else
      begin
        g3 := g3 + 1;
        while a[g3, g2, g1] = 0 do
          Inc(g2);
      end
    else
    if (g3 >= x) and (g2 > y) then
      if a[g3, g2 + 1, g1] <> 0 then
        g2 := g2 + 1
      else
      if a[g3 - 1, g2, g1] <> 0 then
        g3 := g3 - 1
      else
      begin
        g2 := g2 + 1;
        while a[g3, g2, g1] = 0 do
          Dec(g3);
      end
    else
    if (g3 <= x) and (g2 > y) then
      if a[g3 - 1, g2, g1] <> 0 then
        g3 := g3 - 1
      else
      if a[g3, g2 - 1, g1] <> 0 then
        g2 := g2 - 1
      else
      begin
        g3 := g3 - 1;
        while a[g3, g2, g1] = 0 do
          Dec(g2);
      end
    else
    if a[g3, g2 - 1, g1] <> 0 then
      g2 := g2 - 1
    else
    if a[g3 + 1, g2, g1] <> 0 then
      g3 := g3 + 1
    else
    begin
      g2 := g2 - 1;
      while a[g3, g2, g1] = 0 do
        Inc(g3);
    end
  else
  if ch = #80 then
    if (g3 >= x) and (g2 < y) then
      if a[g3 - 1, g2, g1] <> 0 then
        g3 := g3 - 1
      else
      if a[g3, g2 - 1, g1] <> 0 then
        g2 := g2 - 1
      else
      begin
        g2 := g2 - 1;
        while a[g3, g2, g1] = 0 do
          Dec(g3);
      end
    else
    if (g3 < x) and (g2 <= y) then
      if a[g3, g2 + 1, g1] <> 0 then
        g2 := g2 + 1
      else
      if a[g3 - 1, g2, g1] <> 0 then
        g3 := g3 - 1
      else
      begin
        g3 := g3 - 1;
        while a[g3, g2, g1] = 0 do
          Inc(g2);
      end
    else
    if (g3 < x) and (g2 >= y) then
      if a[g3 + 1, g2, g1] <> 0 then
        g3 := g3 + 1
      else
      if a[g3, g2 + 1, g1] <> 0 then
        g2 := g2 + 1
      else
      begin
        g2 := g2 + 1;
        while a[g3, g2, g1] = 0 do
          Inc(g3);
      end
    else
    if a[g3, g2 - 1, g1] <> 0 then
      g2 := g2 - 1
    else
    if a[g3 + 1, g2, g1] <> 0 then
      g3 := g3 + 1
    else
    begin
      g3 := g3 + 1;
      while a[g3, g2, g1] = 0 do
        Dec(g2);
    end;
end;

procedure cerc(x0, y0, z, radius: integer);
var
  x, y, radiuserror: integer;
begin
  x := radius;
  y := 0;
  radiuserror := 1 - x;
  while x >= y do
  begin
    a[x + x0, y + y0, z] := 4;
    a[y + x0, x + y0, z] := 4;
    a[-x + x0, y + y0, z] := 4;
    a[-y + x0, x + y0, z] := 4;
    a[-x + x0, -y + y0, z] := 4;
    a[-y + x0, -x + y0, z] := 4;
    a[x + x0, -y + y0, z] := 4;
    a[y + x0, -x + y0, z] := 4;
    y := y + 1;
    if radiuserror < 0 then
      radiuserror := radiuserror + 2 * y + 1
    else
    begin
      x := x - 1;
      radiuserror := radiuserror + 2 * (y - x + 1);
    end;
  end;
end;

procedure cercv(x0, y0, z, radius: integer);
var
  x, y, radiuserror: integer;
begin
  x := radius;
  y := 0;
  radiuserror := 1 - x;
  while x >= y do
  begin
    a[x + x0, z, y + y0] := 2;
    a[y + x0, z, x + y0] := 2;
    a[-x + x0, z, y + y0] := 2;
    a[-y + x0, z, x + y0] := 2;
    a[-x + x0, z, -y + y0] := 2;
    a[-y + x0, z, -x + y0] := 2;
    a[x + x0, z, -y + y0] := 2;
    a[y + x0, z, -x + y0] := 2;
    y := y + 1;
    if radiuserror < 0 then
      radiuserror := radiuserror + 2 * y + 1
    else
    begin
      x := x - 1;
      radiuserror := radiuserror + 2 * (y - x + 1);
    end;
  end;
end;

procedure cercy(x0, y0, z, radius: integer);
var
  x, y, radiuserror: integer;
begin
  x := radius;
  y := 0;
  radiuserror := 1 - x;
  while x >= y do
  begin
    a[z, y + y0, x + x0] := 2;
    a[z, x + y0, y + x0] := 2;
    a[z, y + y0, -x + x0] := 2;
    a[z, x + y0, -y + x0] := 2;
    a[z, -y + y0, -x + x0] := 2;
    a[z, -x + y0, -y + x0] := 2;
    a[z, -y + y0, x + x0] := 2;
    a[z, -x + y0, y + x0] := 2;
    y := y + 1;
    if radiuserror < 0 then
      radiuserror := radiuserror + 2 * y + 1
    else
    begin
      x := x - 1;
      radiuserror := radiuserror + 2 * (y - x + 1);
    end;
  end;
end;

procedure Line(x1, y1, x2, y2, clr: integer);
var
  i, deltax, deltay, numpixels, d, dinc1, dinc2, x, xinc1, xinc2, y, yinc1, yinc2: integer;
begin
  {Calculate deltax and deltay for initialisation}
  deltax := abs(x2 - x1);
  deltay := abs(y2 - y1);
  {Initialize all vars based on which is the independent variable}
  if deltax >= deltay then
  begin
    {x is independent variable}
    numpixels := deltax + 1;
    d := (2 * deltay) - deltax;
    dinc1 := deltay shl 1;
    dinc2 := (deltay - deltax) shl 1;
    xinc1 := 1;
    xinc2 := 1;
    yinc1 := 0;
    yinc2 := 1;
  end
  else
  begin
    {y is independent variable}
    numpixels := deltay + 1;
    d := (2 * deltax) - deltay;
    dinc1 := deltax shl 1;
    dinc2 := (deltax - deltay) shl 1;
    xinc1 := 0;
    xinc2 := 1;
    yinc1 := 1;
    yinc2 := 1;
  end;
  {Make sure x and y move in the right directions}
  if x1 > x2 then
  begin
    xinc1 := -xinc1;
    xinc2 := -xinc2;
  end;
  if y1 > y2 then
  begin
    yinc1 := -yinc1;
    yinc2 := -yinc2;
  end;
  {Start drawing at}
  x := x1;
  y := y1;
  {Draw the pixels}
  for i := 1 to numpixels do
  begin
    putpixel(x, y, clr);
    if d < 0 then
    begin
      d := d + dinc1;
      x := x + xinc1;
      y := y + yinc1;
    end
    else
    begin
      d := d + dinc2;
      x := x + xinc2;
      y := y + yinc2;
    end;
  end;
end;

procedure sfera(x, y, z, n: integer);
var
  i, k, r, g, t, e, w, m: integer;
begin
  k := 0;
  w := z;
  cercv(x, y, z, n);
  z := z - n + 1;
  while z <> w do
  begin
    k := x;
    while a[k, y, z] = 0 do
      Dec(k);
    k := x - k;
    cerc(x, y, z, k);
    t := y - k;
    e := z - 1;
    while a[x, t, e] = 0 do
    begin
      cerc(x, y, z - 1, k);
      t := t + 1;
      k := k - 1;
    end;
    Inc(z);
  end;
  k := 0;
  w := z - 1;
  z := z + n - 1;
  while z <> w do
  begin
    k := x;
    while a[k, y, z] = 0 do
      Dec(k);
    k := x - k;
    cerc(x, y, z, k);
    t := y - k;
    e := z + 1;
    while a[x, t, e] = 0 do
    begin
      cerc(x, y, z + 1, k);
      t := t + 1;
      k := k - 1;
    end;
    Dec(z);
  end;

end;

begin
  i := detect;
  initgraph(i, n, '');
{writeln('Dati x,y,z si radiusul');
read(x,y,z,r);}
  x := 300;
  y := 300;
  z := 300;
  r := 150;
  sfera(x, y, z, r);

  h1 := x;
  h2 := y;
  h3 := z;
  while a[x - r div 2, h2, z - r div 2] = 0 do
    Dec(h2);
  c1 := h1 - r div 2;
  c2 := h2;
  c3 := h3 - r div 2;
  q1 := h1 - r div 2;
  q2 := h2;
  q3 := h3 + r div 2;
  g1 := h1 + r div 2;
  g2 := h2;
  g3 := h3 + r div 2;
  k1 := h1 + r div 2;
  k2 := h2;
  k3 := h3 - r div 2;
  h2 := h2 + 1;
  while a[x - r div 2, h2, z - r div 2] = 0 do
    Inc(h2);
  t1 := h1 - r div 2;
  t2 := h2;
  t3 := h3 - r div 2;
  r1 := h1 - r div 2;
  r2 := h2;
  r3 := h3 + r div 2;
  e1 := h1 + r div 2;
  e2 := h2;
  e3 := h3 + r div 2;
  w1 := h1 + r div 2;
  w2 := h2;
  w3 := h3 - r div 2;

  repeat
    ch := #0;
    while ch = #0 do
      ch := readkey;

    cleardevice;

    punctc(ch);
    punctq(ch);
    line(c1, c2, q1, q2, cl);
    punctg(ch);
    line(q1, q2, g1, g2, cl);
    punctk(ch);
    line(g1, g2, k1, k2, cl);
    line(k1, k2, c1, c2, cl);

    punctt(ch);
    punctr(ch);
    line(t1, t2, r1, r2, cl);
    puncte(ch);
    line(r1, r2, e1, e2, cl);
    punctw(ch);
    line(e1, e2, w1, w2, cl);
    line(w1, w2, t1, t2, cl);

    line(t1, t2, c1, c2, cl);
    line(r1, r2, q1, q2, cl);
    line(e1, e2, g1, g2, cl);
    line(w1, w2, k1, k2, cl);
  until ch = #13;

  readkey;
  closegraph;
end.
