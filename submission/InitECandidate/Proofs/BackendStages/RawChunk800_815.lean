import InitECandidate.Proofs.BackendStages.Chunk800_815
import InitECandidate.Proofs.BackendStages.Raw800
import InitECandidate.Proofs.BackendStages.Raw801
import InitECandidate.Proofs.BackendStages.Raw802
import InitECandidate.Proofs.BackendStages.Raw803
import InitECandidate.Proofs.BackendStages.Raw804
import InitECandidate.Proofs.BackendStages.Raw805
import InitECandidate.Proofs.BackendStages.Raw806
import InitECandidate.Proofs.BackendStages.Raw807
import InitECandidate.Proofs.BackendStages.Raw808
import InitECandidate.Proofs.BackendStages.Raw809
import InitECandidate.Proofs.BackendStages.Raw810
import InitECandidate.Proofs.BackendStages.Raw811
import InitECandidate.Proofs.BackendStages.Raw812
import InitECandidate.Proofs.BackendStages.Raw813
import InitECandidate.Proofs.BackendStages.Raw814
import InitECandidate.Proofs.BackendStages.Raw815
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk800_815
def bodies : List (Nat × StackLang.HolProg 64) := [(800, raw800), (801, raw801), (802, raw802), (803, raw803), (804, raw804), (805, raw805), (806, raw806), (807, raw807), (808, raw808), (809, raw809), (810, raw810), (811, raw811), (812, raw812), (813, raw813), (814, raw814), (815, raw815)]
theorem compiled_eq : Chunk800_815.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(800, StackRawCall.compTop RawInfo.rawInfo (function800 (.list [])).1), (801, StackRawCall.compTop RawInfo.rawInfo (function801 (.list [])).1), (802, StackRawCall.compTop RawInfo.rawInfo (function802 (.list [])).1), (803, StackRawCall.compTop RawInfo.rawInfo (function803 (.list [])).1), (804, StackRawCall.compTop RawInfo.rawInfo (function804 (.list [])).1), (805, StackRawCall.compTop RawInfo.rawInfo (function805 (.list [])).1), (806, StackRawCall.compTop RawInfo.rawInfo (function806 (.list [])).1), (807, StackRawCall.compTop RawInfo.rawInfo (function807 (.list [])).1), (808, StackRawCall.compTop RawInfo.rawInfo (function808 (.list [])).1), (809, StackRawCall.compTop RawInfo.rawInfo (function809 (.list [])).1), (810, StackRawCall.compTop RawInfo.rawInfo (function810 (.list [])).1), (811, StackRawCall.compTop RawInfo.rawInfo (function811 (.list [])).1), (812, StackRawCall.compTop RawInfo.rawInfo (function812 (.list [])).1), (813, StackRawCall.compTop RawInfo.rawInfo (function813 (.list [])).1), (814, StackRawCall.compTop RawInfo.rawInfo (function814 (.list [])).1), (815, StackRawCall.compTop RawInfo.rawInfo (function815 (.list [])).1)] = bodies
  rw [raw800_eq, raw801_eq, raw802_eq, raw803_eq, raw804_eq, raw805_eq, raw806_eq, raw807_eq, raw808_eq, raw809_eq, raw810_eq, raw811_eq, raw812_eq, raw813_eq, raw814_eq, raw815_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk800_815
