import Guest.SoftwareAst

/-! Actual guest declarations selected in an explicit callee-first name order.
Selection is not trusted for soundness: each returned declaration is proved to
be a function member of the unchanged guest AST. Missing names simply yield no
entry; numerical membership/lookup checks must reject an incomplete cost plan.
-/
set_option autoImplicit false

namespace ThirdReplayNamesCore
open Flapjack

def isNamed (name : String) : Decl (BitVec 64) → Bool
  | .function fd => fd.name == name
  | _ => false

def declarations (names : List String) : List (Decl (BitVec 64)) :=
  names.flatMap fun name => Guest.Software.guestAst.filter (isNamed name)

theorem declarations_actual {names : List String} {d : Decl (BitVec 64)}
    (hd : d ∈ declarations names) :
    d ∈ Guest.Software.guestAst ∧ ∃ fd, d = .function fd := by
  obtain ⟨name, hname, hd⟩ := List.mem_flatMap.mp hd
  have hf := List.mem_filter.mp hd
  refine ⟨hf.1, ?_⟩
  have hmatch := hf.2
  cases d with
  | function fd => exact ⟨fd, rfl⟩
  | _ => simp [isNamed] at hmatch

#print axioms declarations_actual
end ThirdReplayNamesCore
