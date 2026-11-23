import InitECandidate.Solver.Improvements.FourthEncoderEntry
import InitECandidate.Solver.MemSafe.BalEnc.Callee

set_option autoImplicit false
namespace FourthBalEncodeCallee
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Aw
open InitECandidate.Solver.MemSafe.BalEnc
variable {σ : Type}

abbrev EncoderArgs {σ : Type} := FourthEncoderEntry.EncoderArgs (σ := σ)
abbrev encoderCost := FourthEncoderEntry.encoderCost

theorem callee_cost {a : AwE σ} (hK : AwOK a) (hc : CsE a) :
    Inv.CalleeCostP σ guestCtx (AcceptedIvvhCalleeCore.nm "bal_encode_account")
      (fun vs s => AwInv a s ∧ FourthEncoderEntry.EncoderArgs a vs s) encoderCost :=
  FourthEncoderEntry.callee_cost hK
    ⟨asp_sorted_keys32 hK hc, @obj_field σ a hc⟩

theorem encoderCost_eq : encoderCost = 3208735998555252714819233928615786852737430723290857917009996847028 := FourthEncoderEntry.encoderCost_eq
#print axioms callee_cost
end FourthBalEncodeCallee
