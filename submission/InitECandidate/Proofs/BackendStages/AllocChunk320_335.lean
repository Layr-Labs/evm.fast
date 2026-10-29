import InitECandidate.Proofs.BackendStages.RawChunk320_335
import InitECandidate.Proofs.BackendStages.Alloc320
import InitECandidate.Proofs.BackendStages.Alloc321
import InitECandidate.Proofs.BackendStages.Alloc322
import InitECandidate.Proofs.BackendStages.Alloc323
import InitECandidate.Proofs.BackendStages.Alloc324
import InitECandidate.Proofs.BackendStages.Alloc325
import InitECandidate.Proofs.BackendStages.Alloc326
import InitECandidate.Proofs.BackendStages.Alloc327
import InitECandidate.Proofs.BackendStages.Alloc328
import InitECandidate.Proofs.BackendStages.Alloc329
import InitECandidate.Proofs.BackendStages.Alloc330
import InitECandidate.Proofs.BackendStages.Alloc331
import InitECandidate.Proofs.BackendStages.Alloc332
import InitECandidate.Proofs.BackendStages.Alloc333
import InitECandidate.Proofs.BackendStages.Alloc334
import InitECandidate.Proofs.BackendStages.Alloc335
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk320_335
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc320, Alloc321, Alloc322, Alloc323, Alloc324, Alloc325, Alloc326, Alloc327, Alloc328, Alloc329, Alloc330, Alloc331, Alloc332, Alloc333, Alloc334, Alloc335]
theorem compiled_eq : RawChunk320_335.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (320, raw320), StackAlloc.progComp (321, raw321), StackAlloc.progComp (322, raw322), StackAlloc.progComp (323, raw323), StackAlloc.progComp (324, raw324), StackAlloc.progComp (325, raw325), StackAlloc.progComp (326, raw326), StackAlloc.progComp (327, raw327), StackAlloc.progComp (328, raw328), StackAlloc.progComp (329, raw329), StackAlloc.progComp (330, raw330), StackAlloc.progComp (331, raw331), StackAlloc.progComp (332, raw332), StackAlloc.progComp (333, raw333), StackAlloc.progComp (334, raw334), StackAlloc.progComp (335, raw335)] = bodies
  rw [Alloc320_eq, Alloc321_eq, Alloc322_eq, Alloc323_eq, Alloc324_eq, Alloc325_eq, Alloc326_eq, Alloc327_eq, Alloc328_eq, Alloc329_eq, Alloc330_eq, Alloc331_eq, Alloc332_eq, Alloc333_eq, Alloc334_eq, Alloc335_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk320_335
