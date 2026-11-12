import InitECandidate.Solver.MemSafe.Ptx.PtTab

/-!
# F3d: side conditions of the table summaries (`CsOK`, `ptAllNames` membership)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

theorem csOK_nil : CsOK [] := ⟨by decide, by decide⟩
theorem csOK_tbl : CsOK tblCaps := ⟨by decide, by decide⟩
theorem csOK_tbl_jr_sk : CsOK (tblCaps ++ [jrCap, skCap]) := ⟨by decide, by decide⟩
theorem csOK_tbl_sk : CsOK (tblCaps ++ [skCap]) := ⟨by decide, by decide⟩
theorem csOK_sk_tbl_jr : CsOK ([skCap] ++ tblCaps ++ [jrCap]) := ⟨by decide, by decide⟩
theorem csOK_htab_set (t : Nat) (h : guestSt t = true) :
    CsOK [⟨nm "*", t, [], true⟩, ⟨nm "*", 14, [], true⟩] :=
  ⟨by intro c hc; simp only [List.mem_cons, List.not_mem_nil, or_false] at hc; rcases hc with rfl | rfl <;> simp [h]; decide,
   by intro c hc; simp only [List.mem_cons, List.not_mem_nil, or_false] at hc; rcases hc with rfl | rfl <;> simp [anyG]⟩

end InitECandidate.Solver.MemSafe.Ptx
