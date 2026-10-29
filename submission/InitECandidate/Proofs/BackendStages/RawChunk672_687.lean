import InitECandidate.Proofs.BackendStages.Chunk672_687
import InitECandidate.Proofs.BackendStages.Raw672
import InitECandidate.Proofs.BackendStages.Raw673
import InitECandidate.Proofs.BackendStages.Raw674
import InitECandidate.Proofs.BackendStages.Raw675
import InitECandidate.Proofs.BackendStages.Raw676
import InitECandidate.Proofs.BackendStages.Raw677
import InitECandidate.Proofs.BackendStages.Raw678
import InitECandidate.Proofs.BackendStages.Raw679
import InitECandidate.Proofs.BackendStages.Raw680
import InitECandidate.Proofs.BackendStages.Raw681
import InitECandidate.Proofs.BackendStages.Raw682
import InitECandidate.Proofs.BackendStages.Raw683
import InitECandidate.Proofs.BackendStages.Raw684
import InitECandidate.Proofs.BackendStages.Raw685
import InitECandidate.Proofs.BackendStages.Raw686
import InitECandidate.Proofs.BackendStages.Raw687
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk672_687
def bodies : List (Nat × StackLang.HolProg 64) := [(672, raw672), (673, raw673), (674, raw674), (675, raw675), (676, raw676), (677, raw677), (678, raw678), (679, raw679), (680, raw680), (681, raw681), (682, raw682), (683, raw683), (684, raw684), (685, raw685), (686, raw686), (687, raw687)]
theorem compiled_eq : Chunk672_687.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(672, StackRawCall.compTop RawInfo.rawInfo (function672 (.list [])).1), (673, StackRawCall.compTop RawInfo.rawInfo (function673 (.list [])).1), (674, StackRawCall.compTop RawInfo.rawInfo (function674 (.list [])).1), (675, StackRawCall.compTop RawInfo.rawInfo (function675 (.list [])).1), (676, StackRawCall.compTop RawInfo.rawInfo (function676 (.list [])).1), (677, StackRawCall.compTop RawInfo.rawInfo (function677 (.list [])).1), (678, StackRawCall.compTop RawInfo.rawInfo (function678 (.list [])).1), (679, StackRawCall.compTop RawInfo.rawInfo (function679 (.list [])).1), (680, StackRawCall.compTop RawInfo.rawInfo (function680 (.list [])).1), (681, StackRawCall.compTop RawInfo.rawInfo (function681 (.list [])).1), (682, StackRawCall.compTop RawInfo.rawInfo (function682 (.list [])).1), (683, StackRawCall.compTop RawInfo.rawInfo (function683 (.list [])).1), (684, StackRawCall.compTop RawInfo.rawInfo (function684 (.list [])).1), (685, StackRawCall.compTop RawInfo.rawInfo (function685 (.list [])).1), (686, StackRawCall.compTop RawInfo.rawInfo (function686 (.list [])).1), (687, StackRawCall.compTop RawInfo.rawInfo (function687 (.list [])).1)] = bodies
  rw [raw672_eq, raw673_eq, raw674_eq, raw675_eq, raw676_eq, raw677_eq, raw678_eq, raw679_eq, raw680_eq, raw681_eq, raw682_eq, raw683_eq, raw684_eq, raw685_eq, raw686_eq, raw687_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk672_687
