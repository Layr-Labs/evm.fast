import InitECandidate.Proofs.BackendStages.Chunk496_511
import InitECandidate.Proofs.BackendStages.Raw496
import InitECandidate.Proofs.BackendStages.Raw497
import InitECandidate.Proofs.BackendStages.Raw498
import InitECandidate.Proofs.BackendStages.Raw499
import InitECandidate.Proofs.BackendStages.Raw500
import InitECandidate.Proofs.BackendStages.Raw501
import InitECandidate.Proofs.BackendStages.Raw502
import InitECandidate.Proofs.BackendStages.Raw503
import InitECandidate.Proofs.BackendStages.Raw504
import InitECandidate.Proofs.BackendStages.Raw505
import InitECandidate.Proofs.BackendStages.Raw506
import InitECandidate.Proofs.BackendStages.Raw507
import InitECandidate.Proofs.BackendStages.Raw508
import InitECandidate.Proofs.BackendStages.Raw509
import InitECandidate.Proofs.BackendStages.Raw510
import InitECandidate.Proofs.BackendStages.Raw511
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk496_511
def bodies : List (Nat × StackLang.HolProg 64) := [(496, raw496), (497, raw497), (498, raw498), (499, raw499), (500, raw500), (501, raw501), (502, raw502), (503, raw503), (504, raw504), (505, raw505), (506, raw506), (507, raw507), (508, raw508), (509, raw509), (510, raw510), (511, raw511)]
theorem compiled_eq : Chunk496_511.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(496, StackRawCall.compTop RawInfo.rawInfo (function496 (.list [])).1), (497, StackRawCall.compTop RawInfo.rawInfo (function497 (.list [])).1), (498, StackRawCall.compTop RawInfo.rawInfo (function498 (.list [])).1), (499, StackRawCall.compTop RawInfo.rawInfo (function499 (.list [])).1), (500, StackRawCall.compTop RawInfo.rawInfo (function500 (.list [])).1), (501, StackRawCall.compTop RawInfo.rawInfo (function501 (.list [])).1), (502, StackRawCall.compTop RawInfo.rawInfo (function502 (.list [])).1), (503, StackRawCall.compTop RawInfo.rawInfo (function503 (.list [])).1), (504, StackRawCall.compTop RawInfo.rawInfo (function504 (.list [])).1), (505, StackRawCall.compTop RawInfo.rawInfo (function505 (.list [])).1), (506, StackRawCall.compTop RawInfo.rawInfo (function506 (.list [])).1), (507, StackRawCall.compTop RawInfo.rawInfo (function507 (.list [])).1), (508, StackRawCall.compTop RawInfo.rawInfo (function508 (.list [])).1), (509, StackRawCall.compTop RawInfo.rawInfo (function509 (.list [])).1), (510, StackRawCall.compTop RawInfo.rawInfo (function510 (.list [])).1), (511, StackRawCall.compTop RawInfo.rawInfo (function511 (.list [])).1)] = bodies
  rw [raw496_eq, raw497_eq, raw498_eq, raw499_eq, raw500_eq, raw501_eq, raw502_eq, raw503_eq, raw504_eq, raw505_eq, raw506_eq, raw507_eq, raw508_eq, raw509_eq, raw510_eq, raw511_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk496_511
