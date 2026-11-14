import InitECandidate.Solver.MemSafe.BlsCost.Callees.C31
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_fp12_inv := (declPair Guest.Software.guestFn_fp12_inv).2.2
def b_fp12_inv : Nat := 412322802996
theorem cost_fp12_inv : Cost σ guestCtx body_fp12_inv b_fp12_inv := ConstCost.Core.analyze_sound table31_sound (by cbv)
theorem cc_fp12_inv : CalleeCost σ guestCtx (nm "fp12_inv") b_fp12_inv := by
  have hc : ∃ rs, guestCode (nm "fp12_inv") = some ((declPair Guest.Software.guestFn_fp12_inv).2.1,body_fp12_inv,rs) :=
    declPair_valid (List.getElem_mem (n := 753) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fp12_inv
def table32 := ConstCost.Core.extend table31 (nm "fp12_inv") b_fp12_inv
theorem table32_sound : TblSound σ guestCtx table32 := ConstCost.Core.extend_sound table31_sound cc_fp12_inv
#print axioms cc_fp12_inv
end InitECandidate.Solver.MemSafe.BlsCost.Callees
