import InitECandidate.Proofs.BackendStages.RawChunk672_687
import InitECandidate.Proofs.BackendStages.Alloc672
import InitECandidate.Proofs.BackendStages.Alloc673
import InitECandidate.Proofs.BackendStages.Alloc674
import InitECandidate.Proofs.BackendStages.Alloc675
import InitECandidate.Proofs.BackendStages.Alloc676
import InitECandidate.Proofs.BackendStages.Alloc677
import InitECandidate.Proofs.BackendStages.Alloc678
import InitECandidate.Proofs.BackendStages.Alloc679
import InitECandidate.Proofs.BackendStages.Alloc680
import InitECandidate.Proofs.BackendStages.Alloc681
import InitECandidate.Proofs.BackendStages.Alloc682
import InitECandidate.Proofs.BackendStages.Alloc683
import InitECandidate.Proofs.BackendStages.Alloc684
import InitECandidate.Proofs.BackendStages.Alloc685
import InitECandidate.Proofs.BackendStages.Alloc686
import InitECandidate.Proofs.BackendStages.Alloc687
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk672_687
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc672, Alloc673, Alloc674, Alloc675, Alloc676, Alloc677, Alloc678, Alloc679, Alloc680, Alloc681, Alloc682, Alloc683, Alloc684, Alloc685, Alloc686, Alloc687]
theorem compiled_eq : RawChunk672_687.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (672, raw672), StackAlloc.progComp (673, raw673), StackAlloc.progComp (674, raw674), StackAlloc.progComp (675, raw675), StackAlloc.progComp (676, raw676), StackAlloc.progComp (677, raw677), StackAlloc.progComp (678, raw678), StackAlloc.progComp (679, raw679), StackAlloc.progComp (680, raw680), StackAlloc.progComp (681, raw681), StackAlloc.progComp (682, raw682), StackAlloc.progComp (683, raw683), StackAlloc.progComp (684, raw684), StackAlloc.progComp (685, raw685), StackAlloc.progComp (686, raw686), StackAlloc.progComp (687, raw687)] = bodies
  rw [Alloc672_eq, Alloc673_eq, Alloc674_eq, Alloc675_eq, Alloc676_eq, Alloc677_eq, Alloc678_eq, Alloc679_eq, Alloc680_eq, Alloc681_eq, Alloc682_eq, Alloc683_eq, Alloc684_eq, Alloc685_eq, Alloc686_eq, Alloc687_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk672_687
