import InitECandidate.Proofs.BackendStages.Chunk528_543
import InitECandidate.Proofs.BackendStages.Raw528
import InitECandidate.Proofs.BackendStages.Raw529
import InitECandidate.Proofs.BackendStages.Raw530
import InitECandidate.Proofs.BackendStages.Raw531
import InitECandidate.Proofs.BackendStages.Raw532
import InitECandidate.Proofs.BackendStages.Raw533
import InitECandidate.Proofs.BackendStages.Raw534
import InitECandidate.Proofs.BackendStages.Raw535
import InitECandidate.Proofs.BackendStages.Raw536
import InitECandidate.Proofs.BackendStages.Raw537
import InitECandidate.Proofs.BackendStages.Raw538
import InitECandidate.Proofs.BackendStages.Raw539
import InitECandidate.Proofs.BackendStages.Raw540
import InitECandidate.Proofs.BackendStages.Raw541
import InitECandidate.Proofs.BackendStages.Raw542
import InitECandidate.Proofs.BackendStages.Raw543
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk528_543
def bodies : List (Nat × StackLang.HolProg 64) := [(528, raw528), (529, raw529), (530, raw530), (531, raw531), (532, raw532), (533, raw533), (534, raw534), (535, raw535), (536, raw536), (537, raw537), (538, raw538), (539, raw539), (540, raw540), (541, raw541), (542, raw542), (543, raw543)]
theorem compiled_eq : Chunk528_543.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(528, StackRawCall.compTop RawInfo.rawInfo (function528 (.list [])).1), (529, StackRawCall.compTop RawInfo.rawInfo (function529 (.list [])).1), (530, StackRawCall.compTop RawInfo.rawInfo (function530 (.list [])).1), (531, StackRawCall.compTop RawInfo.rawInfo (function531 (.list [])).1), (532, StackRawCall.compTop RawInfo.rawInfo (function532 (.list [])).1), (533, StackRawCall.compTop RawInfo.rawInfo (function533 (.list [])).1), (534, StackRawCall.compTop RawInfo.rawInfo (function534 (.list [])).1), (535, StackRawCall.compTop RawInfo.rawInfo (function535 (.list [])).1), (536, StackRawCall.compTop RawInfo.rawInfo (function536 (.list [])).1), (537, StackRawCall.compTop RawInfo.rawInfo (function537 (.list [])).1), (538, StackRawCall.compTop RawInfo.rawInfo (function538 (.list [])).1), (539, StackRawCall.compTop RawInfo.rawInfo (function539 (.list [])).1), (540, StackRawCall.compTop RawInfo.rawInfo (function540 (.list [])).1), (541, StackRawCall.compTop RawInfo.rawInfo (function541 (.list [])).1), (542, StackRawCall.compTop RawInfo.rawInfo (function542 (.list [])).1), (543, StackRawCall.compTop RawInfo.rawInfo (function543 (.list [])).1)] = bodies
  rw [raw528_eq, raw529_eq, raw530_eq, raw531_eq, raw532_eq, raw533_eq, raw534_eq, raw535_eq, raw536_eq, raw537_eq, raw538_eq, raw539_eq, raw540_eq, raw541_eq, raw542_eq, raw543_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk528_543
