import InitECandidate.Proofs.BackendStages.RawChunk304_319
import InitECandidate.Proofs.BackendStages.Alloc304
import InitECandidate.Proofs.BackendStages.Alloc305
import InitECandidate.Proofs.BackendStages.Alloc306
import InitECandidate.Proofs.BackendStages.Alloc307
import InitECandidate.Proofs.BackendStages.Alloc308
import InitECandidate.Proofs.BackendStages.Alloc309
import InitECandidate.Proofs.BackendStages.Alloc310
import InitECandidate.Proofs.BackendStages.Alloc311
import InitECandidate.Proofs.BackendStages.Alloc312
import InitECandidate.Proofs.BackendStages.Alloc313
import InitECandidate.Proofs.BackendStages.Alloc314
import InitECandidate.Proofs.BackendStages.Alloc315
import InitECandidate.Proofs.BackendStages.Alloc316
import InitECandidate.Proofs.BackendStages.Alloc317
import InitECandidate.Proofs.BackendStages.Alloc318
import InitECandidate.Proofs.BackendStages.Alloc319
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk304_319
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc304, Alloc305, Alloc306, Alloc307, Alloc308, Alloc309, Alloc310, Alloc311, Alloc312, Alloc313, Alloc314, Alloc315, Alloc316, Alloc317, Alloc318, Alloc319]
theorem compiled_eq : RawChunk304_319.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (304, raw304), StackAlloc.progComp (305, raw305), StackAlloc.progComp (306, raw306), StackAlloc.progComp (307, raw307), StackAlloc.progComp (308, raw308), StackAlloc.progComp (309, raw309), StackAlloc.progComp (310, raw310), StackAlloc.progComp (311, raw311), StackAlloc.progComp (312, raw312), StackAlloc.progComp (313, raw313), StackAlloc.progComp (314, raw314), StackAlloc.progComp (315, raw315), StackAlloc.progComp (316, raw316), StackAlloc.progComp (317, raw317), StackAlloc.progComp (318, raw318), StackAlloc.progComp (319, raw319)] = bodies
  rw [Alloc304_eq, Alloc305_eq, Alloc306_eq, Alloc307_eq, Alloc308_eq, Alloc309_eq, Alloc310_eq, Alloc311_eq, Alloc312_eq, Alloc313_eq, Alloc314_eq, Alloc315_eq, Alloc316_eq, Alloc317_eq, Alloc318_eq, Alloc319_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk304_319
