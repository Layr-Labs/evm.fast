import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C04
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_bdep := (declPair Guest.Software.guestFn_htr_bdep).2.2
def b_htr_bdep : Nat := 2041694201525630781278309737741863093143
theorem cost_htr_bdep : Cost σ guestCtx body_htr_bdep b_htr_bdep := ArrayCost.Core.analyze_sound table4_sound (by cbv)
theorem cc_htr_bdep : CalleeCost σ guestCtx (nm "htr_bdep") b_htr_bdep := by
  have hc : ∃ rs, guestCode (nm "htr_bdep") = some ((declPair Guest.Software.guestFn_htr_bdep).2.1,body_htr_bdep,rs) :=
    declPair_valid (List.getElem_mem (n := 214) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_bdep
def table5 := ArrayCost.Core.extend table4 (nm "htr_bdep") b_htr_bdep
theorem table5_sound : TblSound σ guestCtx table5 := ArrayCost.Core.extend_sound table4_sound cc_htr_bdep
#print axioms cc_htr_bdep
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
