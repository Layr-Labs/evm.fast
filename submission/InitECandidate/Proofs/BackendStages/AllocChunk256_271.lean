import InitECandidate.Proofs.BackendStages.RawChunk256_271
import InitECandidate.Proofs.BackendStages.Alloc256
import InitECandidate.Proofs.BackendStages.Alloc257
import InitECandidate.Proofs.BackendStages.Alloc258
import InitECandidate.Proofs.BackendStages.Alloc259
import InitECandidate.Proofs.BackendStages.Alloc260
import InitECandidate.Proofs.BackendStages.Alloc261
import InitECandidate.Proofs.BackendStages.Alloc262
import InitECandidate.Proofs.BackendStages.Alloc263
import InitECandidate.Proofs.BackendStages.Alloc264
import InitECandidate.Proofs.BackendStages.Alloc265
import InitECandidate.Proofs.BackendStages.Alloc266
import InitECandidate.Proofs.BackendStages.Alloc267
import InitECandidate.Proofs.BackendStages.Alloc268
import InitECandidate.Proofs.BackendStages.Alloc269
import InitECandidate.Proofs.BackendStages.Alloc270
import InitECandidate.Proofs.BackendStages.Alloc271
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk256_271
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc256, Alloc257, Alloc258, Alloc259, Alloc260, Alloc261, Alloc262, Alloc263, Alloc264, Alloc265, Alloc266, Alloc267, Alloc268, Alloc269, Alloc270, Alloc271]
theorem compiled_eq : RawChunk256_271.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (256, raw256), StackAlloc.progComp (257, raw257), StackAlloc.progComp (258, raw258), StackAlloc.progComp (259, raw259), StackAlloc.progComp (260, raw260), StackAlloc.progComp (261, raw261), StackAlloc.progComp (262, raw262), StackAlloc.progComp (263, raw263), StackAlloc.progComp (264, raw264), StackAlloc.progComp (265, raw265), StackAlloc.progComp (266, raw266), StackAlloc.progComp (267, raw267), StackAlloc.progComp (268, raw268), StackAlloc.progComp (269, raw269), StackAlloc.progComp (270, raw270), StackAlloc.progComp (271, raw271)] = bodies
  rw [Alloc256_eq, Alloc257_eq, Alloc258_eq, Alloc259_eq, Alloc260_eq, Alloc261_eq, Alloc262_eq, Alloc263_eq, Alloc264_eq, Alloc265_eq, Alloc266_eq, Alloc267_eq, Alloc268_eq, Alloc269_eq, Alloc270_eq, Alloc271_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk256_271
