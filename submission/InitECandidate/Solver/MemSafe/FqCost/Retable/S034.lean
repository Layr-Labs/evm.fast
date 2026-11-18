import InitECandidate.Solver.MemSafe.FqCost.Retable.S033
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_fq12_frob := (declPair Guest.Software.guestFn_fq12_frob).2.2
def b_fq12_frob : Nat := 8638
theorem cost_fq12_frob : Cost σ guestCtx body_fq12_frob b_fq12_frob := FqCost.CombCore.analyze_sound table33_sound (by cbv)
theorem cc_fq12_frob : CalleeCost σ guestCtx (nm "fq12_frob") b_fq12_frob := by
 have hc : guestCode (nm "fq12_frob") = some ((declPair Guest.Software.guestFn_fq12_frob).2.1,body_fq12_frob,(fnEntry Guest.Software.guestFn_fq12_frob).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 679) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_fq12_frob
def table34 := FqCost.CombCore.extend table33 (nm "fq12_frob") b_fq12_frob
theorem table34_sound : TblSound σ guestCtx table34 := FqCost.CombCore.extend_sound table33_sound cc_fq12_frob
#print axioms cc_fq12_frob
end InitECandidate.Solver.MemSafe.FqCost.Retable
