import InitECandidate.Proofs.BackendStages.Chunk128_143
import InitECandidate.Proofs.BackendStages.Raw128
import InitECandidate.Proofs.BackendStages.Raw129
import InitECandidate.Proofs.BackendStages.Raw130
import InitECandidate.Proofs.BackendStages.Raw131
import InitECandidate.Proofs.BackendStages.Raw132
import InitECandidate.Proofs.BackendStages.Raw133
import InitECandidate.Proofs.BackendStages.Raw134
import InitECandidate.Proofs.BackendStages.Raw135
import InitECandidate.Proofs.BackendStages.Raw136
import InitECandidate.Proofs.BackendStages.Raw137
import InitECandidate.Proofs.BackendStages.Raw138
import InitECandidate.Proofs.BackendStages.Raw139
import InitECandidate.Proofs.BackendStages.Raw140
import InitECandidate.Proofs.BackendStages.Raw141
import InitECandidate.Proofs.BackendStages.Raw142
import InitECandidate.Proofs.BackendStages.Raw143
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk128_143
def bodies : List (Nat × StackLang.HolProg 64) := [(128, raw128), (129, raw129), (130, raw130), (131, raw131), (132, raw132), (133, raw133), (134, raw134), (135, raw135), (136, raw136), (137, raw137), (138, raw138), (139, raw139), (140, raw140), (141, raw141), (142, raw142), (143, raw143)]
theorem compiled_eq : Chunk128_143.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(128, StackRawCall.compTop RawInfo.rawInfo (function128 (.list [])).1), (129, StackRawCall.compTop RawInfo.rawInfo (function129 (.list [])).1), (130, StackRawCall.compTop RawInfo.rawInfo (function130 (.list [])).1), (131, StackRawCall.compTop RawInfo.rawInfo (function131 (.list [])).1), (132, StackRawCall.compTop RawInfo.rawInfo (function132 (.list [])).1), (133, StackRawCall.compTop RawInfo.rawInfo (function133 (.list [])).1), (134, StackRawCall.compTop RawInfo.rawInfo (function134 (.list [])).1), (135, StackRawCall.compTop RawInfo.rawInfo (function135 (.list [])).1), (136, StackRawCall.compTop RawInfo.rawInfo (function136 (.list [])).1), (137, StackRawCall.compTop RawInfo.rawInfo (function137 (.list [])).1), (138, StackRawCall.compTop RawInfo.rawInfo (function138 (.list [])).1), (139, StackRawCall.compTop RawInfo.rawInfo (function139 (.list [])).1), (140, StackRawCall.compTop RawInfo.rawInfo (function140 (.list [])).1), (141, StackRawCall.compTop RawInfo.rawInfo (function141 (.list [])).1), (142, StackRawCall.compTop RawInfo.rawInfo (function142 (.list [])).1), (143, StackRawCall.compTop RawInfo.rawInfo (function143 (.list [])).1)] = bodies
  rw [raw128_eq, raw129_eq, raw130_eq, raw131_eq, raw132_eq, raw133_eq, raw134_eq, raw135_eq, raw136_eq, raw137_eq, raw138_eq, raw139_eq, raw140_eq, raw141_eq, raw142_eq, raw143_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk128_143
