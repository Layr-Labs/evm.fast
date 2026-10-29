import InitECandidate.Proofs.BackendStages.RawChunk656_671
import InitECandidate.Proofs.BackendStages.Alloc656
import InitECandidate.Proofs.BackendStages.Alloc657
import InitECandidate.Proofs.BackendStages.Alloc658
import InitECandidate.Proofs.BackendStages.Alloc659
import InitECandidate.Proofs.BackendStages.Alloc660
import InitECandidate.Proofs.BackendStages.Alloc661
import InitECandidate.Proofs.BackendStages.Alloc662
import InitECandidate.Proofs.BackendStages.Alloc663
import InitECandidate.Proofs.BackendStages.Alloc664
import InitECandidate.Proofs.BackendStages.Alloc665
import InitECandidate.Proofs.BackendStages.Alloc666
import InitECandidate.Proofs.BackendStages.Alloc667
import InitECandidate.Proofs.BackendStages.Alloc668
import InitECandidate.Proofs.BackendStages.Alloc669
import InitECandidate.Proofs.BackendStages.Alloc670
import InitECandidate.Proofs.BackendStages.Alloc671
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk656_671
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc656, Alloc657, Alloc658, Alloc659, Alloc660, Alloc661, Alloc662, Alloc663, Alloc664, Alloc665, Alloc666, Alloc667, Alloc668, Alloc669, Alloc670, Alloc671]
theorem compiled_eq : RawChunk656_671.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (656, raw656), StackAlloc.progComp (657, raw657), StackAlloc.progComp (658, raw658), StackAlloc.progComp (659, raw659), StackAlloc.progComp (660, raw660), StackAlloc.progComp (661, raw661), StackAlloc.progComp (662, raw662), StackAlloc.progComp (663, raw663), StackAlloc.progComp (664, raw664), StackAlloc.progComp (665, raw665), StackAlloc.progComp (666, raw666), StackAlloc.progComp (667, raw667), StackAlloc.progComp (668, raw668), StackAlloc.progComp (669, raw669), StackAlloc.progComp (670, raw670), StackAlloc.progComp (671, raw671)] = bodies
  rw [Alloc656_eq, Alloc657_eq, Alloc658_eq, Alloc659_eq, Alloc660_eq, Alloc661_eq, Alloc662_eq, Alloc663_eq, Alloc664_eq, Alloc665_eq, Alloc666_eq, Alloc667_eq, Alloc668_eq, Alloc669_eq, Alloc670_eq, Alloc671_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk656_671
