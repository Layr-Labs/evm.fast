import InitECandidate.Solver.MemSafe.BlsCost.Callees.C26
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_fp6_set_one := (declPair Guest.Software.guestFn_fp6_set_one).2.2
def b_fp6_set_one : Nat := 274877907021
theorem cost_fp6_set_one : Cost σ guestCtx body_fp6_set_one b_fp6_set_one := ConstCost.Core.analyze_sound table26_sound (by cbv)
theorem cc_fp6_set_one : CalleeCost σ guestCtx (nm "fp6_set_one") b_fp6_set_one := by
  have hc : ∃ rs, guestCode (nm "fp6_set_one") = some ((declPair Guest.Software.guestFn_fp6_set_one).2.1,body_fp6_set_one,rs) :=
    declPair_valid (List.getElem_mem (n := 740) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fp6_set_one
def table27 := ConstCost.Core.extend table26 (nm "fp6_set_one") b_fp6_set_one
theorem table27_sound : TblSound σ guestCtx table27 := ConstCost.Core.extend_sound table26_sound cc_fp6_set_one
#print axioms cc_fp6_set_one
end InitECandidate.Solver.MemSafe.BlsCost.Callees
