import InitECandidate.Solver.MemSafe.BlsCost.Callees.C18
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_g2_mul := (declPair Guest.Software.guestFn_g2_mul).2.2
def b_g2_mul : Nat := 30423614562569978169555563848088
theorem cost_g2_mul : Cost σ guestCtx body_g2_mul b_g2_mul := ConstCost.Core.analyze_sound table18_sound (by cbv)
theorem cc_g2_mul : CalleeCost σ guestCtx (nm "g2_mul") b_g2_mul := by
  have hc : ∃ rs, guestCode (nm "g2_mul") = some ((declPair Guest.Software.guestFn_g2_mul).2.1,body_g2_mul,rs) :=
    declPair_valid (List.getElem_mem (n := 776) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_g2_mul
def table19 := ConstCost.Core.extend table18 (nm "g2_mul") b_g2_mul
theorem table19_sound : TblSound σ guestCtx table19 := ConstCost.Core.extend_sound table18_sound cc_g2_mul
#print axioms cc_g2_mul
end InitECandidate.Solver.MemSafe.BlsCost.Callees
