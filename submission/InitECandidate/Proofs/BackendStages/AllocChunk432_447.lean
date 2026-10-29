import InitECandidate.Proofs.BackendStages.RawChunk432_447
import InitECandidate.Proofs.BackendStages.Alloc432
import InitECandidate.Proofs.BackendStages.Alloc433
import InitECandidate.Proofs.BackendStages.Alloc434
import InitECandidate.Proofs.BackendStages.Alloc435
import InitECandidate.Proofs.BackendStages.Alloc436
import InitECandidate.Proofs.BackendStages.Alloc437
import InitECandidate.Proofs.BackendStages.Alloc438
import InitECandidate.Proofs.BackendStages.Alloc439
import InitECandidate.Proofs.BackendStages.Alloc440
import InitECandidate.Proofs.BackendStages.Alloc441
import InitECandidate.Proofs.BackendStages.Alloc442
import InitECandidate.Proofs.BackendStages.Alloc443
import InitECandidate.Proofs.BackendStages.Alloc444
import InitECandidate.Proofs.BackendStages.Alloc445
import InitECandidate.Proofs.BackendStages.Alloc446
import InitECandidate.Proofs.BackendStages.Alloc447
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk432_447
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc432, Alloc433, Alloc434, Alloc435, Alloc436, Alloc437, Alloc438, Alloc439, Alloc440, Alloc441, Alloc442, Alloc443, Alloc444, Alloc445, Alloc446, Alloc447]
theorem compiled_eq : RawChunk432_447.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (432, raw432), StackAlloc.progComp (433, raw433), StackAlloc.progComp (434, raw434), StackAlloc.progComp (435, raw435), StackAlloc.progComp (436, raw436), StackAlloc.progComp (437, raw437), StackAlloc.progComp (438, raw438), StackAlloc.progComp (439, raw439), StackAlloc.progComp (440, raw440), StackAlloc.progComp (441, raw441), StackAlloc.progComp (442, raw442), StackAlloc.progComp (443, raw443), StackAlloc.progComp (444, raw444), StackAlloc.progComp (445, raw445), StackAlloc.progComp (446, raw446), StackAlloc.progComp (447, raw447)] = bodies
  rw [Alloc432_eq, Alloc433_eq, Alloc434_eq, Alloc435_eq, Alloc436_eq, Alloc437_eq, Alloc438_eq, Alloc439_eq, Alloc440_eq, Alloc441_eq, Alloc442_eq, Alloc443_eq, Alloc444_eq, Alloc445_eq, Alloc446_eq, Alloc447_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk432_447
