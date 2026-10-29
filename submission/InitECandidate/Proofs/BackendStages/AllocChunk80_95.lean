import InitECandidate.Proofs.BackendStages.RawChunk80_95
import InitECandidate.Proofs.BackendStages.Alloc80
import InitECandidate.Proofs.BackendStages.Alloc81
import InitECandidate.Proofs.BackendStages.Alloc82
import InitECandidate.Proofs.BackendStages.Alloc83
import InitECandidate.Proofs.BackendStages.Alloc84
import InitECandidate.Proofs.BackendStages.Alloc85
import InitECandidate.Proofs.BackendStages.Alloc86
import InitECandidate.Proofs.BackendStages.Alloc87
import InitECandidate.Proofs.BackendStages.Alloc88
import InitECandidate.Proofs.BackendStages.Alloc89
import InitECandidate.Proofs.BackendStages.Alloc90
import InitECandidate.Proofs.BackendStages.Alloc91
import InitECandidate.Proofs.BackendStages.Alloc92
import InitECandidate.Proofs.BackendStages.Alloc93
import InitECandidate.Proofs.BackendStages.Alloc94
import InitECandidate.Proofs.BackendStages.Alloc95
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk80_95
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc80, Alloc81, Alloc82, Alloc83, Alloc84, Alloc85, Alloc86, Alloc87, Alloc88, Alloc89, Alloc90, Alloc91, Alloc92, Alloc93, Alloc94, Alloc95]
theorem compiled_eq : RawChunk80_95.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (80, raw80), StackAlloc.progComp (81, raw81), StackAlloc.progComp (82, raw82), StackAlloc.progComp (83, raw83), StackAlloc.progComp (84, raw84), StackAlloc.progComp (85, raw85), StackAlloc.progComp (86, raw86), StackAlloc.progComp (87, raw87), StackAlloc.progComp (88, raw88), StackAlloc.progComp (89, raw89), StackAlloc.progComp (90, raw90), StackAlloc.progComp (91, raw91), StackAlloc.progComp (92, raw92), StackAlloc.progComp (93, raw93), StackAlloc.progComp (94, raw94), StackAlloc.progComp (95, raw95)] = bodies
  rw [Alloc80_eq, Alloc81_eq, Alloc82_eq, Alloc83_eq, Alloc84_eq, Alloc85_eq, Alloc86_eq, Alloc87_eq, Alloc88_eq, Alloc89_eq, Alloc90_eq, Alloc91_eq, Alloc92_eq, Alloc93_eq, Alloc94_eq, Alloc95_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk80_95
