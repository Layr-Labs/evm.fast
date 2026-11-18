import InitECandidate.Solver.MemSafe.SlotCost.Callees.C02
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.SlotCost.Callees
variable {σ : Type}
def body_bal_encode_account := (declPair Guest.Software.guestFn_bal_encode_account).2.2
def b_bal_encode_account : Nat := 313352918870762280974800438014088720492472113360106175932277827
theorem cost_bal_encode_account : Cost σ guestCtx body_bal_encode_account b_bal_encode_account := SlotCost.Core.analyze_sound table2_sound (by cbv)
theorem cc_bal_encode_account : CalleeCost σ guestCtx (nm "bal_encode_account") b_bal_encode_account := by
 have hc : ∃ rs, guestCode (nm "bal_encode_account") = some ((declPair Guest.Software.guestFn_bal_encode_account).2.1,body_bal_encode_account,rs) :=
  declPair_valid (List.getElem_mem (n := 432) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact SlotCost.Core.callee_of_body hc cost_bal_encode_account
def table3 := SlotCost.Core.extend table2 (nm "bal_encode_account") b_bal_encode_account
theorem table3_sound : TblSound σ guestCtx table3 := SlotCost.Core.extend_sound table2_sound cc_bal_encode_account
#print axioms cc_bal_encode_account
end InitECandidate.Solver.MemSafe.SlotCost.Callees
