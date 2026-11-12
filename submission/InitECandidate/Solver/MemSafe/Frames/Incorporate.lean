import InitECandidate.Solver.MemSafe.Frames.Start

/-!
# `incorporate_child_on_error`: code and exact effect

```
fun 1 incorporate_child_on_error(1 child) {
  st ev + EV_GAS_LEFT, (lds 1 (ev + EV_GAS_LEFT)) + (lds 1 (child + EV_GAS_LEFT));
  st ev + EV_STATE_GAS_LEFT, (lds 1 (ev + EV_STATE_GAS_LEFT)) + (lds 1 (child + EV_STATE_GAS_LEFT));
  st ev + EV_REGULAR_GAS_USED, (lds 1 (ev + EV_REGULAR_GAS_USED)) + (lds 1 (child + EV_REGULAR_GAS_USED));
  return 0; }
```
`icoe_spec`: the final memory `icoeMem m e c` (three word updates of the running frame `e`
from the child `c`), globals unchanged. Used by `finish_child` (the parent gains the child's
`GAS_LEFT`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- `lds 1 (x + k)` for a local `x`. -/
def lLoad (x : String) (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv (nm x), cw k])

theorem ev_lLoad_eq {s : State σ} {x : String} {k : Nat} {X0 : BitVec 64} {v : ValueHOL 64}
    (h : s.locals.lookup (nm x) = some (.val (.word X0))) (hv : ev s (lLoad x k) = some v) :
    v = .val (.word (fld s.memory X0 k)) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add2 (ev_lv_eq h) (ev_cw s k)] at hw
  cases hw
  rw [mem_rd s.memory (X0 + BitVec.ofNat 64 k)]
  rfl

/-- `st ev + k, (lds 1 (ev + k)) + (lds 1 (child + k))`. -/
def addFrom (k : Nat) : ProgHOL 64 := stG "ev" k (.op .add [gLoad "ev" k, lLoad "child" k])

def icoeBody : ProgHOL 64 :=
  .seq (addFrom 64) (.seq (addFrom 72) (.seq (addFrom 184) (.return (cw 0))))

theorem entry_icoe : fnEntry Guest.Software.guestFn_incorporate_child_on_error =
    (nm "incorporate_child_on_error", [(nm "child", .one)], icoeBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_icoe : guestCode (nm "incorporate_child_on_error") =
    some ([(nm "child", .one)], icoeBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 591) (by decide)) ⟨_, rfl⟩
    entry_icoe

/-- One `addFrom` step on the memory. -/
def addMem (m : Mem) (e c : BitVec 64) (k : Nat) : Mem :=
  upd m (e + BitVec.ofNat 64 k) (fld m e k + fld m c k)

def icoeMem (m : Mem) (e c : BitVec 64) : Mem := addMem (addMem (addMem m e c 64) e c 72) e c 184

theorem addFrom_hoare {e c : BitVec 64} {l : Locs} {g : HolFiniteMapExact MlS (ValueHOL 64)}
    {m : Mem} (k : Nat) (hc : l.lookup (nm "child") = some (.val (.word c)))
    (he : g.lookup nmEv = some (.val (.word e))) :
    HoareG σ X (fun u => u.locals = l ∧ u.globals = g ∧ u.memory = m) (addFrom k)
      (fun r u => r = none ∧ u.locals = l ∧ u.globals = g ∧ u.memory = addMem m e c k) := by
  refine hoareG_stG fun u _ ⟨hl, hg, hm⟩ G v hG hv => ?_
  have he' : gword u (nm "ev") = some e := by unfold gword; rw [hg]; rw [he]
  rw [he', Option.some.injEq] at hG
  subst hG
  obtain ⟨y, z, hy, hz, hv'⟩ := ev_op_add_inv hv
  obtain ⟨hy', -⟩ := ev_gLoad_eq he' hy
  have hz' := ev_lLoad_eq (by rw [hl]; exact hc) hz
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hy' hz'
  subst hy' hz'
  refine ⟨_, hv', fun _ => ⟨rfl, hl, hg, ?_⟩⟩
  show upd u.memory _ _ = _
  rw [hm]
  rfl

theorem icoe_spec (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "incorporate_child_on_error") (fun vs s r t => Good (some r) →
      ∃ e c, vs = [.val (.word c)] ∧ gword s nmEv = some e ∧ r = .returned (.val (.word 0)) ∧
        t.globals = s.globals ∧ t.memory = icoeMem s.memory e c) := by
  refine funSpec_of_hoareG fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsh, hA⟩ := lookupCode_one code_icoe hl
  obtain ⟨c, rfl⟩ := val_of_shapeEq_one hsh
  have hc : s0.locals.lookup (nm "child") = some (.val (.word c)) := by rw [hloc]; exact hA
  -- `ev` must be a word for the first store to succeed
  by_cases hev : ∃ e, gword s0 nmEv = some e
  · obtain ⟨e, he⟩ := hev
    have he' := gword_some he
    refine hoareG_pre (P := fun u => u.locals = s0.locals ∧ u.globals = s0.globals ∧
      u.memory = s0.memory) ?_ (fun u _ hu => by subst hu; exact ⟨rfl, rfl, rfl⟩)
    refine hoareG_seq (addFrom_hoare 64 hc he') (fun r t _ hr _ h => absurd h.1 hr) ?_
    refine hoareG_pre (hoareG_seq (addFrom_hoare (m := addMem s0.memory e c 64) 72 hc he')
      (fun r t _ hr _ h => absurd h.1 hr) ?_) (fun u _ h => h.2)
    refine hoareG_pre (hoareG_seq (addFrom_hoare (m := addMem (addMem s0.memory e c 64) e c 72)
      184 hc he') (fun r t _ hr _ h => absurd h.1 hr) ?_) (fun u _ h => h.2)
    refine hoareG_return fun u _ ⟨_, _, hg, hm⟩ v hv => ?_
    rw [ev_cw] at hv; cases hv
    intro rr hrr
    cases hrr
    exact ⟨e, c, rfl, he, rfl, hg, hm⟩
  · -- otherwise the first store errors
    refine hoareG_seq (R := fun _ _ => False) ?_ (fun _ _ _ _ _ h => h.elim)
      (hoareG_false fun _ _ h => h)
    refine hoareG_stG fun u _ hu G v hG _ => ?_
    subst hu
    exact absurd ⟨G, hG⟩ hev

end InitECandidate.Solver.MemSafe.Frames
