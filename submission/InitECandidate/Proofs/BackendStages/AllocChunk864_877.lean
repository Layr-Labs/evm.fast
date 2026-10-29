import InitECandidate.Proofs.BackendStages.RawChunk864_877
import InitECandidate.Proofs.BackendStages.Alloc864
import InitECandidate.Proofs.BackendStages.Alloc865
import InitECandidate.Proofs.BackendStages.Alloc866
import InitECandidate.Proofs.BackendStages.Alloc867
import InitECandidate.Proofs.BackendStages.Alloc868
import InitECandidate.Proofs.BackendStages.Alloc869
import InitECandidate.Proofs.BackendStages.Alloc870
import InitECandidate.Proofs.BackendStages.Alloc871
import InitECandidate.Proofs.BackendStages.Alloc872
import InitECandidate.Proofs.BackendStages.Alloc873
import InitECandidate.Proofs.BackendStages.Alloc874
import InitECandidate.Proofs.BackendStages.Alloc875
import InitECandidate.Proofs.BackendStages.Alloc876
import InitECandidate.Proofs.BackendStages.Alloc877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk864_877
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc864, Alloc865, Alloc866, Alloc867, Alloc868, Alloc869, Alloc870, Alloc871, Alloc872, Alloc873, Alloc874, Alloc875, Alloc876, Alloc877]
theorem compiled_eq : RawChunk864_877.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (864, raw864), StackAlloc.progComp (865, raw865), StackAlloc.progComp (866, raw866), StackAlloc.progComp (867, raw867), StackAlloc.progComp (868, raw868), StackAlloc.progComp (869, raw869), StackAlloc.progComp (870, raw870), StackAlloc.progComp (871, raw871), StackAlloc.progComp (872, raw872), StackAlloc.progComp (873, raw873), StackAlloc.progComp (874, raw874), StackAlloc.progComp (875, raw875), StackAlloc.progComp (876, raw876), StackAlloc.progComp (877, raw877)] = bodies
  rw [Alloc864_eq, Alloc865_eq, Alloc866_eq, Alloc867_eq, Alloc868_eq, Alloc869_eq, Alloc870_eq, Alloc871_eq, Alloc872_eq, Alloc873_eq, Alloc874_eq, Alloc875_eq, Alloc876_eq, Alloc877_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk864_877
