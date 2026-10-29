import InitECandidate.Proofs.BackendStages.Chunk352_367
import InitECandidate.Proofs.BackendStages.Raw352
import InitECandidate.Proofs.BackendStages.Raw353
import InitECandidate.Proofs.BackendStages.Raw354
import InitECandidate.Proofs.BackendStages.Raw355
import InitECandidate.Proofs.BackendStages.Raw356
import InitECandidate.Proofs.BackendStages.Raw357
import InitECandidate.Proofs.BackendStages.Raw358
import InitECandidate.Proofs.BackendStages.Raw359
import InitECandidate.Proofs.BackendStages.Raw360
import InitECandidate.Proofs.BackendStages.Raw361
import InitECandidate.Proofs.BackendStages.Raw362
import InitECandidate.Proofs.BackendStages.Raw363
import InitECandidate.Proofs.BackendStages.Raw364
import InitECandidate.Proofs.BackendStages.Raw365
import InitECandidate.Proofs.BackendStages.Raw366
import InitECandidate.Proofs.BackendStages.Raw367
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawChunk352_367
def bodies : List (Nat × StackLang.HolProg 64) := [(352, raw352), (353, raw353), (354, raw354), (355, raw355), (356, raw356), (357, raw357), (358, raw358), (359, raw359), (360, raw360), (361, raw361), (362, raw362), (363, raw363), (364, raw364), (365, raw365), (366, raw366), (367, raw367)]
theorem compiled_eq : Chunk352_367.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(352, StackRawCall.compTop RawInfo.rawInfo (function352 (.list [])).1), (353, StackRawCall.compTop RawInfo.rawInfo (function353 (.list [])).1), (354, StackRawCall.compTop RawInfo.rawInfo (function354 (.list [])).1), (355, StackRawCall.compTop RawInfo.rawInfo (function355 (.list [])).1), (356, StackRawCall.compTop RawInfo.rawInfo (function356 (.list [])).1), (357, StackRawCall.compTop RawInfo.rawInfo (function357 (.list [])).1), (358, StackRawCall.compTop RawInfo.rawInfo (function358 (.list [])).1), (359, StackRawCall.compTop RawInfo.rawInfo (function359 (.list [])).1), (360, StackRawCall.compTop RawInfo.rawInfo (function360 (.list [])).1), (361, StackRawCall.compTop RawInfo.rawInfo (function361 (.list [])).1), (362, StackRawCall.compTop RawInfo.rawInfo (function362 (.list [])).1), (363, StackRawCall.compTop RawInfo.rawInfo (function363 (.list [])).1), (364, StackRawCall.compTop RawInfo.rawInfo (function364 (.list [])).1), (365, StackRawCall.compTop RawInfo.rawInfo (function365 (.list [])).1), (366, StackRawCall.compTop RawInfo.rawInfo (function366 (.list [])).1), (367, StackRawCall.compTop RawInfo.rawInfo (function367 (.list [])).1)] = bodies
  rw [raw352_eq, raw353_eq, raw354_eq, raw355_eq, raw356_eq, raw357_eq, raw358_eq, raw359_eq, raw360_eq, raw361_eq, raw362_eq, raw363_eq, raw364_eq, raw365_eq, raw366_eq, raw367_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RawChunk352_367
