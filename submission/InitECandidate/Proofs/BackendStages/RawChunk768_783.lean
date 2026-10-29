import InitECandidate.Proofs.BackendStages.Chunk768_783
import InitECandidate.Proofs.BackendStages.Raw768
import InitECandidate.Proofs.BackendStages.Raw769
import InitECandidate.Proofs.BackendStages.Raw770
import InitECandidate.Proofs.BackendStages.Raw771
import InitECandidate.Proofs.BackendStages.Raw772
import InitECandidate.Proofs.BackendStages.Raw773
import InitECandidate.Proofs.BackendStages.Raw774
import InitECandidate.Proofs.BackendStages.Raw775
import InitECandidate.Proofs.BackendStages.Raw776
import InitECandidate.Proofs.BackendStages.Raw777
import InitECandidate.Proofs.BackendStages.Raw778
import InitECandidate.Proofs.BackendStages.Raw779
import InitECandidate.Proofs.BackendStages.Raw780
import InitECandidate.Proofs.BackendStages.Raw781
import InitECandidate.Proofs.BackendStages.Raw782
import InitECandidate.Proofs.BackendStages.Raw783
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk768_783
def bodies : List (Nat × StackLang.HolProg 64) := [(768, raw768), (769, raw769), (770, raw770), (771, raw771), (772, raw772), (773, raw773), (774, raw774), (775, raw775), (776, raw776), (777, raw777), (778, raw778), (779, raw779), (780, raw780), (781, raw781), (782, raw782), (783, raw783)]
theorem compiled_eq : Chunk768_783.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(768, StackRawCall.compTop RawInfo.rawInfo (function768 (.list [])).1), (769, StackRawCall.compTop RawInfo.rawInfo (function769 (.list [])).1), (770, StackRawCall.compTop RawInfo.rawInfo (function770 (.list [])).1), (771, StackRawCall.compTop RawInfo.rawInfo (function771 (.list [])).1), (772, StackRawCall.compTop RawInfo.rawInfo (function772 (.list [])).1), (773, StackRawCall.compTop RawInfo.rawInfo (function773 (.list [])).1), (774, StackRawCall.compTop RawInfo.rawInfo (function774 (.list [])).1), (775, StackRawCall.compTop RawInfo.rawInfo (function775 (.list [])).1), (776, StackRawCall.compTop RawInfo.rawInfo (function776 (.list [])).1), (777, StackRawCall.compTop RawInfo.rawInfo (function777 (.list [])).1), (778, StackRawCall.compTop RawInfo.rawInfo (function778 (.list [])).1), (779, StackRawCall.compTop RawInfo.rawInfo (function779 (.list [])).1), (780, StackRawCall.compTop RawInfo.rawInfo (function780 (.list [])).1), (781, StackRawCall.compTop RawInfo.rawInfo (function781 (.list [])).1), (782, StackRawCall.compTop RawInfo.rawInfo (function782 (.list [])).1), (783, StackRawCall.compTop RawInfo.rawInfo (function783 (.list [])).1)] = bodies
  rw [raw768_eq, raw769_eq, raw770_eq, raw771_eq, raw772_eq, raw773_eq, raw774_eq, raw775_eq, raw776_eq, raw777_eq, raw778_eq, raw779_eq, raw780_eq, raw781_eq, raw782_eq, raw783_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk768_783
