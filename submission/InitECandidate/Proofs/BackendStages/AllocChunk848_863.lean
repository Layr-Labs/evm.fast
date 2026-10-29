import InitECandidate.Proofs.BackendStages.RawChunk848_863
import InitECandidate.Proofs.BackendStages.Alloc848
import InitECandidate.Proofs.BackendStages.Alloc849
import InitECandidate.Proofs.BackendStages.Alloc850
import InitECandidate.Proofs.BackendStages.Alloc851
import InitECandidate.Proofs.BackendStages.Alloc852
import InitECandidate.Proofs.BackendStages.Alloc853
import InitECandidate.Proofs.BackendStages.Alloc854
import InitECandidate.Proofs.BackendStages.Alloc855
import InitECandidate.Proofs.BackendStages.Alloc856
import InitECandidate.Proofs.BackendStages.Alloc857
import InitECandidate.Proofs.BackendStages.Alloc858
import InitECandidate.Proofs.BackendStages.Alloc859
import InitECandidate.Proofs.BackendStages.Alloc860
import InitECandidate.Proofs.BackendStages.Alloc861
import InitECandidate.Proofs.BackendStages.Alloc862
import InitECandidate.Proofs.BackendStages.Alloc863
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk848_863
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc848, Alloc849, Alloc850, Alloc851, Alloc852, Alloc853, Alloc854, Alloc855, Alloc856, Alloc857, Alloc858, Alloc859, Alloc860, Alloc861, Alloc862, Alloc863]
theorem compiled_eq : RawChunk848_863.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (848, raw848), StackAlloc.progComp (849, raw849), StackAlloc.progComp (850, raw850), StackAlloc.progComp (851, raw851), StackAlloc.progComp (852, raw852), StackAlloc.progComp (853, raw853), StackAlloc.progComp (854, raw854), StackAlloc.progComp (855, raw855), StackAlloc.progComp (856, raw856), StackAlloc.progComp (857, raw857), StackAlloc.progComp (858, raw858), StackAlloc.progComp (859, raw859), StackAlloc.progComp (860, raw860), StackAlloc.progComp (861, raw861), StackAlloc.progComp (862, raw862), StackAlloc.progComp (863, raw863)] = bodies
  rw [Alloc848_eq, Alloc849_eq, Alloc850_eq, Alloc851_eq, Alloc852_eq, Alloc853_eq, Alloc854_eq, Alloc855_eq, Alloc856_eq, Alloc857_eq, Alloc858_eq, Alloc859_eq, Alloc860_eq, Alloc861_eq, Alloc862_eq, Alloc863_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk848_863
