import InitECandidate.Proofs.BackendStages.Chunk320_335
import InitECandidate.Proofs.BackendStages.Raw320
import InitECandidate.Proofs.BackendStages.Raw321
import InitECandidate.Proofs.BackendStages.Raw322
import InitECandidate.Proofs.BackendStages.Raw323
import InitECandidate.Proofs.BackendStages.Raw324
import InitECandidate.Proofs.BackendStages.Raw325
import InitECandidate.Proofs.BackendStages.Raw326
import InitECandidate.Proofs.BackendStages.Raw327
import InitECandidate.Proofs.BackendStages.Raw328
import InitECandidate.Proofs.BackendStages.Raw329
import InitECandidate.Proofs.BackendStages.Raw330
import InitECandidate.Proofs.BackendStages.Raw331
import InitECandidate.Proofs.BackendStages.Raw332
import InitECandidate.Proofs.BackendStages.Raw333
import InitECandidate.Proofs.BackendStages.Raw334
import InitECandidate.Proofs.BackendStages.Raw335
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk320_335
def bodies : List (Nat × StackLang.HolProg 64) := [(320, raw320), (321, raw321), (322, raw322), (323, raw323), (324, raw324), (325, raw325), (326, raw326), (327, raw327), (328, raw328), (329, raw329), (330, raw330), (331, raw331), (332, raw332), (333, raw333), (334, raw334), (335, raw335)]
theorem compiled_eq : Chunk320_335.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(320, StackRawCall.compTop RawInfo.rawInfo (function320 (.list [])).1), (321, StackRawCall.compTop RawInfo.rawInfo (function321 (.list [])).1), (322, StackRawCall.compTop RawInfo.rawInfo (function322 (.list [])).1), (323, StackRawCall.compTop RawInfo.rawInfo (function323 (.list [])).1), (324, StackRawCall.compTop RawInfo.rawInfo (function324 (.list [])).1), (325, StackRawCall.compTop RawInfo.rawInfo (function325 (.list [])).1), (326, StackRawCall.compTop RawInfo.rawInfo (function326 (.list [])).1), (327, StackRawCall.compTop RawInfo.rawInfo (function327 (.list [])).1), (328, StackRawCall.compTop RawInfo.rawInfo (function328 (.list [])).1), (329, StackRawCall.compTop RawInfo.rawInfo (function329 (.list [])).1), (330, StackRawCall.compTop RawInfo.rawInfo (function330 (.list [])).1), (331, StackRawCall.compTop RawInfo.rawInfo (function331 (.list [])).1), (332, StackRawCall.compTop RawInfo.rawInfo (function332 (.list [])).1), (333, StackRawCall.compTop RawInfo.rawInfo (function333 (.list [])).1), (334, StackRawCall.compTop RawInfo.rawInfo (function334 (.list [])).1), (335, StackRawCall.compTop RawInfo.rawInfo (function335 (.list [])).1)] = bodies
  rw [raw320_eq, raw321_eq, raw322_eq, raw323_eq, raw324_eq, raw325_eq, raw326_eq, raw327_eq, raw328_eq, raw329_eq, raw330_eq, raw331_eq, raw332_eq, raw333_eq, raw334_eq, raw335_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk320_335
