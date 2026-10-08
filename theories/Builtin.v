From compcert Require Import Values.

Inductive  lit : Type := Unit | CVal (v : val).
Definition pure (V : Type) : Type := V -> option V.
Definition stateful (S : Type) : Type := S.
