import InitECandidate.Solver.MemSafe.BlsCost.Callees.C22
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_fp12_conj := (declPair Guest.Software.guestFn_fp12_conj).2.2
def b_fp12_conj : Nat := 137438953532
theorem cost_fp12_conj : Cost σ guestCtx body_fp12_conj b_fp12_conj := ConstCost.Core.analyze_sound table22_sound (by cbv)
theorem cc_fp12_conj : CalleeCost σ guestCtx (nm "fp12_conj") b_fp12_conj := by
  have hc : ∃ rs, guestCode (nm "fp12_conj") = some ((declPair Guest.Software.guestFn_fp12_conj).2.1,body_fp12_conj,rs) :=
    declPair_valid (List.getElem_mem (n := 752) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fp12_conj
def table23 := ConstCost.Core.extend table22 (nm "fp12_conj") b_fp12_conj
theorem table23_sound : TblSound σ guestCtx table23 := ConstCost.Core.extend_sound table22_sound cc_fp12_conj
#print axioms cc_fp12_conj
end InitECandidate.Solver.MemSafe.BlsCost.Callees
