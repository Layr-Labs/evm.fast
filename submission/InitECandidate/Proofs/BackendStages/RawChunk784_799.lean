import InitECandidate.Proofs.BackendStages.Chunk784_799
import InitECandidate.Proofs.BackendStages.Raw784
import InitECandidate.Proofs.BackendStages.Raw785
import InitECandidate.Proofs.BackendStages.Raw786
import InitECandidate.Proofs.BackendStages.Raw787
import InitECandidate.Proofs.BackendStages.Raw788
import InitECandidate.Proofs.BackendStages.Raw789
import InitECandidate.Proofs.BackendStages.Raw790
import InitECandidate.Proofs.BackendStages.Raw791
import InitECandidate.Proofs.BackendStages.Raw792
import InitECandidate.Proofs.BackendStages.Raw793
import InitECandidate.Proofs.BackendStages.Raw794
import InitECandidate.Proofs.BackendStages.Raw795
import InitECandidate.Proofs.BackendStages.Raw796
import InitECandidate.Proofs.BackendStages.Raw797
import InitECandidate.Proofs.BackendStages.Raw798
import InitECandidate.Proofs.BackendStages.Raw799
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk784_799
def bodies : List (Nat × StackLang.HolProg 64) := [(784, raw784), (785, raw785), (786, raw786), (787, raw787), (788, raw788), (789, raw789), (790, raw790), (791, raw791), (792, raw792), (793, raw793), (794, raw794), (795, raw795), (796, raw796), (797, raw797), (798, raw798), (799, raw799)]
theorem compiled_eq : Chunk784_799.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(784, StackRawCall.compTop RawInfo.rawInfo (function784 (.list [])).1), (785, StackRawCall.compTop RawInfo.rawInfo (function785 (.list [])).1), (786, StackRawCall.compTop RawInfo.rawInfo (function786 (.list [])).1), (787, StackRawCall.compTop RawInfo.rawInfo (function787 (.list [])).1), (788, StackRawCall.compTop RawInfo.rawInfo (function788 (.list [])).1), (789, StackRawCall.compTop RawInfo.rawInfo (function789 (.list [])).1), (790, StackRawCall.compTop RawInfo.rawInfo (function790 (.list [])).1), (791, StackRawCall.compTop RawInfo.rawInfo (function791 (.list [])).1), (792, StackRawCall.compTop RawInfo.rawInfo (function792 (.list [])).1), (793, StackRawCall.compTop RawInfo.rawInfo (function793 (.list [])).1), (794, StackRawCall.compTop RawInfo.rawInfo (function794 (.list [])).1), (795, StackRawCall.compTop RawInfo.rawInfo (function795 (.list [])).1), (796, StackRawCall.compTop RawInfo.rawInfo (function796 (.list [])).1), (797, StackRawCall.compTop RawInfo.rawInfo (function797 (.list [])).1), (798, StackRawCall.compTop RawInfo.rawInfo (function798 (.list [])).1), (799, StackRawCall.compTop RawInfo.rawInfo (function799 (.list [])).1)] = bodies
  rw [raw784_eq, raw785_eq, raw786_eq, raw787_eq, raw788_eq, raw789_eq, raw790_eq, raw791_eq, raw792_eq, raw793_eq, raw794_eq, raw795_eq, raw796_eq, raw797_eq, raw798_eq, raw799_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk784_799
