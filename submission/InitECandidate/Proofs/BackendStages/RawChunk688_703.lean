import InitECandidate.Proofs.BackendStages.Chunk688_703
import InitECandidate.Proofs.BackendStages.Raw688
import InitECandidate.Proofs.BackendStages.Raw689
import InitECandidate.Proofs.BackendStages.Raw690
import InitECandidate.Proofs.BackendStages.Raw691
import InitECandidate.Proofs.BackendStages.Raw692
import InitECandidate.Proofs.BackendStages.Raw693
import InitECandidate.Proofs.BackendStages.Raw694
import InitECandidate.Proofs.BackendStages.Raw695
import InitECandidate.Proofs.BackendStages.Raw696
import InitECandidate.Proofs.BackendStages.Raw697
import InitECandidate.Proofs.BackendStages.Raw698
import InitECandidate.Proofs.BackendStages.Raw699
import InitECandidate.Proofs.BackendStages.Raw700
import InitECandidate.Proofs.BackendStages.Raw701
import InitECandidate.Proofs.BackendStages.Raw702
import InitECandidate.Proofs.BackendStages.Raw703
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk688_703
def bodies : List (Nat × StackLang.HolProg 64) := [(688, raw688), (689, raw689), (690, raw690), (691, raw691), (692, raw692), (693, raw693), (694, raw694), (695, raw695), (696, raw696), (697, raw697), (698, raw698), (699, raw699), (700, raw700), (701, raw701), (702, raw702), (703, raw703)]
theorem compiled_eq : Chunk688_703.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(688, StackRawCall.compTop RawInfo.rawInfo (function688 (.list [])).1), (689, StackRawCall.compTop RawInfo.rawInfo (function689 (.list [])).1), (690, StackRawCall.compTop RawInfo.rawInfo (function690 (.list [])).1), (691, StackRawCall.compTop RawInfo.rawInfo (function691 (.list [])).1), (692, StackRawCall.compTop RawInfo.rawInfo (function692 (.list [])).1), (693, StackRawCall.compTop RawInfo.rawInfo (function693 (.list [])).1), (694, StackRawCall.compTop RawInfo.rawInfo (function694 (.list [])).1), (695, StackRawCall.compTop RawInfo.rawInfo (function695 (.list [])).1), (696, StackRawCall.compTop RawInfo.rawInfo (function696 (.list [])).1), (697, StackRawCall.compTop RawInfo.rawInfo (function697 (.list [])).1), (698, StackRawCall.compTop RawInfo.rawInfo (function698 (.list [])).1), (699, StackRawCall.compTop RawInfo.rawInfo (function699 (.list [])).1), (700, StackRawCall.compTop RawInfo.rawInfo (function700 (.list [])).1), (701, StackRawCall.compTop RawInfo.rawInfo (function701 (.list [])).1), (702, StackRawCall.compTop RawInfo.rawInfo (function702 (.list [])).1), (703, StackRawCall.compTop RawInfo.rawInfo (function703 (.list [])).1)] = bodies
  rw [raw688_eq, raw689_eq, raw690_eq, raw691_eq, raw692_eq, raw693_eq, raw694_eq, raw695_eq, raw696_eq, raw697_eq, raw698_eq, raw699_eq, raw700_eq, raw701_eq, raw702_eq, raw703_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk688_703
