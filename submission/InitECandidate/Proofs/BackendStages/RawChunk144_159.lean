import InitECandidate.Proofs.BackendStages.Chunk144_159
import InitECandidate.Proofs.BackendStages.Raw144
import InitECandidate.Proofs.BackendStages.Raw145
import InitECandidate.Proofs.BackendStages.Raw146
import InitECandidate.Proofs.BackendStages.Raw147
import InitECandidate.Proofs.BackendStages.Raw148
import InitECandidate.Proofs.BackendStages.Raw149
import InitECandidate.Proofs.BackendStages.Raw150
import InitECandidate.Proofs.BackendStages.Raw151
import InitECandidate.Proofs.BackendStages.Raw152
import InitECandidate.Proofs.BackendStages.Raw153
import InitECandidate.Proofs.BackendStages.Raw154
import InitECandidate.Proofs.BackendStages.Raw155
import InitECandidate.Proofs.BackendStages.Raw156
import InitECandidate.Proofs.BackendStages.Raw157
import InitECandidate.Proofs.BackendStages.Raw158
import InitECandidate.Proofs.BackendStages.Raw159
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk144_159
def bodies : List (Nat × StackLang.HolProg 64) := [(144, raw144), (145, raw145), (146, raw146), (147, raw147), (148, raw148), (149, raw149), (150, raw150), (151, raw151), (152, raw152), (153, raw153), (154, raw154), (155, raw155), (156, raw156), (157, raw157), (158, raw158), (159, raw159)]
theorem compiled_eq : Chunk144_159.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(144, StackRawCall.compTop RawInfo.rawInfo (function144 (.list [])).1), (145, StackRawCall.compTop RawInfo.rawInfo (function145 (.list [])).1), (146, StackRawCall.compTop RawInfo.rawInfo (function146 (.list [])).1), (147, StackRawCall.compTop RawInfo.rawInfo (function147 (.list [])).1), (148, StackRawCall.compTop RawInfo.rawInfo (function148 (.list [])).1), (149, StackRawCall.compTop RawInfo.rawInfo (function149 (.list [])).1), (150, StackRawCall.compTop RawInfo.rawInfo (function150 (.list [])).1), (151, StackRawCall.compTop RawInfo.rawInfo (function151 (.list [])).1), (152, StackRawCall.compTop RawInfo.rawInfo (function152 (.list [])).1), (153, StackRawCall.compTop RawInfo.rawInfo (function153 (.list [])).1), (154, StackRawCall.compTop RawInfo.rawInfo (function154 (.list [])).1), (155, StackRawCall.compTop RawInfo.rawInfo (function155 (.list [])).1), (156, StackRawCall.compTop RawInfo.rawInfo (function156 (.list [])).1), (157, StackRawCall.compTop RawInfo.rawInfo (function157 (.list [])).1), (158, StackRawCall.compTop RawInfo.rawInfo (function158 (.list [])).1), (159, StackRawCall.compTop RawInfo.rawInfo (function159 (.list [])).1)] = bodies
  rw [raw144_eq, raw145_eq, raw146_eq, raw147_eq, raw148_eq, raw149_eq, raw150_eq, raw151_eq, raw152_eq, raw153_eq, raw154_eq, raw155_eq, raw156_eq, raw157_eq, raw158_eq, raw159_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk144_159
