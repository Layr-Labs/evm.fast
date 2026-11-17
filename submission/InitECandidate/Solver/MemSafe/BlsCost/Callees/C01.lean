import InitECandidate.Solver.MemSafe.BlsCost.Seed
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_bls_fp_decode64 := (declPair Guest.Software.guestFn_bls_fp_decode64).2.2
def b_bls_fp_decode64 : Nat := 34359738455
theorem cost_bls_fp_decode64 : Cost σ guestCtx body_bls_fp_decode64 b_bls_fp_decode64 := ConstCost.Core.analyze_sound table0_sound (by cbv)
theorem cc_bls_fp_decode64 : CalleeCost σ guestCtx (nm "bls_fp_decode64") b_bls_fp_decode64 := by
  have hc : ∃ rs, guestCode (nm "bls_fp_decode64") = some ((declPair Guest.Software.guestFn_bls_fp_decode64).2.1,body_bls_fp_decode64,rs) :=
    declPair_valid (List.getElem_mem (n := 719) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_bls_fp_decode64
def table1 := ConstCost.Core.extend table0 (nm "bls_fp_decode64") b_bls_fp_decode64
theorem table1_sound : TblSound σ guestCtx table1 := ConstCost.Core.extend_sound table0_sound cc_bls_fp_decode64
#print axioms cc_bls_fp_decode64
end InitECandidate.Solver.MemSafe.BlsCost.Callees
