import InitECandidate.Proofs.BackendStages.Chunk368_383
import InitECandidate.Proofs.BackendStages.Raw368
import InitECandidate.Proofs.BackendStages.Raw369
import InitECandidate.Proofs.BackendStages.Raw370
import InitECandidate.Proofs.BackendStages.Raw371
import InitECandidate.Proofs.BackendStages.Raw372
import InitECandidate.Proofs.BackendStages.Raw373
import InitECandidate.Proofs.BackendStages.Raw374
import InitECandidate.Proofs.BackendStages.Raw375
import InitECandidate.Proofs.BackendStages.Raw376
import InitECandidate.Proofs.BackendStages.Raw377
import InitECandidate.Proofs.BackendStages.Raw378
import InitECandidate.Proofs.BackendStages.Raw379
import InitECandidate.Proofs.BackendStages.Raw380
import InitECandidate.Proofs.BackendStages.Raw381
import InitECandidate.Proofs.BackendStages.Raw382
import InitECandidate.Proofs.BackendStages.Raw383
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk368_383
def bodies : List (Nat × StackLang.HolProg 64) := [(368, raw368), (369, raw369), (370, raw370), (371, raw371), (372, raw372), (373, raw373), (374, raw374), (375, raw375), (376, raw376), (377, raw377), (378, raw378), (379, raw379), (380, raw380), (381, raw381), (382, raw382), (383, raw383)]
theorem compiled_eq : Chunk368_383.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(368, StackRawCall.compTop RawInfo.rawInfo (function368 (.list [])).1), (369, StackRawCall.compTop RawInfo.rawInfo (function369 (.list [])).1), (370, StackRawCall.compTop RawInfo.rawInfo (function370 (.list [])).1), (371, StackRawCall.compTop RawInfo.rawInfo (function371 (.list [])).1), (372, StackRawCall.compTop RawInfo.rawInfo (function372 (.list [])).1), (373, StackRawCall.compTop RawInfo.rawInfo (function373 (.list [])).1), (374, StackRawCall.compTop RawInfo.rawInfo (function374 (.list [])).1), (375, StackRawCall.compTop RawInfo.rawInfo (function375 (.list [])).1), (376, StackRawCall.compTop RawInfo.rawInfo (function376 (.list [])).1), (377, StackRawCall.compTop RawInfo.rawInfo (function377 (.list [])).1), (378, StackRawCall.compTop RawInfo.rawInfo (function378 (.list [])).1), (379, StackRawCall.compTop RawInfo.rawInfo (function379 (.list [])).1), (380, StackRawCall.compTop RawInfo.rawInfo (function380 (.list [])).1), (381, StackRawCall.compTop RawInfo.rawInfo (function381 (.list [])).1), (382, StackRawCall.compTop RawInfo.rawInfo (function382 (.list [])).1), (383, StackRawCall.compTop RawInfo.rawInfo (function383 (.list [])).1)] = bodies
  rw [raw368_eq, raw369_eq, raw370_eq, raw371_eq, raw372_eq, raw373_eq, raw374_eq, raw375_eq, raw376_eq, raw377_eq, raw378_eq, raw379_eq, raw380_eq, raw381_eq, raw382_eq, raw383_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk368_383
