import InitECandidate.Proofs.BackendStages.Chunk160_175
import InitECandidate.Proofs.BackendStages.Raw160
import InitECandidate.Proofs.BackendStages.Raw161
import InitECandidate.Proofs.BackendStages.Raw162
import InitECandidate.Proofs.BackendStages.Raw163
import InitECandidate.Proofs.BackendStages.Raw164
import InitECandidate.Proofs.BackendStages.Raw165
import InitECandidate.Proofs.BackendStages.Raw166
import InitECandidate.Proofs.BackendStages.Raw167
import InitECandidate.Proofs.BackendStages.Raw168
import InitECandidate.Proofs.BackendStages.Raw169
import InitECandidate.Proofs.BackendStages.Raw170
import InitECandidate.Proofs.BackendStages.Raw171
import InitECandidate.Proofs.BackendStages.Raw172
import InitECandidate.Proofs.BackendStages.Raw173
import InitECandidate.Proofs.BackendStages.Raw174
import InitECandidate.Proofs.BackendStages.Raw175
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk160_175
def bodies : List (Nat × StackLang.HolProg 64) := [(160, raw160), (161, raw161), (162, raw162), (163, raw163), (164, raw164), (165, raw165), (166, raw166), (167, raw167), (168, raw168), (169, raw169), (170, raw170), (171, raw171), (172, raw172), (173, raw173), (174, raw174), (175, raw175)]
theorem compiled_eq : Chunk160_175.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(160, StackRawCall.compTop RawInfo.rawInfo (function160 (.list [])).1), (161, StackRawCall.compTop RawInfo.rawInfo (function161 (.list [])).1), (162, StackRawCall.compTop RawInfo.rawInfo (function162 (.list [])).1), (163, StackRawCall.compTop RawInfo.rawInfo (function163 (.list [])).1), (164, StackRawCall.compTop RawInfo.rawInfo (function164 (.list [])).1), (165, StackRawCall.compTop RawInfo.rawInfo (function165 (.list [])).1), (166, StackRawCall.compTop RawInfo.rawInfo (function166 (.list [])).1), (167, StackRawCall.compTop RawInfo.rawInfo (function167 (.list [])).1), (168, StackRawCall.compTop RawInfo.rawInfo (function168 (.list [])).1), (169, StackRawCall.compTop RawInfo.rawInfo (function169 (.list [])).1), (170, StackRawCall.compTop RawInfo.rawInfo (function170 (.list [])).1), (171, StackRawCall.compTop RawInfo.rawInfo (function171 (.list [])).1), (172, StackRawCall.compTop RawInfo.rawInfo (function172 (.list [])).1), (173, StackRawCall.compTop RawInfo.rawInfo (function173 (.list [])).1), (174, StackRawCall.compTop RawInfo.rawInfo (function174 (.list [])).1), (175, StackRawCall.compTop RawInfo.rawInfo (function175 (.list [])).1)] = bodies
  rw [raw160_eq, raw161_eq, raw162_eq, raw163_eq, raw164_eq, raw165_eq, raw166_eq, raw167_eq, raw168_eq, raw169_eq, raw170_eq, raw171_eq, raw172_eq, raw173_eq, raw174_eq, raw175_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk160_175
