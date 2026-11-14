import InitECandidate.Solver.MemSafe.BlsCost.Callees.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_bls_fp_encode64 := (declPair Guest.Software.guestFn_bls_fp_encode64).2.2
def b_bls_fp_encode64 : Nat := 137438953609
theorem cost_bls_fp_encode64 : Cost σ guestCtx body_bls_fp_encode64 b_bls_fp_encode64 := ConstCost.Core.analyze_sound table1_sound (by cbv)
theorem cc_bls_fp_encode64 : CalleeCost σ guestCtx (nm "bls_fp_encode64") b_bls_fp_encode64 := by
  have hc : ∃ rs, guestCode (nm "bls_fp_encode64") = some ((declPair Guest.Software.guestFn_bls_fp_encode64).2.1,body_bls_fp_encode64,rs) :=
    declPair_valid (List.getElem_mem (n := 720) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_bls_fp_encode64
def table2 := ConstCost.Core.extend table1 (nm "bls_fp_encode64") b_bls_fp_encode64
theorem table2_sound : TblSound σ guestCtx table2 := ConstCost.Core.extend_sound table1_sound cc_bls_fp_encode64
#print axioms cc_bls_fp_encode64
end InitECandidate.Solver.MemSafe.BlsCost.Callees
