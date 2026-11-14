import InitECandidate.Solver.MemSafe.BlsCost.Callees.C36
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_pair_ell := (declPair Guest.Software.guestFn_pair_ell).2.2
def b_pair_ell : Nat := 687194774593
theorem cost_pair_ell : Cost σ guestCtx body_pair_ell b_pair_ell := ConstCost.Core.analyze_sound table36_sound (by cbv)
theorem cc_pair_ell : CalleeCost σ guestCtx (nm "pair_ell") b_pair_ell := by
  have hc : ∃ rs, guestCode (nm "pair_ell") = some ((declPair Guest.Software.guestFn_pair_ell).2.1,body_pair_ell,rs) :=
    declPair_valid (List.getElem_mem (n := 784) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_pair_ell
def table37 := ConstCost.Core.extend table36 (nm "pair_ell") b_pair_ell
theorem table37_sound : TblSound σ guestCtx table37 := ConstCost.Core.extend_sound table36_sound cc_pair_ell
#print axioms cc_pair_ell
end InitECandidate.Solver.MemSafe.BlsCost.Callees
