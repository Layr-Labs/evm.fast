import InitECandidate.Proofs.BackendStages.RawChunk336_351
import InitECandidate.Proofs.BackendStages.Alloc336
import InitECandidate.Proofs.BackendStages.Alloc337
import InitECandidate.Proofs.BackendStages.Alloc338
import InitECandidate.Proofs.BackendStages.Alloc339
import InitECandidate.Proofs.BackendStages.Alloc340
import InitECandidate.Proofs.BackendStages.Alloc341
import InitECandidate.Proofs.BackendStages.Alloc342
import InitECandidate.Proofs.BackendStages.Alloc343
import InitECandidate.Proofs.BackendStages.Alloc344
import InitECandidate.Proofs.BackendStages.Alloc345
import InitECandidate.Proofs.BackendStages.Alloc346
import InitECandidate.Proofs.BackendStages.Alloc347
import InitECandidate.Proofs.BackendStages.Alloc348
import InitECandidate.Proofs.BackendStages.Alloc349
import InitECandidate.Proofs.BackendStages.Alloc350
import InitECandidate.Proofs.BackendStages.Alloc351
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk336_351
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc336, Alloc337, Alloc338, Alloc339, Alloc340, Alloc341, Alloc342, Alloc343, Alloc344, Alloc345, Alloc346, Alloc347, Alloc348, Alloc349, Alloc350, Alloc351]
theorem compiled_eq : RawChunk336_351.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (336, raw336), StackAlloc.progComp (337, raw337), StackAlloc.progComp (338, raw338), StackAlloc.progComp (339, raw339), StackAlloc.progComp (340, raw340), StackAlloc.progComp (341, raw341), StackAlloc.progComp (342, raw342), StackAlloc.progComp (343, raw343), StackAlloc.progComp (344, raw344), StackAlloc.progComp (345, raw345), StackAlloc.progComp (346, raw346), StackAlloc.progComp (347, raw347), StackAlloc.progComp (348, raw348), StackAlloc.progComp (349, raw349), StackAlloc.progComp (350, raw350), StackAlloc.progComp (351, raw351)] = bodies
  rw [Alloc336_eq, Alloc337_eq, Alloc338_eq, Alloc339_eq, Alloc340_eq, Alloc341_eq, Alloc342_eq, Alloc343_eq, Alloc344_eq, Alloc345_eq, Alloc346_eq, Alloc347_eq, Alloc348_eq, Alloc349_eq, Alloc350_eq, Alloc351_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk336_351
