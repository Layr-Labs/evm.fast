import InitECandidate.Proofs.BackendStages.RawChunk240_255
import InitECandidate.Proofs.BackendStages.Alloc240
import InitECandidate.Proofs.BackendStages.Alloc241
import InitECandidate.Proofs.BackendStages.Alloc242
import InitECandidate.Proofs.BackendStages.Alloc243
import InitECandidate.Proofs.BackendStages.Alloc244
import InitECandidate.Proofs.BackendStages.Alloc245
import InitECandidate.Proofs.BackendStages.Alloc246
import InitECandidate.Proofs.BackendStages.Alloc247
import InitECandidate.Proofs.BackendStages.Alloc248
import InitECandidate.Proofs.BackendStages.Alloc249
import InitECandidate.Proofs.BackendStages.Alloc250
import InitECandidate.Proofs.BackendStages.Alloc251
import InitECandidate.Proofs.BackendStages.Alloc252
import InitECandidate.Proofs.BackendStages.Alloc253
import InitECandidate.Proofs.BackendStages.Alloc254
import InitECandidate.Proofs.BackendStages.Alloc255
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk240_255
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc240, Alloc241, Alloc242, Alloc243, Alloc244, Alloc245, Alloc246, Alloc247, Alloc248, Alloc249, Alloc250, Alloc251, Alloc252, Alloc253, Alloc254, Alloc255]
theorem compiled_eq : RawChunk240_255.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (240, raw240), StackAlloc.progComp (241, raw241), StackAlloc.progComp (242, raw242), StackAlloc.progComp (243, raw243), StackAlloc.progComp (244, raw244), StackAlloc.progComp (245, raw245), StackAlloc.progComp (246, raw246), StackAlloc.progComp (247, raw247), StackAlloc.progComp (248, raw248), StackAlloc.progComp (249, raw249), StackAlloc.progComp (250, raw250), StackAlloc.progComp (251, raw251), StackAlloc.progComp (252, raw252), StackAlloc.progComp (253, raw253), StackAlloc.progComp (254, raw254), StackAlloc.progComp (255, raw255)] = bodies
  rw [Alloc240_eq, Alloc241_eq, Alloc242_eq, Alloc243_eq, Alloc244_eq, Alloc245_eq, Alloc246_eq, Alloc247_eq, Alloc248_eq, Alloc249_eq, Alloc250_eq, Alloc251_eq, Alloc252_eq, Alloc253_eq, Alloc254_eq, Alloc255_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk240_255
