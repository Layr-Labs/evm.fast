import InitECandidate.Proofs.BackendStages.Chunk336_351
import InitECandidate.Proofs.BackendStages.Raw336
import InitECandidate.Proofs.BackendStages.Raw337
import InitECandidate.Proofs.BackendStages.Raw338
import InitECandidate.Proofs.BackendStages.Raw339
import InitECandidate.Proofs.BackendStages.Raw340
import InitECandidate.Proofs.BackendStages.Raw341
import InitECandidate.Proofs.BackendStages.Raw342
import InitECandidate.Proofs.BackendStages.Raw343
import InitECandidate.Proofs.BackendStages.Raw344
import InitECandidate.Proofs.BackendStages.Raw345
import InitECandidate.Proofs.BackendStages.Raw346
import InitECandidate.Proofs.BackendStages.Raw347
import InitECandidate.Proofs.BackendStages.Raw348
import InitECandidate.Proofs.BackendStages.Raw349
import InitECandidate.Proofs.BackendStages.Raw350
import InitECandidate.Proofs.BackendStages.Raw351
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk336_351
def bodies : List (Nat × StackLang.HolProg 64) := [(336, raw336), (337, raw337), (338, raw338), (339, raw339), (340, raw340), (341, raw341), (342, raw342), (343, raw343), (344, raw344), (345, raw345), (346, raw346), (347, raw347), (348, raw348), (349, raw349), (350, raw350), (351, raw351)]
theorem compiled_eq : Chunk336_351.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(336, StackRawCall.compTop RawInfo.rawInfo (function336 (.list [])).1), (337, StackRawCall.compTop RawInfo.rawInfo (function337 (.list [])).1), (338, StackRawCall.compTop RawInfo.rawInfo (function338 (.list [])).1), (339, StackRawCall.compTop RawInfo.rawInfo (function339 (.list [])).1), (340, StackRawCall.compTop RawInfo.rawInfo (function340 (.list [])).1), (341, StackRawCall.compTop RawInfo.rawInfo (function341 (.list [])).1), (342, StackRawCall.compTop RawInfo.rawInfo (function342 (.list [])).1), (343, StackRawCall.compTop RawInfo.rawInfo (function343 (.list [])).1), (344, StackRawCall.compTop RawInfo.rawInfo (function344 (.list [])).1), (345, StackRawCall.compTop RawInfo.rawInfo (function345 (.list [])).1), (346, StackRawCall.compTop RawInfo.rawInfo (function346 (.list [])).1), (347, StackRawCall.compTop RawInfo.rawInfo (function347 (.list [])).1), (348, StackRawCall.compTop RawInfo.rawInfo (function348 (.list [])).1), (349, StackRawCall.compTop RawInfo.rawInfo (function349 (.list [])).1), (350, StackRawCall.compTop RawInfo.rawInfo (function350 (.list [])).1), (351, StackRawCall.compTop RawInfo.rawInfo (function351 (.list [])).1)] = bodies
  rw [raw336_eq, raw337_eq, raw338_eq, raw339_eq, raw340_eq, raw341_eq, raw342_eq, raw343_eq, raw344_eq, raw345_eq, raw346_eq, raw347_eq, raw348_eq, raw349_eq, raw350_eq, raw351_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk336_351
