import InitECandidate.Proofs.BackendStages.RawChunk464_479
import InitECandidate.Proofs.BackendStages.Alloc464
import InitECandidate.Proofs.BackendStages.Alloc465
import InitECandidate.Proofs.BackendStages.Alloc466
import InitECandidate.Proofs.BackendStages.Alloc467
import InitECandidate.Proofs.BackendStages.Alloc468
import InitECandidate.Proofs.BackendStages.Alloc469
import InitECandidate.Proofs.BackendStages.Alloc470
import InitECandidate.Proofs.BackendStages.Alloc471
import InitECandidate.Proofs.BackendStages.Alloc472
import InitECandidate.Proofs.BackendStages.Alloc473
import InitECandidate.Proofs.BackendStages.Alloc474
import InitECandidate.Proofs.BackendStages.Alloc475
import InitECandidate.Proofs.BackendStages.Alloc476
import InitECandidate.Proofs.BackendStages.Alloc477
import InitECandidate.Proofs.BackendStages.Alloc478
import InitECandidate.Proofs.BackendStages.Alloc479
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk464_479
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc464, Alloc465, Alloc466, Alloc467, Alloc468, Alloc469, Alloc470, Alloc471, Alloc472, Alloc473, Alloc474, Alloc475, Alloc476, Alloc477, Alloc478, Alloc479]
theorem compiled_eq : RawChunk464_479.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (464, raw464), StackAlloc.progComp (465, raw465), StackAlloc.progComp (466, raw466), StackAlloc.progComp (467, raw467), StackAlloc.progComp (468, raw468), StackAlloc.progComp (469, raw469), StackAlloc.progComp (470, raw470), StackAlloc.progComp (471, raw471), StackAlloc.progComp (472, raw472), StackAlloc.progComp (473, raw473), StackAlloc.progComp (474, raw474), StackAlloc.progComp (475, raw475), StackAlloc.progComp (476, raw476), StackAlloc.progComp (477, raw477), StackAlloc.progComp (478, raw478), StackAlloc.progComp (479, raw479)] = bodies
  rw [Alloc464_eq, Alloc465_eq, Alloc466_eq, Alloc467_eq, Alloc468_eq, Alloc469_eq, Alloc470_eq, Alloc471_eq, Alloc472_eq, Alloc473_eq, Alloc474_eq, Alloc475_eq, Alloc476_eq, Alloc477_eq, Alloc478_eq, Alloc479_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk464_479
