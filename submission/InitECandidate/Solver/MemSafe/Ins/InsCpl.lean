import InitECandidate.Solver.MemSafe.Ins.InsExt

set_option autoImplicit false

/-!
# `common_prefix_length` (and `min`) write no memory
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

def cplFns : EntryList :=
  [fnEntry Guest.Software.guestFn_common_prefix_length, fnEntry Guest.Software.guestFn_min]

def cplNames : List MlS := cplFns.map Prod.fst

theorem cplFns_valid : ∀ e ∈ cplFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [cplFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 251) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 31) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem cplFns_mw : cplFns.all (fun e => mwFreeB cplNames e.2.2.1) = true := by decide_cbv

theorem cpl_mem : cplNames.contains (nm "common_prefix_length") = true := by decide_cbv

theorem cpl_mw (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "common_prefix_length") (fun _ s _ t => t.memory = s.memory) :=
  funSpec_mw (by rw [hC]; exact closed_of_entries (chk := mwFreeB) cplFns_valid cplFns_mw) cpl_mem

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.cpl_mw
