import InitECandidate.Proofs.BackendStages.RawChunk832_847
import InitECandidate.Proofs.BackendStages.Alloc832
import InitECandidate.Proofs.BackendStages.Alloc833
import InitECandidate.Proofs.BackendStages.Alloc834
import InitECandidate.Proofs.BackendStages.Alloc835
import InitECandidate.Proofs.BackendStages.Alloc836
import InitECandidate.Proofs.BackendStages.Alloc837
import InitECandidate.Proofs.BackendStages.Alloc838
import InitECandidate.Proofs.BackendStages.Alloc839
import InitECandidate.Proofs.BackendStages.Alloc840
import InitECandidate.Proofs.BackendStages.Alloc841
import InitECandidate.Proofs.BackendStages.Alloc842
import InitECandidate.Proofs.BackendStages.Alloc843
import InitECandidate.Proofs.BackendStages.Alloc844
import InitECandidate.Proofs.BackendStages.Alloc845
import InitECandidate.Proofs.BackendStages.Alloc846
import InitECandidate.Proofs.BackendStages.Alloc847
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk832_847
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc832, Alloc833, Alloc834, Alloc835, Alloc836, Alloc837, Alloc838, Alloc839, Alloc840, Alloc841, Alloc842, Alloc843, Alloc844, Alloc845, Alloc846, Alloc847]
theorem compiled_eq : RawChunk832_847.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (832, raw832), StackAlloc.progComp (833, raw833), StackAlloc.progComp (834, raw834), StackAlloc.progComp (835, raw835), StackAlloc.progComp (836, raw836), StackAlloc.progComp (837, raw837), StackAlloc.progComp (838, raw838), StackAlloc.progComp (839, raw839), StackAlloc.progComp (840, raw840), StackAlloc.progComp (841, raw841), StackAlloc.progComp (842, raw842), StackAlloc.progComp (843, raw843), StackAlloc.progComp (844, raw844), StackAlloc.progComp (845, raw845), StackAlloc.progComp (846, raw846), StackAlloc.progComp (847, raw847)] = bodies
  rw [Alloc832_eq, Alloc833_eq, Alloc834_eq, Alloc835_eq, Alloc836_eq, Alloc837_eq, Alloc838_eq, Alloc839_eq, Alloc840_eq, Alloc841_eq, Alloc842_eq, Alloc843_eq, Alloc844_eq, Alloc845_eq, Alloc846_eq, Alloc847_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk832_847
