import InitECandidate.Solver.MemSafe.Rec.FootS

set_option autoImplicit false

/-!
# A frame of fixed locals

`LkAll xs m`: every `(x, v) ∈ xs` is bound in `m`. Updates and restorations of names outside
`xs` keep it (`lkAll_upd`, `lkAll_res`; the side condition is decided on the names only), and
`LkAll.lk` reads an entry (`mem_tac` proves the membership in a literal list).
-/

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

def LkAll (xs : List (MlS × ValueHOL 64)) (m : Locals) : Prop := ∀ q ∈ xs, m.lookup q.1 = some q.2

theorem LkAll.lk {xs : List (MlS × ValueHOL 64)} {m : Locals} (h : LkAll xs m) {x : MlS}
    {v : ValueHOL 64} (hq : (x, v) ∈ xs) : m.lookup x = some v := h _ hq

theorem ne_of_contains {xs : List (MlS × ValueHOL 64)} {x : MlS}
    (hx : (xs.map Prod.fst).contains x = false) {q : MlS × ValueHOL 64} (hq : q ∈ xs) : q.1 ≠ x := by
  intro e
  have : x ∈ xs.map Prod.fst := e ▸ List.mem_map_of_mem hq
  have := List.contains_iff_mem.mpr this
  rw [hx] at this
  cases this

theorem lkAll_upd {xs : List (MlS × ValueHOL 64)} {m : Locals} (h : LkAll xs m) {x : MlS}
    (hx : (xs.map Prod.fst).contains x = false) (v : ValueHOL 64) : LkAll xs (m.update (x, v)) :=
  fun q hq => by rw [lookup_update_ne _ _ (Ne.symm (ne_of_contains hx hq))]; exact h q hq

theorem lkAll_res {xs : List (MlS × ValueHOL 64)} {m : Locals} (h : LkAll xs m) {x : MlS}
    (hx : (xs.map Prod.fst).contains x = false) (old : Option (ValueHOL 64)) :
    LkAll xs (m.resVarEq (x, old)) :=
  fun q hq => by rw [lookup_resVarEq_ne _ _ (Ne.symm (ne_of_contains hx hq))]; exact h q hq

theorem lkAll_cons {xs : List (MlS × ValueHOL 64)} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h : m.lookup x = some v) (h' : LkAll xs m) : LkAll ((x, v) :: xs) m := by
  intro q hq
  rcases List.mem_cons.mp hq with rfl | hq
  · exact h
  · exact h' q hq

theorem lkAll_tail {xs : List (MlS × ValueHOL 64)} {m : Locals} {q : MlS × ValueHOL 64}
    (h : LkAll (q :: xs) m) : LkAll xs m := fun q' hq' => h q' (List.mem_cons_of_mem _ hq')

macro "mem_tac" : tactic => `(tactic| (repeat (first | exact List.Mem.head _ | apply List.Mem.tail)))

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.lkAll_upd
