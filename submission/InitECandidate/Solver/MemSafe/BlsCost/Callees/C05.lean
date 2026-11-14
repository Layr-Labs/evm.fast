import InitECandidate.Solver.MemSafe.BlsCost.Callees.C04
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_g1_decode := (declPair Guest.Software.guestFn_g1_decode).2.2
def b_g1_decode : Nat := 68719477143
theorem cost_g1_decode : Cost σ guestCtx body_g1_decode b_g1_decode := ConstCost.Core.analyze_sound table4_sound (by cbv)
theorem cc_g1_decode : CalleeCost σ guestCtx (nm "g1_decode") b_g1_decode := by
  have hc : ∃ rs, guestCode (nm "g1_decode") = some ((declPair Guest.Software.guestFn_g1_decode).2.1,body_g1_decode,rs) :=
    declPair_valid (List.getElem_mem (n := 767) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_g1_decode
def table5 := ConstCost.Core.extend table4 (nm "g1_decode") b_g1_decode
theorem table5_sound : TblSound σ guestCtx table5 := ConstCost.Core.extend_sound table4_sound cc_g1_decode
#print axioms cc_g1_decode
end InitECandidate.Solver.MemSafe.BlsCost.Callees
