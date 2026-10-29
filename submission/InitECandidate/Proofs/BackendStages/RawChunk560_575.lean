import InitECandidate.Proofs.BackendStages.Chunk560_575
import InitECandidate.Proofs.BackendStages.Raw560
import InitECandidate.Proofs.BackendStages.Raw561
import InitECandidate.Proofs.BackendStages.Raw562
import InitECandidate.Proofs.BackendStages.Raw563
import InitECandidate.Proofs.BackendStages.Raw564
import InitECandidate.Proofs.BackendStages.Raw565
import InitECandidate.Proofs.BackendStages.Raw566
import InitECandidate.Proofs.BackendStages.Raw567
import InitECandidate.Proofs.BackendStages.Raw568
import InitECandidate.Proofs.BackendStages.Raw569
import InitECandidate.Proofs.BackendStages.Raw570
import InitECandidate.Proofs.BackendStages.Raw571
import InitECandidate.Proofs.BackendStages.Raw572
import InitECandidate.Proofs.BackendStages.Raw573
import InitECandidate.Proofs.BackendStages.Raw574
import InitECandidate.Proofs.BackendStages.Raw575
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk560_575
def bodies : List (Nat × StackLang.HolProg 64) := [(560, raw560), (561, raw561), (562, raw562), (563, raw563), (564, raw564), (565, raw565), (566, raw566), (567, raw567), (568, raw568), (569, raw569), (570, raw570), (571, raw571), (572, raw572), (573, raw573), (574, raw574), (575, raw575)]
theorem compiled_eq : Chunk560_575.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(560, StackRawCall.compTop RawInfo.rawInfo (function560 (.list [])).1), (561, StackRawCall.compTop RawInfo.rawInfo (function561 (.list [])).1), (562, StackRawCall.compTop RawInfo.rawInfo (function562 (.list [])).1), (563, StackRawCall.compTop RawInfo.rawInfo (function563 (.list [])).1), (564, StackRawCall.compTop RawInfo.rawInfo (function564 (.list [])).1), (565, StackRawCall.compTop RawInfo.rawInfo (function565 (.list [])).1), (566, StackRawCall.compTop RawInfo.rawInfo (function566 (.list [])).1), (567, StackRawCall.compTop RawInfo.rawInfo (function567 (.list [])).1), (568, StackRawCall.compTop RawInfo.rawInfo (function568 (.list [])).1), (569, StackRawCall.compTop RawInfo.rawInfo (function569 (.list [])).1), (570, StackRawCall.compTop RawInfo.rawInfo (function570 (.list [])).1), (571, StackRawCall.compTop RawInfo.rawInfo (function571 (.list [])).1), (572, StackRawCall.compTop RawInfo.rawInfo (function572 (.list [])).1), (573, StackRawCall.compTop RawInfo.rawInfo (function573 (.list [])).1), (574, StackRawCall.compTop RawInfo.rawInfo (function574 (.list [])).1), (575, StackRawCall.compTop RawInfo.rawInfo (function575 (.list [])).1)] = bodies
  rw [raw560_eq, raw561_eq, raw562_eq, raw563_eq, raw564_eq, raw565_eq, raw566_eq, raw567_eq, raw568_eq, raw569_eq, raw570_eq, raw571_eq, raw572_eq, raw573_eq, raw574_eq, raw575_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk560_575
