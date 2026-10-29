import InitECandidate.Proofs.BackendStages.RawChunk96_111
import InitECandidate.Proofs.BackendStages.Alloc96
import InitECandidate.Proofs.BackendStages.Alloc97
import InitECandidate.Proofs.BackendStages.Alloc98
import InitECandidate.Proofs.BackendStages.Alloc99
import InitECandidate.Proofs.BackendStages.Alloc100
import InitECandidate.Proofs.BackendStages.Alloc101
import InitECandidate.Proofs.BackendStages.Alloc102
import InitECandidate.Proofs.BackendStages.Alloc103
import InitECandidate.Proofs.BackendStages.Alloc104
import InitECandidate.Proofs.BackendStages.Alloc105
import InitECandidate.Proofs.BackendStages.Alloc106
import InitECandidate.Proofs.BackendStages.Alloc107
import InitECandidate.Proofs.BackendStages.Alloc108
import InitECandidate.Proofs.BackendStages.Alloc109
import InitECandidate.Proofs.BackendStages.Alloc110
import InitECandidate.Proofs.BackendStages.Alloc111
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk96_111
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc96, Alloc97, Alloc98, Alloc99, Alloc100, Alloc101, Alloc102, Alloc103, Alloc104, Alloc105, Alloc106, Alloc107, Alloc108, Alloc109, Alloc110, Alloc111]
theorem compiled_eq : RawChunk96_111.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (96, raw96), StackAlloc.progComp (97, raw97), StackAlloc.progComp (98, raw98), StackAlloc.progComp (99, raw99), StackAlloc.progComp (100, raw100), StackAlloc.progComp (101, raw101), StackAlloc.progComp (102, raw102), StackAlloc.progComp (103, raw103), StackAlloc.progComp (104, raw104), StackAlloc.progComp (105, raw105), StackAlloc.progComp (106, raw106), StackAlloc.progComp (107, raw107), StackAlloc.progComp (108, raw108), StackAlloc.progComp (109, raw109), StackAlloc.progComp (110, raw110), StackAlloc.progComp (111, raw111)] = bodies
  rw [Alloc96_eq, Alloc97_eq, Alloc98_eq, Alloc99_eq, Alloc100_eq, Alloc101_eq, Alloc102_eq, Alloc103_eq, Alloc104_eq, Alloc105_eq, Alloc106_eq, Alloc107_eq, Alloc108_eq, Alloc109_eq, Alloc110_eq, Alloc111_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk96_111
