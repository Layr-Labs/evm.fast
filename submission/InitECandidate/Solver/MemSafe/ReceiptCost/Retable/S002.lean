import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S001
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_logs_bloom := (declPair Guest.Software.guestFn_logs_bloom).2.2
def b_logs_bloom : Nat := 50216813962014534606861711611598619423386078975514065765309
theorem cost_logs_bloom : Cost σ guestCtx body_logs_bloom b_logs_bloom := FqCost.CombCore.analyze_sound table1_sound (by cbv)
theorem cc_logs_bloom : CalleeCost σ guestCtx (nm "logs_bloom") b_logs_bloom := by
 have hc : guestCode (nm "logs_bloom") = some ((declPair Guest.Software.guestFn_logs_bloom).2.1,body_logs_bloom,(fnEntry Guest.Software.guestFn_logs_bloom).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 832) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_logs_bloom
def table2 := FqCost.CombCore.extend table1 (nm "logs_bloom") b_logs_bloom
theorem table2_sound : TblSound σ guestCtx table2 := FqCost.CombCore.extend_sound table1_sound cc_logs_bloom
#print axioms cc_logs_bloom
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
