import InitECandidate.Proofs.BackendStages.Chunk64_79
import InitECandidate.Proofs.BackendStages.Raw64
import InitECandidate.Proofs.BackendStages.Raw65
import InitECandidate.Proofs.BackendStages.Raw66
import InitECandidate.Proofs.BackendStages.Raw67
import InitECandidate.Proofs.BackendStages.Raw68
import InitECandidate.Proofs.BackendStages.Raw69
import InitECandidate.Proofs.BackendStages.Raw70
import InitECandidate.Proofs.BackendStages.Raw71
import InitECandidate.Proofs.BackendStages.Raw72
import InitECandidate.Proofs.BackendStages.Raw73
import InitECandidate.Proofs.BackendStages.Raw74
import InitECandidate.Proofs.BackendStages.Raw75
import InitECandidate.Proofs.BackendStages.Raw76
import InitECandidate.Proofs.BackendStages.Raw77
import InitECandidate.Proofs.BackendStages.Raw78
import InitECandidate.Proofs.BackendStages.Raw79
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk64_79
def bodies : List (Nat × StackLang.HolProg 64) := [(64, raw64), (65, raw65), (66, raw66), (67, raw67), (68, raw68), (69, raw69), (70, raw70), (71, raw71), (72, raw72), (73, raw73), (74, raw74), (75, raw75), (76, raw76), (77, raw77), (78, raw78), (79, raw79)]
theorem compiled_eq : Chunk64_79.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(64, StackRawCall.compTop RawInfo.rawInfo (function64 (.list [])).1), (65, StackRawCall.compTop RawInfo.rawInfo (function65 (.list [])).1), (66, StackRawCall.compTop RawInfo.rawInfo (function66 (.list [])).1), (67, StackRawCall.compTop RawInfo.rawInfo (function67 (.list [])).1), (68, StackRawCall.compTop RawInfo.rawInfo (function68 (.list [])).1), (69, StackRawCall.compTop RawInfo.rawInfo (function69 (.list [])).1), (70, StackRawCall.compTop RawInfo.rawInfo (function70 (.list [])).1), (71, StackRawCall.compTop RawInfo.rawInfo (function71 (.list [])).1), (72, StackRawCall.compTop RawInfo.rawInfo (function72 (.list [])).1), (73, StackRawCall.compTop RawInfo.rawInfo (function73 (.list [])).1), (74, StackRawCall.compTop RawInfo.rawInfo (function74 (.list [])).1), (75, StackRawCall.compTop RawInfo.rawInfo (function75 (.list [])).1), (76, StackRawCall.compTop RawInfo.rawInfo (function76 (.list [])).1), (77, StackRawCall.compTop RawInfo.rawInfo (function77 (.list [])).1), (78, StackRawCall.compTop RawInfo.rawInfo (function78 (.list [])).1), (79, StackRawCall.compTop RawInfo.rawInfo (function79 (.list [])).1)] = bodies
  rw [raw64_eq, raw65_eq, raw66_eq, raw67_eq, raw68_eq, raw69_eq, raw70_eq, raw71_eq, raw72_eq, raw73_eq, raw74_eq, raw75_eq, raw76_eq, raw77_eq, raw78_eq, raw79_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk64_79
