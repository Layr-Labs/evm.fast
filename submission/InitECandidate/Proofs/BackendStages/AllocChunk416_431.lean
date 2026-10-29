import InitECandidate.Proofs.BackendStages.RawChunk416_431
import InitECandidate.Proofs.BackendStages.Alloc416
import InitECandidate.Proofs.BackendStages.Alloc417
import InitECandidate.Proofs.BackendStages.Alloc418
import InitECandidate.Proofs.BackendStages.Alloc419
import InitECandidate.Proofs.BackendStages.Alloc420
import InitECandidate.Proofs.BackendStages.Alloc421
import InitECandidate.Proofs.BackendStages.Alloc422
import InitECandidate.Proofs.BackendStages.Alloc423
import InitECandidate.Proofs.BackendStages.Alloc424
import InitECandidate.Proofs.BackendStages.Alloc425
import InitECandidate.Proofs.BackendStages.Alloc426
import InitECandidate.Proofs.BackendStages.Alloc427
import InitECandidate.Proofs.BackendStages.Alloc428
import InitECandidate.Proofs.BackendStages.Alloc429
import InitECandidate.Proofs.BackendStages.Alloc430
import InitECandidate.Proofs.BackendStages.Alloc431
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk416_431
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc416, Alloc417, Alloc418, Alloc419, Alloc420, Alloc421, Alloc422, Alloc423, Alloc424, Alloc425, Alloc426, Alloc427, Alloc428, Alloc429, Alloc430, Alloc431]
theorem compiled_eq : RawChunk416_431.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (416, raw416), StackAlloc.progComp (417, raw417), StackAlloc.progComp (418, raw418), StackAlloc.progComp (419, raw419), StackAlloc.progComp (420, raw420), StackAlloc.progComp (421, raw421), StackAlloc.progComp (422, raw422), StackAlloc.progComp (423, raw423), StackAlloc.progComp (424, raw424), StackAlloc.progComp (425, raw425), StackAlloc.progComp (426, raw426), StackAlloc.progComp (427, raw427), StackAlloc.progComp (428, raw428), StackAlloc.progComp (429, raw429), StackAlloc.progComp (430, raw430), StackAlloc.progComp (431, raw431)] = bodies
  rw [Alloc416_eq, Alloc417_eq, Alloc418_eq, Alloc419_eq, Alloc420_eq, Alloc421_eq, Alloc422_eq, Alloc423_eq, Alloc424_eq, Alloc425_eq, Alloc426_eq, Alloc427_eq, Alloc428_eq, Alloc429_eq, Alloc430_eq, Alloc431_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk416_431
