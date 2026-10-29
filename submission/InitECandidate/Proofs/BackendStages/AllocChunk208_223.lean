import InitECandidate.Proofs.BackendStages.RawChunk208_223
import InitECandidate.Proofs.BackendStages.Alloc208
import InitECandidate.Proofs.BackendStages.Alloc209
import InitECandidate.Proofs.BackendStages.Alloc210
import InitECandidate.Proofs.BackendStages.Alloc211
import InitECandidate.Proofs.BackendStages.Alloc212
import InitECandidate.Proofs.BackendStages.Alloc213
import InitECandidate.Proofs.BackendStages.Alloc214
import InitECandidate.Proofs.BackendStages.Alloc215
import InitECandidate.Proofs.BackendStages.Alloc216
import InitECandidate.Proofs.BackendStages.Alloc217
import InitECandidate.Proofs.BackendStages.Alloc218
import InitECandidate.Proofs.BackendStages.Alloc219
import InitECandidate.Proofs.BackendStages.Alloc220
import InitECandidate.Proofs.BackendStages.Alloc221
import InitECandidate.Proofs.BackendStages.Alloc222
import InitECandidate.Proofs.BackendStages.Alloc223
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk208_223
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc208, Alloc209, Alloc210, Alloc211, Alloc212, Alloc213, Alloc214, Alloc215, Alloc216, Alloc217, Alloc218, Alloc219, Alloc220, Alloc221, Alloc222, Alloc223]
theorem compiled_eq : RawChunk208_223.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (208, raw208), StackAlloc.progComp (209, raw209), StackAlloc.progComp (210, raw210), StackAlloc.progComp (211, raw211), StackAlloc.progComp (212, raw212), StackAlloc.progComp (213, raw213), StackAlloc.progComp (214, raw214), StackAlloc.progComp (215, raw215), StackAlloc.progComp (216, raw216), StackAlloc.progComp (217, raw217), StackAlloc.progComp (218, raw218), StackAlloc.progComp (219, raw219), StackAlloc.progComp (220, raw220), StackAlloc.progComp (221, raw221), StackAlloc.progComp (222, raw222), StackAlloc.progComp (223, raw223)] = bodies
  rw [Alloc208_eq, Alloc209_eq, Alloc210_eq, Alloc211_eq, Alloc212_eq, Alloc213_eq, Alloc214_eq, Alloc215_eq, Alloc216_eq, Alloc217_eq, Alloc218_eq, Alloc219_eq, Alloc220_eq, Alloc221_eq, Alloc222_eq, Alloc223_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk208_223
