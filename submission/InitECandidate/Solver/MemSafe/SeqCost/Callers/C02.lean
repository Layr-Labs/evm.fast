import InitECandidate.Solver.MemSafe.SeqCost.Callers.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.SeqCost.Callers
variable {σ : Type}
def body_keccak_absorb_block := (declPair Guest.Software.guestFn_keccak_absorb_block).2.2
def b_keccak_absorb_block : Nat := 34359738403
theorem cost_keccak_absorb_block : Cost σ guestCtx body_keccak_absorb_block b_keccak_absorb_block :=
  SeqCost.Analyzer.analyze_sound table1_sound (by cbv)
theorem cc_keccak_absorb_block : CalleeCost σ guestCtx (nm "keccak_absorb_block") b_keccak_absorb_block := by
  have hc : ∃ rs, guestCode (nm "keccak_absorb_block") = some ((declPair Guest.Software.guestFn_keccak_absorb_block).2.1,body_keccak_absorb_block,rs) :=
    declPair_valid (List.getElem_mem (n := 102) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact SeqCost.Analyzer.callee_of_body hc cost_keccak_absorb_block
def table2 := SeqCost.Analyzer.extend table1 (nm "keccak_absorb_block") b_keccak_absorb_block
theorem table2_sound : TblSound σ guestCtx table2 := SeqCost.Analyzer.extend_sound table1_sound cc_keccak_absorb_block
#print axioms cc_keccak_absorb_block
end InitECandidate.Solver.MemSafe.SeqCost.Callers
