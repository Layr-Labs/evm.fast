import InitECandidate.Proofs.BackendStages.Chunk656_671
import InitECandidate.Proofs.BackendStages.Raw656
import InitECandidate.Proofs.BackendStages.Raw657
import InitECandidate.Proofs.BackendStages.Raw658
import InitECandidate.Proofs.BackendStages.Raw659
import InitECandidate.Proofs.BackendStages.Raw660
import InitECandidate.Proofs.BackendStages.Raw661
import InitECandidate.Proofs.BackendStages.Raw662
import InitECandidate.Proofs.BackendStages.Raw663
import InitECandidate.Proofs.BackendStages.Raw664
import InitECandidate.Proofs.BackendStages.Raw665
import InitECandidate.Proofs.BackendStages.Raw666
import InitECandidate.Proofs.BackendStages.Raw667
import InitECandidate.Proofs.BackendStages.Raw668
import InitECandidate.Proofs.BackendStages.Raw669
import InitECandidate.Proofs.BackendStages.Raw670
import InitECandidate.Proofs.BackendStages.Raw671
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk656_671
def bodies : List (Nat × StackLang.HolProg 64) := [(656, raw656), (657, raw657), (658, raw658), (659, raw659), (660, raw660), (661, raw661), (662, raw662), (663, raw663), (664, raw664), (665, raw665), (666, raw666), (667, raw667), (668, raw668), (669, raw669), (670, raw670), (671, raw671)]
theorem compiled_eq : Chunk656_671.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(656, StackRawCall.compTop RawInfo.rawInfo (function656 (.list [])).1), (657, StackRawCall.compTop RawInfo.rawInfo (function657 (.list [])).1), (658, StackRawCall.compTop RawInfo.rawInfo (function658 (.list [])).1), (659, StackRawCall.compTop RawInfo.rawInfo (function659 (.list [])).1), (660, StackRawCall.compTop RawInfo.rawInfo (function660 (.list [])).1), (661, StackRawCall.compTop RawInfo.rawInfo (function661 (.list [])).1), (662, StackRawCall.compTop RawInfo.rawInfo (function662 (.list [])).1), (663, StackRawCall.compTop RawInfo.rawInfo (function663 (.list [])).1), (664, StackRawCall.compTop RawInfo.rawInfo (function664 (.list [])).1), (665, StackRawCall.compTop RawInfo.rawInfo (function665 (.list [])).1), (666, StackRawCall.compTop RawInfo.rawInfo (function666 (.list [])).1), (667, StackRawCall.compTop RawInfo.rawInfo (function667 (.list [])).1), (668, StackRawCall.compTop RawInfo.rawInfo (function668 (.list [])).1), (669, StackRawCall.compTop RawInfo.rawInfo (function669 (.list [])).1), (670, StackRawCall.compTop RawInfo.rawInfo (function670 (.list [])).1), (671, StackRawCall.compTop RawInfo.rawInfo (function671 (.list [])).1)] = bodies
  rw [raw656_eq, raw657_eq, raw658_eq, raw659_eq, raw660_eq, raw661_eq, raw662_eq, raw663_eq, raw664_eq, raw665_eq, raw666_eq, raw667_eq, raw668_eq, raw669_eq, raw670_eq, raw671_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk656_671
