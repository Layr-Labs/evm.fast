import InitECandidate.Solver.MemSafe.FqCost.Retable.S054
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_ripemd160_block := (declPair Guest.Software.guestFn_ripemd160_block).2.2
def b_ripemd160_block : Nat := 422
theorem cost_ripemd160_block : Cost σ guestCtx body_ripemd160_block b_ripemd160_block := FqCost.CombCore.analyze_sound table54_sound (by cbv)
theorem cc_ripemd160_block : CalleeCost σ guestCtx (nm "ripemd160_block") b_ripemd160_block := by
 have hc : guestCode (nm "ripemd160_block") = some ((declPair Guest.Software.guestFn_ripemd160_block).2.1,body_ripemd160_block,(fnEntry Guest.Software.guestFn_ripemd160_block).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 616) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_ripemd160_block
def table55 := FqCost.CombCore.extend table54 (nm "ripemd160_block") b_ripemd160_block
theorem table55_sound : TblSound σ guestCtx table55 := FqCost.CombCore.extend_sound table54_sound cc_ripemd160_block
#print axioms cc_ripemd160_block
end InitECandidate.Solver.MemSafe.FqCost.Retable
