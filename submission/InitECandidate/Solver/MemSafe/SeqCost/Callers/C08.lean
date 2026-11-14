import InitECandidate.Solver.MemSafe.SeqCost.Callers.C07
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.SeqCost.Callers
variable {σ : Type}
def body_encode_receipt := (declPair Guest.Software.guestFn_encode_receipt).2.2
def b_encode_receipt : Nat := 215679573588289188065103678852562717511064064908634718526621746201454
theorem cost_encode_receipt : Cost σ guestCtx body_encode_receipt b_encode_receipt :=
  SeqCost.Analyzer.analyze_sound table7_sound (by cbv)
theorem cc_encode_receipt : CalleeCost σ guestCtx (nm "encode_receipt") b_encode_receipt := by
  have hc : ∃ rs, guestCode (nm "encode_receipt") = some ((declPair Guest.Software.guestFn_encode_receipt).2.1,body_encode_receipt,rs) :=
    declPair_valid (List.getElem_mem (n := 836) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact SeqCost.Analyzer.callee_of_body hc cost_encode_receipt
def table8 := SeqCost.Analyzer.extend table7 (nm "encode_receipt") b_encode_receipt
theorem table8_sound : TblSound σ guestCtx table8 := SeqCost.Analyzer.extend_sound table7_sound cc_encode_receipt
#print axioms cc_encode_receipt
end InitECandidate.Solver.MemSafe.SeqCost.Callers
