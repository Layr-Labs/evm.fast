import InitECandidate.Proofs.BackendStages.Chunk304_319
import InitECandidate.Proofs.BackendStages.Raw304
import InitECandidate.Proofs.BackendStages.Raw305
import InitECandidate.Proofs.BackendStages.Raw306
import InitECandidate.Proofs.BackendStages.Raw307
import InitECandidate.Proofs.BackendStages.Raw308
import InitECandidate.Proofs.BackendStages.Raw309
import InitECandidate.Proofs.BackendStages.Raw310
import InitECandidate.Proofs.BackendStages.Raw311
import InitECandidate.Proofs.BackendStages.Raw312
import InitECandidate.Proofs.BackendStages.Raw313
import InitECandidate.Proofs.BackendStages.Raw314
import InitECandidate.Proofs.BackendStages.Raw315
import InitECandidate.Proofs.BackendStages.Raw316
import InitECandidate.Proofs.BackendStages.Raw317
import InitECandidate.Proofs.BackendStages.Raw318
import InitECandidate.Proofs.BackendStages.Raw319
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk304_319
def bodies : List (Nat × StackLang.HolProg 64) := [(304, raw304), (305, raw305), (306, raw306), (307, raw307), (308, raw308), (309, raw309), (310, raw310), (311, raw311), (312, raw312), (313, raw313), (314, raw314), (315, raw315), (316, raw316), (317, raw317), (318, raw318), (319, raw319)]
theorem compiled_eq : Chunk304_319.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(304, StackRawCall.compTop RawInfo.rawInfo (function304 (.list [])).1), (305, StackRawCall.compTop RawInfo.rawInfo (function305 (.list [])).1), (306, StackRawCall.compTop RawInfo.rawInfo (function306 (.list [])).1), (307, StackRawCall.compTop RawInfo.rawInfo (function307 (.list [])).1), (308, StackRawCall.compTop RawInfo.rawInfo (function308 (.list [])).1), (309, StackRawCall.compTop RawInfo.rawInfo (function309 (.list [])).1), (310, StackRawCall.compTop RawInfo.rawInfo (function310 (.list [])).1), (311, StackRawCall.compTop RawInfo.rawInfo (function311 (.list [])).1), (312, StackRawCall.compTop RawInfo.rawInfo (function312 (.list [])).1), (313, StackRawCall.compTop RawInfo.rawInfo (function313 (.list [])).1), (314, StackRawCall.compTop RawInfo.rawInfo (function314 (.list [])).1), (315, StackRawCall.compTop RawInfo.rawInfo (function315 (.list [])).1), (316, StackRawCall.compTop RawInfo.rawInfo (function316 (.list [])).1), (317, StackRawCall.compTop RawInfo.rawInfo (function317 (.list [])).1), (318, StackRawCall.compTop RawInfo.rawInfo (function318 (.list [])).1), (319, StackRawCall.compTop RawInfo.rawInfo (function319 (.list [])).1)] = bodies
  rw [raw304_eq, raw305_eq, raw306_eq, raw307_eq, raw308_eq, raw309_eq, raw310_eq, raw311_eq, raw312_eq, raw313_eq, raw314_eq, raw315_eq, raw316_eq, raw317_eq, raw318_eq, raw319_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk304_319
