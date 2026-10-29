import InitECandidate.Proofs.BackendStages.RawChunk608_623
import InitECandidate.Proofs.BackendStages.Alloc608
import InitECandidate.Proofs.BackendStages.Alloc609
import InitECandidate.Proofs.BackendStages.Alloc610
import InitECandidate.Proofs.BackendStages.Alloc611
import InitECandidate.Proofs.BackendStages.Alloc612
import InitECandidate.Proofs.BackendStages.Alloc613
import InitECandidate.Proofs.BackendStages.Alloc614
import InitECandidate.Proofs.BackendStages.Alloc615
import InitECandidate.Proofs.BackendStages.Alloc616
import InitECandidate.Proofs.BackendStages.Alloc617
import InitECandidate.Proofs.BackendStages.Alloc618
import InitECandidate.Proofs.BackendStages.Alloc619
import InitECandidate.Proofs.BackendStages.Alloc620
import InitECandidate.Proofs.BackendStages.Alloc621
import InitECandidate.Proofs.BackendStages.Alloc622
import InitECandidate.Proofs.BackendStages.Alloc623
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk608_623
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc608, Alloc609, Alloc610, Alloc611, Alloc612, Alloc613, Alloc614, Alloc615, Alloc616, Alloc617, Alloc618, Alloc619, Alloc620, Alloc621, Alloc622, Alloc623]
theorem compiled_eq : RawChunk608_623.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (608, raw608), StackAlloc.progComp (609, raw609), StackAlloc.progComp (610, raw610), StackAlloc.progComp (611, raw611), StackAlloc.progComp (612, raw612), StackAlloc.progComp (613, raw613), StackAlloc.progComp (614, raw614), StackAlloc.progComp (615, raw615), StackAlloc.progComp (616, raw616), StackAlloc.progComp (617, raw617), StackAlloc.progComp (618, raw618), StackAlloc.progComp (619, raw619), StackAlloc.progComp (620, raw620), StackAlloc.progComp (621, raw621), StackAlloc.progComp (622, raw622), StackAlloc.progComp (623, raw623)] = bodies
  rw [Alloc608_eq, Alloc609_eq, Alloc610_eq, Alloc611_eq, Alloc612_eq, Alloc613_eq, Alloc614_eq, Alloc615_eq, Alloc616_eq, Alloc617_eq, Alloc618_eq, Alloc619_eq, Alloc620_eq, Alloc621_eq, Alloc622_eq, Alloc623_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk608_623
