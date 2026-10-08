Require Import Stdlib.Strings.String.

Definition A : Type := string.
Definition E : Type := string.

Parameter F : Type.
Parameter L : Type.
Parameter S : Type.

Inductive expr : Type :=
  | Function (f : F) (e : expr)
  | Literal (l : L)
  | Var (v : string)
  | Pair (x y : expr)
  | Element (b : expr) (e : E) (a : expr).

Inductive add_kind : Type :=
  | SetAttr (a : A) (e : expr)
  | AddElem (e : E) (a : expr)
  | RemElem (e : E) (a : expr).

Inductive stmt : Type :=
  | Seq (f s : stmt)
  | Action (v : string) (f : S) (a : expr)
  | Assign (v : string) (e : expr)
  | Add (b : expr) (k : add_kind)
  | Get (v : string) (b : expr) (a : A)
  | Contains (b : expr) (e : E) (a : expr) (th el : stmt)
  | Cond (c : expr) (th el : stmt)
  | Match (s : expr) (v : string) (l r : stmt)
  | ForEach (v : string) (l : expr) (i : string) (b : stmt)
  | While (c : expr) (b : stmt)
  | ForElem (base : expr) (e : E) (v : string) (b : stmt)
  | TryCatch (b : stmt) (v : string) (c : stmt)
  | TryFinally (b : stmt) (f : stmt)
  | Localize (e : E) (a : expr) (b : stmt)
  | Raise (e : expr)
  | Return (e : expr)
  | Yield (e : expr)
  | Pass.
