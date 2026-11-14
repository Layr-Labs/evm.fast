import InitECandidate.Solver.MemSafe.BlsCost.Callees.C17
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_g2_encode := (declPair Guest.Software.guestFn_g2_encode).2.2
def b_g2_encode : Nat := 687200699349
theorem cost_g2_encode : Cost σ guestCtx body_g2_encode b_g2_encode := ConstCost.Core.analyze_sound table17_sound (by cbv)
theorem cc_g2_encode : CalleeCost σ guestCtx (nm "g2_encode") b_g2_encode := by
  have hc : ∃ rs, guestCode (nm "g2_encode") = some ((declPair Guest.Software.guestFn_g2_encode).2.1,body_g2_encode,rs) :=
    declPair_valid (List.getElem_mem (n := 780) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_g2_encode
def table18 := ConstCost.Core.extend table17 (nm "g2_encode") b_g2_encode
theorem table18_sound : TblSound σ guestCtx table18 := ConstCost.Core.extend_sound table17_sound cc_g2_encode
#print axioms cc_g2_encode
end InitECandidate.Solver.MemSafe.BlsCost.Callees
