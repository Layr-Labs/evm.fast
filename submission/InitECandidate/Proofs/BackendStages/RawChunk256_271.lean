import InitECandidate.Proofs.BackendStages.Chunk256_271
import InitECandidate.Proofs.BackendStages.Raw256
import InitECandidate.Proofs.BackendStages.Raw257
import InitECandidate.Proofs.BackendStages.Raw258
import InitECandidate.Proofs.BackendStages.Raw259
import InitECandidate.Proofs.BackendStages.Raw260
import InitECandidate.Proofs.BackendStages.Raw261
import InitECandidate.Proofs.BackendStages.Raw262
import InitECandidate.Proofs.BackendStages.Raw263
import InitECandidate.Proofs.BackendStages.Raw264
import InitECandidate.Proofs.BackendStages.Raw265
import InitECandidate.Proofs.BackendStages.Raw266
import InitECandidate.Proofs.BackendStages.Raw267
import InitECandidate.Proofs.BackendStages.Raw268
import InitECandidate.Proofs.BackendStages.Raw269
import InitECandidate.Proofs.BackendStages.Raw270
import InitECandidate.Proofs.BackendStages.Raw271
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk256_271
def bodies : List (Nat × StackLang.HolProg 64) := [(256, raw256), (257, raw257), (258, raw258), (259, raw259), (260, raw260), (261, raw261), (262, raw262), (263, raw263), (264, raw264), (265, raw265), (266, raw266), (267, raw267), (268, raw268), (269, raw269), (270, raw270), (271, raw271)]
theorem compiled_eq : Chunk256_271.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(256, StackRawCall.compTop RawInfo.rawInfo (function256 (.list [])).1), (257, StackRawCall.compTop RawInfo.rawInfo (function257 (.list [])).1), (258, StackRawCall.compTop RawInfo.rawInfo (function258 (.list [])).1), (259, StackRawCall.compTop RawInfo.rawInfo (function259 (.list [])).1), (260, StackRawCall.compTop RawInfo.rawInfo (function260 (.list [])).1), (261, StackRawCall.compTop RawInfo.rawInfo (function261 (.list [])).1), (262, StackRawCall.compTop RawInfo.rawInfo (function262 (.list [])).1), (263, StackRawCall.compTop RawInfo.rawInfo (function263 (.list [])).1), (264, StackRawCall.compTop RawInfo.rawInfo (function264 (.list [])).1), (265, StackRawCall.compTop RawInfo.rawInfo (function265 (.list [])).1), (266, StackRawCall.compTop RawInfo.rawInfo (function266 (.list [])).1), (267, StackRawCall.compTop RawInfo.rawInfo (function267 (.list [])).1), (268, StackRawCall.compTop RawInfo.rawInfo (function268 (.list [])).1), (269, StackRawCall.compTop RawInfo.rawInfo (function269 (.list [])).1), (270, StackRawCall.compTop RawInfo.rawInfo (function270 (.list [])).1), (271, StackRawCall.compTop RawInfo.rawInfo (function271 (.list [])).1)] = bodies
  rw [raw256_eq, raw257_eq, raw258_eq, raw259_eq, raw260_eq, raw261_eq, raw262_eq, raw263_eq, raw264_eq, raw265_eq, raw266_eq, raw267_eq, raw268_eq, raw269_eq, raw270_eq, raw271_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk256_271
