import InitECandidate.Solver.MemSafe.RlpCost.Callers.C22
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_decode_transaction_rlp := (declPair Guest.Software.guestFn_decode_transaction_rlp).2.2
def b_decode_transaction_rlp : Nat := 59469261873183065602777673956780415354270591492827603085434754
theorem cost_decode_transaction_rlp : Cost σ guestCtx body_decode_transaction_rlp b_decode_transaction_rlp :=
  ArenaCost.Analyzer.analyze_sound table22_sound (by cbv)
theorem cc_decode_transaction_rlp : CalleeCost σ guestCtx (nm "decode_transaction_rlp") b_decode_transaction_rlp := by
  have hc : ∃ rs, guestCode (nm "decode_transaction_rlp") =
      some ((declPair Guest.Software.guestFn_decode_transaction_rlp).2.1,body_decode_transaction_rlp,rs) :=
    declPair_valid (List.getElem_mem (n := 306) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_decode_transaction_rlp
def table23 := ArenaCost.Analyzer.extend table22 (nm "decode_transaction_rlp") b_decode_transaction_rlp
theorem table23_sound : TblSound σ guestCtx table23 := ArenaCost.Analyzer.extend_sound table22_sound cc_decode_transaction_rlp
#print axioms cc_decode_transaction_rlp
end InitECandidate.Solver.MemSafe.RlpCost.Callers
