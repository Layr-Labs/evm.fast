import InitECandidate.Proofs.BackendStages.RawChunk528_543
import InitECandidate.Proofs.BackendStages.Alloc528
import InitECandidate.Proofs.BackendStages.Alloc529
import InitECandidate.Proofs.BackendStages.Alloc530
import InitECandidate.Proofs.BackendStages.Alloc531
import InitECandidate.Proofs.BackendStages.Alloc532
import InitECandidate.Proofs.BackendStages.Alloc533
import InitECandidate.Proofs.BackendStages.Alloc534
import InitECandidate.Proofs.BackendStages.Alloc535
import InitECandidate.Proofs.BackendStages.Alloc536
import InitECandidate.Proofs.BackendStages.Alloc537
import InitECandidate.Proofs.BackendStages.Alloc538
import InitECandidate.Proofs.BackendStages.Alloc539
import InitECandidate.Proofs.BackendStages.Alloc540
import InitECandidate.Proofs.BackendStages.Alloc541
import InitECandidate.Proofs.BackendStages.Alloc542
import InitECandidate.Proofs.BackendStages.Alloc543
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk528_543
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc528, Alloc529, Alloc530, Alloc531, Alloc532, Alloc533, Alloc534, Alloc535, Alloc536, Alloc537, Alloc538, Alloc539, Alloc540, Alloc541, Alloc542, Alloc543]
theorem compiled_eq : RawChunk528_543.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (528, raw528), StackAlloc.progComp (529, raw529), StackAlloc.progComp (530, raw530), StackAlloc.progComp (531, raw531), StackAlloc.progComp (532, raw532), StackAlloc.progComp (533, raw533), StackAlloc.progComp (534, raw534), StackAlloc.progComp (535, raw535), StackAlloc.progComp (536, raw536), StackAlloc.progComp (537, raw537), StackAlloc.progComp (538, raw538), StackAlloc.progComp (539, raw539), StackAlloc.progComp (540, raw540), StackAlloc.progComp (541, raw541), StackAlloc.progComp (542, raw542), StackAlloc.progComp (543, raw543)] = bodies
  rw [Alloc528_eq, Alloc529_eq, Alloc530_eq, Alloc531_eq, Alloc532_eq, Alloc533_eq, Alloc534_eq, Alloc535_eq, Alloc536_eq, Alloc537_eq, Alloc538_eq, Alloc539_eq, Alloc540_eq, Alloc541_eq, Alloc542_eq, Alloc543_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk528_543
