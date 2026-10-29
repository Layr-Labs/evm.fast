import InitECandidate.Proofs.BackendStages.Chunk576_591
import InitECandidate.Proofs.BackendStages.Raw576
import InitECandidate.Proofs.BackendStages.Raw577
import InitECandidate.Proofs.BackendStages.Raw578
import InitECandidate.Proofs.BackendStages.Raw579
import InitECandidate.Proofs.BackendStages.Raw580
import InitECandidate.Proofs.BackendStages.Raw581
import InitECandidate.Proofs.BackendStages.Raw582
import InitECandidate.Proofs.BackendStages.Raw583
import InitECandidate.Proofs.BackendStages.Raw584
import InitECandidate.Proofs.BackendStages.Raw585
import InitECandidate.Proofs.BackendStages.Raw586
import InitECandidate.Proofs.BackendStages.Raw587
import InitECandidate.Proofs.BackendStages.Raw588
import InitECandidate.Proofs.BackendStages.Raw589
import InitECandidate.Proofs.BackendStages.Raw590
import InitECandidate.Proofs.BackendStages.Raw591
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk576_591
def bodies : List (Nat × StackLang.HolProg 64) := [(576, raw576), (577, raw577), (578, raw578), (579, raw579), (580, raw580), (581, raw581), (582, raw582), (583, raw583), (584, raw584), (585, raw585), (586, raw586), (587, raw587), (588, raw588), (589, raw589), (590, raw590), (591, raw591)]
theorem compiled_eq : Chunk576_591.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(576, StackRawCall.compTop RawInfo.rawInfo (function576 (.list [])).1), (577, StackRawCall.compTop RawInfo.rawInfo (function577 (.list [])).1), (578, StackRawCall.compTop RawInfo.rawInfo (function578 (.list [])).1), (579, StackRawCall.compTop RawInfo.rawInfo (function579 (.list [])).1), (580, StackRawCall.compTop RawInfo.rawInfo (function580 (.list [])).1), (581, StackRawCall.compTop RawInfo.rawInfo (function581 (.list [])).1), (582, StackRawCall.compTop RawInfo.rawInfo (function582 (.list [])).1), (583, StackRawCall.compTop RawInfo.rawInfo (function583 (.list [])).1), (584, StackRawCall.compTop RawInfo.rawInfo (function584 (.list [])).1), (585, StackRawCall.compTop RawInfo.rawInfo (function585 (.list [])).1), (586, StackRawCall.compTop RawInfo.rawInfo (function586 (.list [])).1), (587, StackRawCall.compTop RawInfo.rawInfo (function587 (.list [])).1), (588, StackRawCall.compTop RawInfo.rawInfo (function588 (.list [])).1), (589, StackRawCall.compTop RawInfo.rawInfo (function589 (.list [])).1), (590, StackRawCall.compTop RawInfo.rawInfo (function590 (.list [])).1), (591, StackRawCall.compTop RawInfo.rawInfo (function591 (.list [])).1)] = bodies
  rw [raw576_eq, raw577_eq, raw578_eq, raw579_eq, raw580_eq, raw581_eq, raw582_eq, raw583_eq, raw584_eq, raw585_eq, raw586_eq, raw587_eq, raw588_eq, raw589_eq, raw590_eq, raw591_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk576_591
