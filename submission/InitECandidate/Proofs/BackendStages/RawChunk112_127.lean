import InitECandidate.Proofs.BackendStages.Chunk112_127
import InitECandidate.Proofs.BackendStages.Raw112
import InitECandidate.Proofs.BackendStages.Raw113
import InitECandidate.Proofs.BackendStages.Raw114
import InitECandidate.Proofs.BackendStages.Raw115
import InitECandidate.Proofs.BackendStages.Raw116
import InitECandidate.Proofs.BackendStages.Raw117
import InitECandidate.Proofs.BackendStages.Raw118
import InitECandidate.Proofs.BackendStages.Raw119
import InitECandidate.Proofs.BackendStages.Raw120
import InitECandidate.Proofs.BackendStages.Raw121
import InitECandidate.Proofs.BackendStages.Raw122
import InitECandidate.Proofs.BackendStages.Raw123
import InitECandidate.Proofs.BackendStages.Raw124
import InitECandidate.Proofs.BackendStages.Raw125
import InitECandidate.Proofs.BackendStages.Raw126
import InitECandidate.Proofs.BackendStages.Raw127
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk112_127
def bodies : List (Nat × StackLang.HolProg 64) := [(112, raw112), (113, raw113), (114, raw114), (115, raw115), (116, raw116), (117, raw117), (118, raw118), (119, raw119), (120, raw120), (121, raw121), (122, raw122), (123, raw123), (124, raw124), (125, raw125), (126, raw126), (127, raw127)]
theorem compiled_eq : Chunk112_127.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(112, StackRawCall.compTop RawInfo.rawInfo (function112 (.list [])).1), (113, StackRawCall.compTop RawInfo.rawInfo (function113 (.list [])).1), (114, StackRawCall.compTop RawInfo.rawInfo (function114 (.list [])).1), (115, StackRawCall.compTop RawInfo.rawInfo (function115 (.list [])).1), (116, StackRawCall.compTop RawInfo.rawInfo (function116 (.list [])).1), (117, StackRawCall.compTop RawInfo.rawInfo (function117 (.list [])).1), (118, StackRawCall.compTop RawInfo.rawInfo (function118 (.list [])).1), (119, StackRawCall.compTop RawInfo.rawInfo (function119 (.list [])).1), (120, StackRawCall.compTop RawInfo.rawInfo (function120 (.list [])).1), (121, StackRawCall.compTop RawInfo.rawInfo (function121 (.list [])).1), (122, StackRawCall.compTop RawInfo.rawInfo (function122 (.list [])).1), (123, StackRawCall.compTop RawInfo.rawInfo (function123 (.list [])).1), (124, StackRawCall.compTop RawInfo.rawInfo (function124 (.list [])).1), (125, StackRawCall.compTop RawInfo.rawInfo (function125 (.list [])).1), (126, StackRawCall.compTop RawInfo.rawInfo (function126 (.list [])).1), (127, StackRawCall.compTop RawInfo.rawInfo (function127 (.list [])).1)] = bodies
  rw [raw112_eq, raw113_eq, raw114_eq, raw115_eq, raw116_eq, raw117_eq, raw118_eq, raw119_eq, raw120_eq, raw121_eq, raw122_eq, raw123_eq, raw124_eq, raw125_eq, raw126_eq, raw127_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk112_127
