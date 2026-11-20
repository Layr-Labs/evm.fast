import InitECandidate.Solver.Improvements.FourthDecoderTable
import InitECandidate.Solver.SourceCost.Shards.All

/-! Actual baseline soundness bridge. This is a separate replay gate; the
parameterized table theorem never treats literal table data as its soundness. -/
set_option autoImplicit false
namespace FourthDecoderActual
open Flapjack
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem sound {σ : Type} : StateSound σ guestCtx FourthDecoderTable.state :=
  FourthDecoderTable.state_sound (Shards.finalState_sound_guest (σ := σ))

theorem decoder_cost {σ : Type} :
    CalleeCost σ guestCtx (nm "decode_transaction") FourthDecoderTable.expectedDecoderCost :=
  FourthDecoderTable.decoder_cost (Shards.finalState_sound_guest (σ := σ))

#print axioms sound
#print axioms decoder_cost
end FourthDecoderActual
