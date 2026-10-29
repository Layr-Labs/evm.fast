import InitECandidate.Proofs.BackendStages.RawChunk544_559
import InitECandidate.Proofs.BackendStages.Alloc544
import InitECandidate.Proofs.BackendStages.Alloc545
import InitECandidate.Proofs.BackendStages.Alloc546
import InitECandidate.Proofs.BackendStages.Alloc547
import InitECandidate.Proofs.BackendStages.Alloc548
import InitECandidate.Proofs.BackendStages.Alloc549
import InitECandidate.Proofs.BackendStages.Alloc550
import InitECandidate.Proofs.BackendStages.Alloc551
import InitECandidate.Proofs.BackendStages.Alloc552
import InitECandidate.Proofs.BackendStages.Alloc553
import InitECandidate.Proofs.BackendStages.Alloc554
import InitECandidate.Proofs.BackendStages.Alloc555
import InitECandidate.Proofs.BackendStages.Alloc556
import InitECandidate.Proofs.BackendStages.Alloc557
import InitECandidate.Proofs.BackendStages.Alloc558
import InitECandidate.Proofs.BackendStages.Alloc559
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk544_559
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc544, Alloc545, Alloc546, Alloc547, Alloc548, Alloc549, Alloc550, Alloc551, Alloc552, Alloc553, Alloc554, Alloc555, Alloc556, Alloc557, Alloc558, Alloc559]
theorem compiled_eq : RawChunk544_559.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (544, raw544), StackAlloc.progComp (545, raw545), StackAlloc.progComp (546, raw546), StackAlloc.progComp (547, raw547), StackAlloc.progComp (548, raw548), StackAlloc.progComp (549, raw549), StackAlloc.progComp (550, raw550), StackAlloc.progComp (551, raw551), StackAlloc.progComp (552, raw552), StackAlloc.progComp (553, raw553), StackAlloc.progComp (554, raw554), StackAlloc.progComp (555, raw555), StackAlloc.progComp (556, raw556), StackAlloc.progComp (557, raw557), StackAlloc.progComp (558, raw558), StackAlloc.progComp (559, raw559)] = bodies
  rw [Alloc544_eq, Alloc545_eq, Alloc546_eq, Alloc547_eq, Alloc548_eq, Alloc549_eq, Alloc550_eq, Alloc551_eq, Alloc552_eq, Alloc553_eq, Alloc554_eq, Alloc555_eq, Alloc556_eq, Alloc557_eq, Alloc558_eq, Alloc559_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk544_559
