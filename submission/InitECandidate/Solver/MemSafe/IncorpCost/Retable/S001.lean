import InitECandidate.Solver.MemSafe.IncorpCost.Retable.Base
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.IncorpCost.Retable
variable {σ : Type}
def body_htab_union_into := (declPair Guest.Software.guestFn_htab_union_into).2.2
def b_htab_union_into : Nat := 38029518017527546865640510849603
theorem cost_htab_union_into : Cost σ guestCtx body_htab_union_into b_htab_union_into := FqCost.CombCore.analyze_sound table0_sound (by cbv)
theorem cc_htab_union_into : CalleeCost σ guestCtx (nm "htab_union_into") b_htab_union_into := by
 have hc : guestCode (nm "htab_union_into") = some ((declPair Guest.Software.guestFn_htab_union_into).2.1,body_htab_union_into,(fnEntry Guest.Software.guestFn_htab_union_into).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 400) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_htab_union_into
def table1 := FqCost.CombCore.extend table0 (nm "htab_union_into") b_htab_union_into
theorem table1_sound : TblSound σ guestCtx table1 := FqCost.CombCore.extend_sound table0_sound cc_htab_union_into
#print axioms cc_htab_union_into
end InitECandidate.Solver.MemSafe.IncorpCost.Retable
