import InitECandidate.Solver.MemSafe.FqCost.ModexpRetable.S006
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.ModexpRetable
variable {σ : Type}
def body_generic_create := (declPair Guest.Software.guestFn_generic_create).2.2
def b_generic_create : Nat := 2157824086407895907311183822193883212349806
theorem cost_generic_create : Cost σ guestCtx body_generic_create b_generic_create := FqCost.CombCore.analyze_sound table6_sound (by cbv)
theorem cc_generic_create : CalleeCost σ guestCtx (nm "generic_create") b_generic_create := by
 have hc : guestCode (nm "generic_create") = some ((declPair Guest.Software.guestFn_generic_create).2.1,body_generic_create,(fnEntry Guest.Software.guestFn_generic_create).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 598) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_generic_create
def table7 := FqCost.CombCore.extend table6 (nm "generic_create") b_generic_create
theorem table7_sound : TblSound σ guestCtx table7 := FqCost.CombCore.extend_sound table6_sound cc_generic_create
#print axioms cc_generic_create
end InitECandidate.Solver.MemSafe.FqCost.ModexpRetable
