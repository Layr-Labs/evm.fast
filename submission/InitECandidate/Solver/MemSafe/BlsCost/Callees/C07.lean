import InitECandidate.Solver.MemSafe.BlsCost.Callees.C06
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_g1_mul := (declPair Guest.Software.guestFn_g1_mul).2.2
def b_g1_mul : Nat := 5070602453855073098082981776267
theorem cost_g1_mul : Cost σ guestCtx body_g1_mul b_g1_mul := ConstCost.Core.analyze_sound table6_sound (by cbv)
theorem cc_g1_mul : CalleeCost σ guestCtx (nm "g1_mul") b_g1_mul := by
  have hc : ∃ rs, guestCode (nm "g1_mul") = some ((declPair Guest.Software.guestFn_g1_mul).2.1,body_g1_mul,rs) :=
    declPair_valid (List.getElem_mem (n := 764) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_g1_mul
def table7 := ConstCost.Core.extend table6 (nm "g1_mul") b_g1_mul
theorem table7_sound : TblSound σ guestCtx table7 := ConstCost.Core.extend_sound table6_sound cc_g1_mul
#print axioms cc_g1_mul
end InitECandidate.Solver.MemSafe.BlsCost.Callees
