import InitECandidate.Solver.MemSafe.FqCost.Retable.S060
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_precompile_index := (declPair Guest.Software.guestFn_precompile_index).2.2
def b_precompile_index : Nat := 34359738378
theorem cost_precompile_index : Cost σ guestCtx body_precompile_index b_precompile_index := FqCost.CombCore.analyze_sound table60_sound (by cbv)
theorem cc_precompile_index : CalleeCost σ guestCtx (nm "precompile_index") b_precompile_index := by
 have hc : guestCode (nm "precompile_index") = some ((declPair Guest.Software.guestFn_precompile_index).2.1,body_precompile_index,(fnEntry Guest.Software.guestFn_precompile_index).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 822) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_precompile_index
def table61 := FqCost.CombCore.extend table60 (nm "precompile_index") b_precompile_index
theorem table61_sound : TblSound σ guestCtx table61 := FqCost.CombCore.extend_sound table60_sound cc_precompile_index
#print axioms cc_precompile_index
end InitECandidate.Solver.MemSafe.FqCost.Retable
