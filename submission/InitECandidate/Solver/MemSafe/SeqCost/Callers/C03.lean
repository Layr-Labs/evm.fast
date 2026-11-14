import InitECandidate.Solver.MemSafe.SeqCost.Callers.C02
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.SeqCost.Callers
variable {σ : Type}
def body_keccak256 := (declPair Guest.Software.guestFn_keccak256).2.2
def b_keccak256 : Nat := 633825300796644232094080303325
theorem cost_keccak256 : Cost σ guestCtx body_keccak256 b_keccak256 :=
  SeqCost.Analyzer.analyze_sound table2_sound (by cbv)
theorem cc_keccak256 : CalleeCost σ guestCtx (nm "keccak256") b_keccak256 := by
  have hc : ∃ rs, guestCode (nm "keccak256") = some ((declPair Guest.Software.guestFn_keccak256).2.1,body_keccak256,rs) :=
    declPair_valid (List.getElem_mem (n := 103) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact SeqCost.Analyzer.callee_of_body hc cost_keccak256
def table3 := SeqCost.Analyzer.extend table2 (nm "keccak256") b_keccak256
theorem table3_sound : TblSound σ guestCtx table3 := SeqCost.Analyzer.extend_sound table2_sound cc_keccak256
#print axioms cc_keccak256
end InitECandidate.Solver.MemSafe.SeqCost.Callers
