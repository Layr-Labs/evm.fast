import InitECandidate.Proofs.BackendStages.Chunk96_111
import InitECandidate.Proofs.BackendStages.Raw96
import InitECandidate.Proofs.BackendStages.Raw97
import InitECandidate.Proofs.BackendStages.Raw98
import InitECandidate.Proofs.BackendStages.Raw99
import InitECandidate.Proofs.BackendStages.Raw100
import InitECandidate.Proofs.BackendStages.Raw101
import InitECandidate.Proofs.BackendStages.Raw102
import InitECandidate.Proofs.BackendStages.Raw103
import InitECandidate.Proofs.BackendStages.Raw104
import InitECandidate.Proofs.BackendStages.Raw105
import InitECandidate.Proofs.BackendStages.Raw106
import InitECandidate.Proofs.BackendStages.Raw107
import InitECandidate.Proofs.BackendStages.Raw108
import InitECandidate.Proofs.BackendStages.Raw109
import InitECandidate.Proofs.BackendStages.Raw110
import InitECandidate.Proofs.BackendStages.Raw111
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk96_111
def bodies : List (Nat × StackLang.HolProg 64) := [(96, raw96), (97, raw97), (98, raw98), (99, raw99), (100, raw100), (101, raw101), (102, raw102), (103, raw103), (104, raw104), (105, raw105), (106, raw106), (107, raw107), (108, raw108), (109, raw109), (110, raw110), (111, raw111)]
theorem compiled_eq : Chunk96_111.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(96, StackRawCall.compTop RawInfo.rawInfo (function96 (.list [])).1), (97, StackRawCall.compTop RawInfo.rawInfo (function97 (.list [])).1), (98, StackRawCall.compTop RawInfo.rawInfo (function98 (.list [])).1), (99, StackRawCall.compTop RawInfo.rawInfo (function99 (.list [])).1), (100, StackRawCall.compTop RawInfo.rawInfo (function100 (.list [])).1), (101, StackRawCall.compTop RawInfo.rawInfo (function101 (.list [])).1), (102, StackRawCall.compTop RawInfo.rawInfo (function102 (.list [])).1), (103, StackRawCall.compTop RawInfo.rawInfo (function103 (.list [])).1), (104, StackRawCall.compTop RawInfo.rawInfo (function104 (.list [])).1), (105, StackRawCall.compTop RawInfo.rawInfo (function105 (.list [])).1), (106, StackRawCall.compTop RawInfo.rawInfo (function106 (.list [])).1), (107, StackRawCall.compTop RawInfo.rawInfo (function107 (.list [])).1), (108, StackRawCall.compTop RawInfo.rawInfo (function108 (.list [])).1), (109, StackRawCall.compTop RawInfo.rawInfo (function109 (.list [])).1), (110, StackRawCall.compTop RawInfo.rawInfo (function110 (.list [])).1), (111, StackRawCall.compTop RawInfo.rawInfo (function111 (.list [])).1)] = bodies
  rw [raw96_eq, raw97_eq, raw98_eq, raw99_eq, raw100_eq, raw101_eq, raw102_eq, raw103_eq, raw104_eq, raw105_eq, raw106_eq, raw107_eq, raw108_eq, raw109_eq, raw110_eq, raw111_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk96_111
