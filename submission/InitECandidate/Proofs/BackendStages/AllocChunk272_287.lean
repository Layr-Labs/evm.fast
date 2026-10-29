import InitECandidate.Proofs.BackendStages.RawChunk272_287
import InitECandidate.Proofs.BackendStages.Alloc272
import InitECandidate.Proofs.BackendStages.Alloc273
import InitECandidate.Proofs.BackendStages.Alloc274
import InitECandidate.Proofs.BackendStages.Alloc275
import InitECandidate.Proofs.BackendStages.Alloc276
import InitECandidate.Proofs.BackendStages.Alloc277
import InitECandidate.Proofs.BackendStages.Alloc278
import InitECandidate.Proofs.BackendStages.Alloc279
import InitECandidate.Proofs.BackendStages.Alloc280
import InitECandidate.Proofs.BackendStages.Alloc281
import InitECandidate.Proofs.BackendStages.Alloc282
import InitECandidate.Proofs.BackendStages.Alloc283
import InitECandidate.Proofs.BackendStages.Alloc284
import InitECandidate.Proofs.BackendStages.Alloc285
import InitECandidate.Proofs.BackendStages.Alloc286
import InitECandidate.Proofs.BackendStages.Alloc287
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk272_287
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc272, Alloc273, Alloc274, Alloc275, Alloc276, Alloc277, Alloc278, Alloc279, Alloc280, Alloc281, Alloc282, Alloc283, Alloc284, Alloc285, Alloc286, Alloc287]
theorem compiled_eq : RawChunk272_287.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (272, raw272), StackAlloc.progComp (273, raw273), StackAlloc.progComp (274, raw274), StackAlloc.progComp (275, raw275), StackAlloc.progComp (276, raw276), StackAlloc.progComp (277, raw277), StackAlloc.progComp (278, raw278), StackAlloc.progComp (279, raw279), StackAlloc.progComp (280, raw280), StackAlloc.progComp (281, raw281), StackAlloc.progComp (282, raw282), StackAlloc.progComp (283, raw283), StackAlloc.progComp (284, raw284), StackAlloc.progComp (285, raw285), StackAlloc.progComp (286, raw286), StackAlloc.progComp (287, raw287)] = bodies
  rw [Alloc272_eq, Alloc273_eq, Alloc274_eq, Alloc275_eq, Alloc276_eq, Alloc277_eq, Alloc278_eq, Alloc279_eq, Alloc280_eq, Alloc281_eq, Alloc282_eq, Alloc283_eq, Alloc284_eq, Alloc285_eq, Alloc286_eq, Alloc287_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk272_287
