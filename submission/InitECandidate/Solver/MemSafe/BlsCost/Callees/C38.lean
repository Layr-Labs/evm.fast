import InitECandidate.Solver.MemSafe.BlsCost.Callees.C37
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_pair_miller_loop := (declPair Guest.Software.guestFn_pair_miller_loop).2.2
def b_pair_miller_loop : Nat := 38029518498821546493621055809845
theorem cost_pair_miller_loop : Cost σ guestCtx body_pair_miller_loop b_pair_miller_loop := ConstCost.Core.analyze_sound table37_sound (by cbv)
theorem cc_pair_miller_loop : CalleeCost σ guestCtx (nm "pair_miller_loop") b_pair_miller_loop := by
  have hc : ∃ rs, guestCode (nm "pair_miller_loop") = some ((declPair Guest.Software.guestFn_pair_miller_loop).2.1,body_pair_miller_loop,rs) :=
    declPair_valid (List.getElem_mem (n := 785) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_pair_miller_loop
def table38 := ConstCost.Core.extend table37 (nm "pair_miller_loop") b_pair_miller_loop
theorem table38_sound : TblSound σ guestCtx table38 := ConstCost.Core.extend_sound table37_sound cc_pair_miller_loop
#print axioms cc_pair_miller_loop
end InitECandidate.Solver.MemSafe.BlsCost.Callees
