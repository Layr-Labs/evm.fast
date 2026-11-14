import InitECandidate.Solver.MemSafe.ConstCost.Callers.C07
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_bn254_g1_mul := (declPair Guest.Software.guestFn_bn254_g1_mul).2.2
def b_bn254_g1_mul : Nat := 82642677042253719983168244549704413012191024
theorem cost_bn254_g1_mul : Cost σ guestCtx body_bn254_g1_mul b_bn254_g1_mul :=
  ConstCost.Core.analyze_sound table7_sound (by cbv)
theorem cc_bn254_g1_mul : CalleeCost σ guestCtx (nm "bn254_g1_mul") b_bn254_g1_mul := by
  have hc : ∃ rs, guestCode (nm "bn254_g1_mul") = some ((declPair Guest.Software.guestFn_bn254_g1_mul).2.1,body_bn254_g1_mul,rs) :=
    declPair_valid (List.getElem_mem (n := 690) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_bn254_g1_mul
def table8 := ConstCost.Core.extend table7 (nm "bn254_g1_mul") b_bn254_g1_mul
theorem table8_sound : TblSound σ guestCtx table8 := ConstCost.Core.extend_sound table7_sound cc_bn254_g1_mul
#print axioms cc_bn254_g1_mul
end InitECandidate.Solver.MemSafe.ConstCost.Callers
