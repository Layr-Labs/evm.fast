import InitECandidate.Proofs.BackendStages.RawChunk368_383
import InitECandidate.Proofs.BackendStages.Alloc368
import InitECandidate.Proofs.BackendStages.Alloc369
import InitECandidate.Proofs.BackendStages.Alloc370
import InitECandidate.Proofs.BackendStages.Alloc371
import InitECandidate.Proofs.BackendStages.Alloc372
import InitECandidate.Proofs.BackendStages.Alloc373
import InitECandidate.Proofs.BackendStages.Alloc374
import InitECandidate.Proofs.BackendStages.Alloc375
import InitECandidate.Proofs.BackendStages.Alloc376
import InitECandidate.Proofs.BackendStages.Alloc377
import InitECandidate.Proofs.BackendStages.Alloc378
import InitECandidate.Proofs.BackendStages.Alloc379
import InitECandidate.Proofs.BackendStages.Alloc380
import InitECandidate.Proofs.BackendStages.Alloc381
import InitECandidate.Proofs.BackendStages.Alloc382
import InitECandidate.Proofs.BackendStages.Alloc383
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk368_383
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc368, Alloc369, Alloc370, Alloc371, Alloc372, Alloc373, Alloc374, Alloc375, Alloc376, Alloc377, Alloc378, Alloc379, Alloc380, Alloc381, Alloc382, Alloc383]
theorem compiled_eq : RawChunk368_383.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (368, raw368), StackAlloc.progComp (369, raw369), StackAlloc.progComp (370, raw370), StackAlloc.progComp (371, raw371), StackAlloc.progComp (372, raw372), StackAlloc.progComp (373, raw373), StackAlloc.progComp (374, raw374), StackAlloc.progComp (375, raw375), StackAlloc.progComp (376, raw376), StackAlloc.progComp (377, raw377), StackAlloc.progComp (378, raw378), StackAlloc.progComp (379, raw379), StackAlloc.progComp (380, raw380), StackAlloc.progComp (381, raw381), StackAlloc.progComp (382, raw382), StackAlloc.progComp (383, raw383)] = bodies
  rw [Alloc368_eq, Alloc369_eq, Alloc370_eq, Alloc371_eq, Alloc372_eq, Alloc373_eq, Alloc374_eq, Alloc375_eq, Alloc376_eq, Alloc377_eq, Alloc378_eq, Alloc379_eq, Alloc380_eq, Alloc381_eq, Alloc382_eq, Alloc383_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk368_383
