import InitECandidate.Proofs.BackendStages.Chunk480_495
import InitECandidate.Proofs.BackendStages.Raw480
import InitECandidate.Proofs.BackendStages.Raw481
import InitECandidate.Proofs.BackendStages.Raw482
import InitECandidate.Proofs.BackendStages.Raw483
import InitECandidate.Proofs.BackendStages.Raw484
import InitECandidate.Proofs.BackendStages.Raw485
import InitECandidate.Proofs.BackendStages.Raw486
import InitECandidate.Proofs.BackendStages.Raw487
import InitECandidate.Proofs.BackendStages.Raw488
import InitECandidate.Proofs.BackendStages.Raw489
import InitECandidate.Proofs.BackendStages.Raw490
import InitECandidate.Proofs.BackendStages.Raw491
import InitECandidate.Proofs.BackendStages.Raw492
import InitECandidate.Proofs.BackendStages.Raw493
import InitECandidate.Proofs.BackendStages.Raw494
import InitECandidate.Proofs.BackendStages.Raw495
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk480_495
def bodies : List (Nat × StackLang.HolProg 64) := [(480, raw480), (481, raw481), (482, raw482), (483, raw483), (484, raw484), (485, raw485), (486, raw486), (487, raw487), (488, raw488), (489, raw489), (490, raw490), (491, raw491), (492, raw492), (493, raw493), (494, raw494), (495, raw495)]
theorem compiled_eq : Chunk480_495.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(480, StackRawCall.compTop RawInfo.rawInfo (function480 (.list [])).1), (481, StackRawCall.compTop RawInfo.rawInfo (function481 (.list [])).1), (482, StackRawCall.compTop RawInfo.rawInfo (function482 (.list [])).1), (483, StackRawCall.compTop RawInfo.rawInfo (function483 (.list [])).1), (484, StackRawCall.compTop RawInfo.rawInfo (function484 (.list [])).1), (485, StackRawCall.compTop RawInfo.rawInfo (function485 (.list [])).1), (486, StackRawCall.compTop RawInfo.rawInfo (function486 (.list [])).1), (487, StackRawCall.compTop RawInfo.rawInfo (function487 (.list [])).1), (488, StackRawCall.compTop RawInfo.rawInfo (function488 (.list [])).1), (489, StackRawCall.compTop RawInfo.rawInfo (function489 (.list [])).1), (490, StackRawCall.compTop RawInfo.rawInfo (function490 (.list [])).1), (491, StackRawCall.compTop RawInfo.rawInfo (function491 (.list [])).1), (492, StackRawCall.compTop RawInfo.rawInfo (function492 (.list [])).1), (493, StackRawCall.compTop RawInfo.rawInfo (function493 (.list [])).1), (494, StackRawCall.compTop RawInfo.rawInfo (function494 (.list [])).1), (495, StackRawCall.compTop RawInfo.rawInfo (function495 (.list [])).1)] = bodies
  rw [raw480_eq, raw481_eq, raw482_eq, raw483_eq, raw484_eq, raw485_eq, raw486_eq, raw487_eq, raw488_eq, raw489_eq, raw490_eq, raw491_eq, raw492_eq, raw493_eq, raw494_eq, raw495_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk480_495
