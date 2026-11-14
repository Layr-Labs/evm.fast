import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S055
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_iso_map_g2 := (declPair Guest.Software.guestFn_iso_map_g2).2.2
def b_iso_map_g2 : Nat := 35712896528076081467242
theorem cost_iso_map_g2 : Cost σ guestCtx body_iso_map_g2 b_iso_map_g2 :=
 StrideCost.CoreNext.analyze_sound table55_sound (by cbv)
theorem cc_iso_map_g2 : CalleeCost σ guestCtx (nm "iso_map_g2") b_iso_map_g2 := by
 have hc : guestCode (nm "iso_map_g2") = some ((declPair Guest.Software.guestFn_iso_map_g2).2.1,body_iso_map_g2,(fnEntry Guest.Software.guestFn_iso_map_g2).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 795) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_iso_map_g2
def table56 := StrideCost.CoreNext.extend table55 (nm "iso_map_g2") b_iso_map_g2
theorem table56_sound : TblSound σ guestCtx table56 :=
 StrideCost.CoreNext.extend_sound table55_sound cc_iso_map_g2
#print axioms cc_iso_map_g2
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
