import InitECandidate.Proofs.BackendStages.Chunk752_767
import InitECandidate.Proofs.BackendStages.Raw752
import InitECandidate.Proofs.BackendStages.Raw753
import InitECandidate.Proofs.BackendStages.Raw754
import InitECandidate.Proofs.BackendStages.Raw755
import InitECandidate.Proofs.BackendStages.Raw756
import InitECandidate.Proofs.BackendStages.Raw757
import InitECandidate.Proofs.BackendStages.Raw758
import InitECandidate.Proofs.BackendStages.Raw759
import InitECandidate.Proofs.BackendStages.Raw760
import InitECandidate.Proofs.BackendStages.Raw761
import InitECandidate.Proofs.BackendStages.Raw762
import InitECandidate.Proofs.BackendStages.Raw763
import InitECandidate.Proofs.BackendStages.Raw764
import InitECandidate.Proofs.BackendStages.Raw765
import InitECandidate.Proofs.BackendStages.Raw766
import InitECandidate.Proofs.BackendStages.Raw767
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk752_767
def bodies : List (Nat × StackLang.HolProg 64) := [(752, raw752), (753, raw753), (754, raw754), (755, raw755), (756, raw756), (757, raw757), (758, raw758), (759, raw759), (760, raw760), (761, raw761), (762, raw762), (763, raw763), (764, raw764), (765, raw765), (766, raw766), (767, raw767)]
theorem compiled_eq : Chunk752_767.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(752, StackRawCall.compTop RawInfo.rawInfo (function752 (.list [])).1), (753, StackRawCall.compTop RawInfo.rawInfo (function753 (.list [])).1), (754, StackRawCall.compTop RawInfo.rawInfo (function754 (.list [])).1), (755, StackRawCall.compTop RawInfo.rawInfo (function755 (.list [])).1), (756, StackRawCall.compTop RawInfo.rawInfo (function756 (.list [])).1), (757, StackRawCall.compTop RawInfo.rawInfo (function757 (.list [])).1), (758, StackRawCall.compTop RawInfo.rawInfo (function758 (.list [])).1), (759, StackRawCall.compTop RawInfo.rawInfo (function759 (.list [])).1), (760, StackRawCall.compTop RawInfo.rawInfo (function760 (.list [])).1), (761, StackRawCall.compTop RawInfo.rawInfo (function761 (.list [])).1), (762, StackRawCall.compTop RawInfo.rawInfo (function762 (.list [])).1), (763, StackRawCall.compTop RawInfo.rawInfo (function763 (.list [])).1), (764, StackRawCall.compTop RawInfo.rawInfo (function764 (.list [])).1), (765, StackRawCall.compTop RawInfo.rawInfo (function765 (.list [])).1), (766, StackRawCall.compTop RawInfo.rawInfo (function766 (.list [])).1), (767, StackRawCall.compTop RawInfo.rawInfo (function767 (.list [])).1)] = bodies
  rw [raw752_eq, raw753_eq, raw754_eq, raw755_eq, raw756_eq, raw757_eq, raw758_eq, raw759_eq, raw760_eq, raw761_eq, raw762_eq, raw763_eq, raw764_eq, raw765_eq, raw766_eq, raw767_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk752_767
