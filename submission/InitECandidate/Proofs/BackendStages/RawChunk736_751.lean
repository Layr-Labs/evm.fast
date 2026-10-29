import InitECandidate.Proofs.BackendStages.Chunk736_751
import InitECandidate.Proofs.BackendStages.Raw736
import InitECandidate.Proofs.BackendStages.Raw737
import InitECandidate.Proofs.BackendStages.Raw738
import InitECandidate.Proofs.BackendStages.Raw739
import InitECandidate.Proofs.BackendStages.Raw740
import InitECandidate.Proofs.BackendStages.Raw741
import InitECandidate.Proofs.BackendStages.Raw742
import InitECandidate.Proofs.BackendStages.Raw743
import InitECandidate.Proofs.BackendStages.Raw744
import InitECandidate.Proofs.BackendStages.Raw745
import InitECandidate.Proofs.BackendStages.Raw746
import InitECandidate.Proofs.BackendStages.Raw747
import InitECandidate.Proofs.BackendStages.Raw748
import InitECandidate.Proofs.BackendStages.Raw749
import InitECandidate.Proofs.BackendStages.Raw750
import InitECandidate.Proofs.BackendStages.Raw751
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk736_751
def bodies : List (Nat × StackLang.HolProg 64) := [(736, raw736), (737, raw737), (738, raw738), (739, raw739), (740, raw740), (741, raw741), (742, raw742), (743, raw743), (744, raw744), (745, raw745), (746, raw746), (747, raw747), (748, raw748), (749, raw749), (750, raw750), (751, raw751)]
theorem compiled_eq : Chunk736_751.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(736, StackRawCall.compTop RawInfo.rawInfo (function736 (.list [])).1), (737, StackRawCall.compTop RawInfo.rawInfo (function737 (.list [])).1), (738, StackRawCall.compTop RawInfo.rawInfo (function738 (.list [])).1), (739, StackRawCall.compTop RawInfo.rawInfo (function739 (.list [])).1), (740, StackRawCall.compTop RawInfo.rawInfo (function740 (.list [])).1), (741, StackRawCall.compTop RawInfo.rawInfo (function741 (.list [])).1), (742, StackRawCall.compTop RawInfo.rawInfo (function742 (.list [])).1), (743, StackRawCall.compTop RawInfo.rawInfo (function743 (.list [])).1), (744, StackRawCall.compTop RawInfo.rawInfo (function744 (.list [])).1), (745, StackRawCall.compTop RawInfo.rawInfo (function745 (.list [])).1), (746, StackRawCall.compTop RawInfo.rawInfo (function746 (.list [])).1), (747, StackRawCall.compTop RawInfo.rawInfo (function747 (.list [])).1), (748, StackRawCall.compTop RawInfo.rawInfo (function748 (.list [])).1), (749, StackRawCall.compTop RawInfo.rawInfo (function749 (.list [])).1), (750, StackRawCall.compTop RawInfo.rawInfo (function750 (.list [])).1), (751, StackRawCall.compTop RawInfo.rawInfo (function751 (.list [])).1)] = bodies
  rw [raw736_eq, raw737_eq, raw738_eq, raw739_eq, raw740_eq, raw741_eq, raw742_eq, raw743_eq, raw744_eq, raw745_eq, raw746_eq, raw747_eq, raw748_eq, raw749_eq, raw750_eq, raw751_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk736_751
