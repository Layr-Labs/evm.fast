import InitECandidate.Solver.MemSafe.ConstCost.Callers.C10
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_pre_alt_bn128_mul := (declPair Guest.Software.guestFn_pre_alt_bn128_mul).2.2
def b_pre_alt_bn128_mul : Nat := 82642677042253719983168392123657002688603973
theorem cost_pre_alt_bn128_mul : Cost σ guestCtx body_pre_alt_bn128_mul b_pre_alt_bn128_mul :=
  ConstCost.Core.analyze_sound table10_sound (by cbv)
theorem cc_pre_alt_bn128_mul : CalleeCost σ guestCtx (nm "pre_alt_bn128_mul") b_pre_alt_bn128_mul := by
  have hc : ∃ rs, guestCode (nm "pre_alt_bn128_mul") = some ((declPair Guest.Software.guestFn_pre_alt_bn128_mul).2.1,body_pre_alt_bn128_mul,rs) :=
    declPair_valid (List.getElem_mem (n := 693) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_pre_alt_bn128_mul
def table11 := ConstCost.Core.extend table10 (nm "pre_alt_bn128_mul") b_pre_alt_bn128_mul
theorem table11_sound : TblSound σ guestCtx table11 := ConstCost.Core.extend_sound table10_sound cc_pre_alt_bn128_mul
#print axioms cc_pre_alt_bn128_mul
end InitECandidate.Solver.MemSafe.ConstCost.Callers
