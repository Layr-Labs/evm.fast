import InitECandidate.Proofs.BackendStages.RawChunk752_767
import InitECandidate.Proofs.BackendStages.Alloc752
import InitECandidate.Proofs.BackendStages.Alloc753
import InitECandidate.Proofs.BackendStages.Alloc754
import InitECandidate.Proofs.BackendStages.Alloc755
import InitECandidate.Proofs.BackendStages.Alloc756
import InitECandidate.Proofs.BackendStages.Alloc757
import InitECandidate.Proofs.BackendStages.Alloc758
import InitECandidate.Proofs.BackendStages.Alloc759
import InitECandidate.Proofs.BackendStages.Alloc760
import InitECandidate.Proofs.BackendStages.Alloc761
import InitECandidate.Proofs.BackendStages.Alloc762
import InitECandidate.Proofs.BackendStages.Alloc763
import InitECandidate.Proofs.BackendStages.Alloc764
import InitECandidate.Proofs.BackendStages.Alloc765
import InitECandidate.Proofs.BackendStages.Alloc766
import InitECandidate.Proofs.BackendStages.Alloc767
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk752_767
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc752, Alloc753, Alloc754, Alloc755, Alloc756, Alloc757, Alloc758, Alloc759, Alloc760, Alloc761, Alloc762, Alloc763, Alloc764, Alloc765, Alloc766, Alloc767]
theorem compiled_eq : RawChunk752_767.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (752, raw752), StackAlloc.progComp (753, raw753), StackAlloc.progComp (754, raw754), StackAlloc.progComp (755, raw755), StackAlloc.progComp (756, raw756), StackAlloc.progComp (757, raw757), StackAlloc.progComp (758, raw758), StackAlloc.progComp (759, raw759), StackAlloc.progComp (760, raw760), StackAlloc.progComp (761, raw761), StackAlloc.progComp (762, raw762), StackAlloc.progComp (763, raw763), StackAlloc.progComp (764, raw764), StackAlloc.progComp (765, raw765), StackAlloc.progComp (766, raw766), StackAlloc.progComp (767, raw767)] = bodies
  rw [Alloc752_eq, Alloc753_eq, Alloc754_eq, Alloc755_eq, Alloc756_eq, Alloc757_eq, Alloc758_eq, Alloc759_eq, Alloc760_eq, Alloc761_eq, Alloc762_eq, Alloc763_eq, Alloc764_eq, Alloc765_eq, Alloc766_eq, Alloc767_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk752_767
