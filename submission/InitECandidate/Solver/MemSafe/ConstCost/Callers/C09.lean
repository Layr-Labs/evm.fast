import InitECandidate.Solver.MemSafe.ConstCost.Callers.C08
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_bn254_pairing := (declPair Guest.Software.guestFn_bn254_pairing).2.2
def b_bn254_pairing : Nat := 225975662473920565121504433632266035120856978395585260013552
theorem cost_bn254_pairing : Cost σ guestCtx body_bn254_pairing b_bn254_pairing :=
  ConstCost.Core.analyze_sound table8_sound (by cbv)
theorem cc_bn254_pairing : CalleeCost σ guestCtx (nm "bn254_pairing") b_bn254_pairing := by
  have hc : ∃ rs, guestCode (nm "bn254_pairing") = some ((declPair Guest.Software.guestFn_bn254_pairing).2.1,body_bn254_pairing,rs) :=
    declPair_valid (List.getElem_mem (n := 685) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_bn254_pairing
def table9 := ConstCost.Core.extend table8 (nm "bn254_pairing") b_bn254_pairing
theorem table9_sound : TblSound σ guestCtx table9 := ConstCost.Core.extend_sound table8_sound cc_bn254_pairing
#print axioms cc_bn254_pairing
end InitECandidate.Solver.MemSafe.ConstCost.Callers
