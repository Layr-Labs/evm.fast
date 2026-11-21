import InitECandidate.Solver.MemSafe.RlpCost.Callers.C23
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_decode_transaction := (declPair Guest.Software.guestFn_decode_transaction).2.2
def b_decode_transaction : Nat := 59469261873183065602777673956780415354270591492827603085434755
theorem cost_decode_transaction : Cost σ guestCtx body_decode_transaction b_decode_transaction :=
  ArenaCost.Analyzer.analyze_sound table23_sound (by cbv)
theorem cc_decode_transaction : CalleeCost σ guestCtx (nm "decode_transaction") b_decode_transaction := by
  have hc : ∃ rs, guestCode (nm "decode_transaction") =
      some ((declPair Guest.Software.guestFn_decode_transaction).2.1,body_decode_transaction,rs) :=
    declPair_valid (List.getElem_mem (n := 307) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_decode_transaction
def table24 := ArenaCost.Analyzer.extend table23 (nm "decode_transaction") b_decode_transaction
theorem table24_sound : TblSound σ guestCtx table24 := ArenaCost.Analyzer.extend_sound table23_sound cc_decode_transaction
#print axioms cc_decode_transaction
end InitECandidate.Solver.MemSafe.RlpCost.Callers
