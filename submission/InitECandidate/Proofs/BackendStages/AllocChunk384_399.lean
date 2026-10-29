import InitECandidate.Proofs.BackendStages.RawChunk384_399
import InitECandidate.Proofs.BackendStages.Alloc384
import InitECandidate.Proofs.BackendStages.Alloc385
import InitECandidate.Proofs.BackendStages.Alloc386
import InitECandidate.Proofs.BackendStages.Alloc387
import InitECandidate.Proofs.BackendStages.Alloc388
import InitECandidate.Proofs.BackendStages.Alloc389
import InitECandidate.Proofs.BackendStages.Alloc390
import InitECandidate.Proofs.BackendStages.Alloc391
import InitECandidate.Proofs.BackendStages.Alloc392
import InitECandidate.Proofs.BackendStages.Alloc393
import InitECandidate.Proofs.BackendStages.Alloc394
import InitECandidate.Proofs.BackendStages.Alloc395
import InitECandidate.Proofs.BackendStages.Alloc396
import InitECandidate.Proofs.BackendStages.Alloc397
import InitECandidate.Proofs.BackendStages.Alloc398
import InitECandidate.Proofs.BackendStages.Alloc399
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk384_399
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc384, Alloc385, Alloc386, Alloc387, Alloc388, Alloc389, Alloc390, Alloc391, Alloc392, Alloc393, Alloc394, Alloc395, Alloc396, Alloc397, Alloc398, Alloc399]
theorem compiled_eq : RawChunk384_399.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (384, raw384), StackAlloc.progComp (385, raw385), StackAlloc.progComp (386, raw386), StackAlloc.progComp (387, raw387), StackAlloc.progComp (388, raw388), StackAlloc.progComp (389, raw389), StackAlloc.progComp (390, raw390), StackAlloc.progComp (391, raw391), StackAlloc.progComp (392, raw392), StackAlloc.progComp (393, raw393), StackAlloc.progComp (394, raw394), StackAlloc.progComp (395, raw395), StackAlloc.progComp (396, raw396), StackAlloc.progComp (397, raw397), StackAlloc.progComp (398, raw398), StackAlloc.progComp (399, raw399)] = bodies
  rw [Alloc384_eq, Alloc385_eq, Alloc386_eq, Alloc387_eq, Alloc388_eq, Alloc389_eq, Alloc390_eq, Alloc391_eq, Alloc392_eq, Alloc393_eq, Alloc394_eq, Alloc395_eq, Alloc396_eq, Alloc397_eq, Alloc398_eq, Alloc399_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk384_399
