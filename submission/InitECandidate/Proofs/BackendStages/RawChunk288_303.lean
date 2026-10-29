import InitECandidate.Proofs.BackendStages.Chunk288_303
import InitECandidate.Proofs.BackendStages.Raw288
import InitECandidate.Proofs.BackendStages.Raw289
import InitECandidate.Proofs.BackendStages.Raw290
import InitECandidate.Proofs.BackendStages.Raw291
import InitECandidate.Proofs.BackendStages.Raw292
import InitECandidate.Proofs.BackendStages.Raw293
import InitECandidate.Proofs.BackendStages.Raw294
import InitECandidate.Proofs.BackendStages.Raw295
import InitECandidate.Proofs.BackendStages.Raw296
import InitECandidate.Proofs.BackendStages.Raw297
import InitECandidate.Proofs.BackendStages.Raw298
import InitECandidate.Proofs.BackendStages.Raw299
import InitECandidate.Proofs.BackendStages.Raw300
import InitECandidate.Proofs.BackendStages.Raw301
import InitECandidate.Proofs.BackendStages.Raw302
import InitECandidate.Proofs.BackendStages.Raw303
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk288_303
def bodies : List (Nat × StackLang.HolProg 64) := [(288, raw288), (289, raw289), (290, raw290), (291, raw291), (292, raw292), (293, raw293), (294, raw294), (295, raw295), (296, raw296), (297, raw297), (298, raw298), (299, raw299), (300, raw300), (301, raw301), (302, raw302), (303, raw303)]
theorem compiled_eq : Chunk288_303.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(288, StackRawCall.compTop RawInfo.rawInfo (function288 (.list [])).1), (289, StackRawCall.compTop RawInfo.rawInfo (function289 (.list [])).1), (290, StackRawCall.compTop RawInfo.rawInfo (function290 (.list [])).1), (291, StackRawCall.compTop RawInfo.rawInfo (function291 (.list [])).1), (292, StackRawCall.compTop RawInfo.rawInfo (function292 (.list [])).1), (293, StackRawCall.compTop RawInfo.rawInfo (function293 (.list [])).1), (294, StackRawCall.compTop RawInfo.rawInfo (function294 (.list [])).1), (295, StackRawCall.compTop RawInfo.rawInfo (function295 (.list [])).1), (296, StackRawCall.compTop RawInfo.rawInfo (function296 (.list [])).1), (297, StackRawCall.compTop RawInfo.rawInfo (function297 (.list [])).1), (298, StackRawCall.compTop RawInfo.rawInfo (function298 (.list [])).1), (299, StackRawCall.compTop RawInfo.rawInfo (function299 (.list [])).1), (300, StackRawCall.compTop RawInfo.rawInfo (function300 (.list [])).1), (301, StackRawCall.compTop RawInfo.rawInfo (function301 (.list [])).1), (302, StackRawCall.compTop RawInfo.rawInfo (function302 (.list [])).1), (303, StackRawCall.compTop RawInfo.rawInfo (function303 (.list [])).1)] = bodies
  rw [raw288_eq, raw289_eq, raw290_eq, raw291_eq, raw292_eq, raw293_eq, raw294_eq, raw295_eq, raw296_eq, raw297_eq, raw298_eq, raw299_eq, raw300_eq, raw301_eq, raw302_eq, raw303_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk288_303
