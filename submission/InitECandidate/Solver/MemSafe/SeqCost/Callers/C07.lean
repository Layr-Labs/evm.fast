import InitECandidate.Solver.MemSafe.SeqCost.Callers.C06
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.SeqCost.Callers
variable {σ : Type}
def body_encode_logs := (declPair Guest.Software.guestFn_encode_logs).2.2
def b_encode_logs : Nat := 12554203517541413941996849525559485568016016372826470613267
theorem cost_encode_logs : Cost σ guestCtx body_encode_logs b_encode_logs :=
  SeqCost.Analyzer.analyze_sound table6_sound (by cbv)
theorem cc_encode_logs : CalleeCost σ guestCtx (nm "encode_logs") b_encode_logs := by
  have hc : ∃ rs, guestCode (nm "encode_logs") = some ((declPair Guest.Software.guestFn_encode_logs).2.1,body_encode_logs,rs) :=
    declPair_valid (List.getElem_mem (n := 835) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact SeqCost.Analyzer.callee_of_body hc cost_encode_logs
def table7 := SeqCost.Analyzer.extend table6 (nm "encode_logs") b_encode_logs
theorem table7_sound : TblSound σ guestCtx table7 := SeqCost.Analyzer.extend_sound table6_sound cc_encode_logs
#print axioms cc_encode_logs
end InitECandidate.Solver.MemSafe.SeqCost.Callers
