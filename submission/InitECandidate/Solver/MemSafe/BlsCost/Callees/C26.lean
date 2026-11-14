import InitECandidate.Solver.MemSafe.BlsCost.Callees.C25
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_fp12_mul := (declPair Guest.Software.guestFn_fp12_mul).2.2
def b_fp12_mul : Nat := 412316867270
theorem cost_fp12_mul : Cost σ guestCtx body_fp12_mul b_fp12_mul := ConstCost.Core.analyze_sound table25_sound (by cbv)
theorem cc_fp12_mul : CalleeCost σ guestCtx (nm "fp12_mul") b_fp12_mul := by
  have hc : ∃ rs, guestCode (nm "fp12_mul") = some ((declPair Guest.Software.guestFn_fp12_mul).2.1,body_fp12_mul,rs) :=
    declPair_valid (List.getElem_mem (n := 750) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fp12_mul
def table26 := ConstCost.Core.extend table25 (nm "fp12_mul") b_fp12_mul
theorem table26_sound : TblSound σ guestCtx table26 := ConstCost.Core.extend_sound table25_sound cc_fp12_mul
#print axioms cc_fp12_mul
end InitECandidate.Solver.MemSafe.BlsCost.Callees
