import InitECandidate.Solver.Band.Dec

/-!
# `mpt_from_witness` (sonnet-band, template T2)

```
fun 1 mpt_from_witness(1 db, 1 root_hash, 1 secured) {
  var 1 root = decode_witness_to_mpt(db, root_hash);
  return mpt_new(root, secured);
}
```
Pre `MfwPre`: `DwPre` on the first two arguments.  `mpt_new` is a table entry (cost 3).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe (Ptrs ptrsOf heapBase)
open InitECandidate.Solver.Band

variable {σ : Type}

/-- `DwPre` reads only the memory and the globals. -/
theorem dwPre_congr {vs : List (ValueHOL 64)} {s t : PanSemStateFiniteExact 64 σ}
    (hm : t.memory = s.memory) (hg : t.globals = s.globals) (h : DwPre vs s) : DwPre vs t := by
  obtain ⟨db, rh, hvs, p, hp, hord, hW⟩ := h
  exact ⟨db, rh, hvs, p, by rw [ptrsOf_glob hg]; exact hp, hord, by rw [hm]; exact hW⟩

def mfwBody : ProgHOL 64 :=
  .decCall (nm "root") .one (nm "decode_witness_to_mpt") [lv (nm "db"), lv (nm "root_hash")]
    (.call none (nm "mpt_new") [lv (nm "root"), lv (nm "secured")])

def params_mfw : List (MlS × ShapeHOL) :=
  [(nm "db", .one), (nm "root_hash", .one), (nm "secured", .one)]

theorem entry_mfw : fnEntry Guest.Software.guestFn_mpt_from_witness =
    (nm "mpt_from_witness", params_mfw, mfwBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_mfw :
    guestCode (nm "mpt_from_witness") = some (params_mfw, mfwBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 269) (by decide)) ⟨_, rfl⟩
    entry_mfw

/-- Pre: `DwPre` on the first two arguments. -/
def MfwPre (vs : List (ValueHOL 64)) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ a b c, vs = [a, b, c] ∧ DwPre [a, b] s

def mfwB : Nat := 1 + dwtmB + (1 + 3 + 0)

theorem mpt_from_witness_costP :
    Inv.CalleeCostP σ guestCtx (nm "mpt_from_witness") MfwPre mfwB := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_mfw hl
  unfold mfwBody mfwB
  refine costP_decCall dwtm_costP ?_ (funSpec_true _) ?_
  · rintro s _ ⟨hloc, a, b, c, rfl, hdw⟩ vs' hvs' callee'
    have hA := (hbind 0 (by decide) (by simp)).1
    have hB := (hbind 1 (by decide) (by simp)).1
    rw [evs_cons (by rw [ev_lv]; exact hloc ▸ hA) (evs_cons (by rw [ev_lv]; exact hloc ▸ hB) evs_nil)]
      at hvs'
    cases hvs'
    exact dwPre_congr rfl rfl hdw
  · intro s _ _ _ _ _ _ _ _ _ _
    exact Inv.costP_of_cost (cost_call (info := none) (MemSafe.Wire.calleeCost_guest (f := nm "mpt_new") (B := 3) rfl)
      (by intro _ _ _ _ h; cases h))

end InitECandidate.Solver.Band2

#print axioms InitECandidate.Solver.Band2.mpt_from_witness_costP
