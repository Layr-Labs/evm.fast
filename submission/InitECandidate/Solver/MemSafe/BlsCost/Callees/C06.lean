import InitECandidate.Solver.MemSafe.BlsCost.Callees.C05
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_g1_encode := (declPair Guest.Software.guestFn_g1_encode).2.2
def b_g1_encode : Nat := 274883837980
theorem cost_g1_encode : Cost σ guestCtx body_g1_encode b_g1_encode := ConstCost.Core.analyze_sound table5_sound (by cbv)
theorem cc_g1_encode : CalleeCost σ guestCtx (nm "g1_encode") b_g1_encode := by
  have hc : ∃ rs, guestCode (nm "g1_encode") = some ((declPair Guest.Software.guestFn_g1_encode).2.1,body_g1_encode,rs) :=
    declPair_valid (List.getElem_mem (n := 768) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_g1_encode
def table6 := ConstCost.Core.extend table5 (nm "g1_encode") b_g1_encode
theorem table6_sound : TblSound σ guestCtx table6 := ConstCost.Core.extend_sound table5_sound cc_g1_encode
#print axioms cc_g1_encode
end InitECandidate.Solver.MemSafe.BlsCost.Callees
