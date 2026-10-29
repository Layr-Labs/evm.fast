import InitECandidate.Proofs.BackendStages.Chunk384_399
import InitECandidate.Proofs.BackendStages.Raw384
import InitECandidate.Proofs.BackendStages.Raw385
import InitECandidate.Proofs.BackendStages.Raw386
import InitECandidate.Proofs.BackendStages.Raw387
import InitECandidate.Proofs.BackendStages.Raw388
import InitECandidate.Proofs.BackendStages.Raw389
import InitECandidate.Proofs.BackendStages.Raw390
import InitECandidate.Proofs.BackendStages.Raw391
import InitECandidate.Proofs.BackendStages.Raw392
import InitECandidate.Proofs.BackendStages.Raw393
import InitECandidate.Proofs.BackendStages.Raw394
import InitECandidate.Proofs.BackendStages.Raw395
import InitECandidate.Proofs.BackendStages.Raw396
import InitECandidate.Proofs.BackendStages.Raw397
import InitECandidate.Proofs.BackendStages.Raw398
import InitECandidate.Proofs.BackendStages.Raw399
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk384_399
def bodies : List (Nat × StackLang.HolProg 64) := [(384, raw384), (385, raw385), (386, raw386), (387, raw387), (388, raw388), (389, raw389), (390, raw390), (391, raw391), (392, raw392), (393, raw393), (394, raw394), (395, raw395), (396, raw396), (397, raw397), (398, raw398), (399, raw399)]
theorem compiled_eq : Chunk384_399.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(384, StackRawCall.compTop RawInfo.rawInfo (function384 (.list [])).1), (385, StackRawCall.compTop RawInfo.rawInfo (function385 (.list [])).1), (386, StackRawCall.compTop RawInfo.rawInfo (function386 (.list [])).1), (387, StackRawCall.compTop RawInfo.rawInfo (function387 (.list [])).1), (388, StackRawCall.compTop RawInfo.rawInfo (function388 (.list [])).1), (389, StackRawCall.compTop RawInfo.rawInfo (function389 (.list [])).1), (390, StackRawCall.compTop RawInfo.rawInfo (function390 (.list [])).1), (391, StackRawCall.compTop RawInfo.rawInfo (function391 (.list [])).1), (392, StackRawCall.compTop RawInfo.rawInfo (function392 (.list [])).1), (393, StackRawCall.compTop RawInfo.rawInfo (function393 (.list [])).1), (394, StackRawCall.compTop RawInfo.rawInfo (function394 (.list [])).1), (395, StackRawCall.compTop RawInfo.rawInfo (function395 (.list [])).1), (396, StackRawCall.compTop RawInfo.rawInfo (function396 (.list [])).1), (397, StackRawCall.compTop RawInfo.rawInfo (function397 (.list [])).1), (398, StackRawCall.compTop RawInfo.rawInfo (function398 (.list [])).1), (399, StackRawCall.compTop RawInfo.rawInfo (function399 (.list [])).1)] = bodies
  rw [raw384_eq, raw385_eq, raw386_eq, raw387_eq, raw388_eq, raw389_eq, raw390_eq, raw391_eq, raw392_eq, raw393_eq, raw394_eq, raw395_eq, raw396_eq, raw397_eq, raw398_eq, raw399_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk384_399
