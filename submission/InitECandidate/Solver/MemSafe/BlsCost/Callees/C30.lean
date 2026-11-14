import InitECandidate.Solver.MemSafe.BlsCost.Callees.C29
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_fp12_pow_absx := (declPair Guest.Software.guestFn_fp12_pow_absx).2.2
def b_fp12_pow_absx : Nat := 15211807455662060814103929173592
theorem cost_fp12_pow_absx : Cost σ guestCtx body_fp12_pow_absx b_fp12_pow_absx := ConstCost.Core.analyze_sound table29_sound (by cbv)
theorem cc_fp12_pow_absx : CalleeCost σ guestCtx (nm "fp12_pow_absx") b_fp12_pow_absx := by
  have hc : ∃ rs, guestCode (nm "fp12_pow_absx") = some ((declPair Guest.Software.guestFn_fp12_pow_absx).2.1,body_fp12_pow_absx,rs) :=
    declPair_valid (List.getElem_mem (n := 755) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fp12_pow_absx
def table30 := ConstCost.Core.extend table29 (nm "fp12_pow_absx") b_fp12_pow_absx
theorem table30_sound : TblSound σ guestCtx table30 := ConstCost.Core.extend_sound table29_sound cc_fp12_pow_absx
#print axioms cc_fp12_pow_absx
end InitECandidate.Solver.MemSafe.BlsCost.Callees
