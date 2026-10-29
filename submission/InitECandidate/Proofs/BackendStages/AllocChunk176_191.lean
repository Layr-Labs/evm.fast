import InitECandidate.Proofs.BackendStages.RawChunk176_191
import InitECandidate.Proofs.BackendStages.Alloc176
import InitECandidate.Proofs.BackendStages.Alloc177
import InitECandidate.Proofs.BackendStages.Alloc178
import InitECandidate.Proofs.BackendStages.Alloc179
import InitECandidate.Proofs.BackendStages.Alloc180
import InitECandidate.Proofs.BackendStages.Alloc181
import InitECandidate.Proofs.BackendStages.Alloc182
import InitECandidate.Proofs.BackendStages.Alloc183
import InitECandidate.Proofs.BackendStages.Alloc184
import InitECandidate.Proofs.BackendStages.Alloc185
import InitECandidate.Proofs.BackendStages.Alloc186
import InitECandidate.Proofs.BackendStages.Alloc187
import InitECandidate.Proofs.BackendStages.Alloc188
import InitECandidate.Proofs.BackendStages.Alloc189
import InitECandidate.Proofs.BackendStages.Alloc190
import InitECandidate.Proofs.BackendStages.Alloc191
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk176_191
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc176, Alloc177, Alloc178, Alloc179, Alloc180, Alloc181, Alloc182, Alloc183, Alloc184, Alloc185, Alloc186, Alloc187, Alloc188, Alloc189, Alloc190, Alloc191]
theorem compiled_eq : RawChunk176_191.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (176, raw176), StackAlloc.progComp (177, raw177), StackAlloc.progComp (178, raw178), StackAlloc.progComp (179, raw179), StackAlloc.progComp (180, raw180), StackAlloc.progComp (181, raw181), StackAlloc.progComp (182, raw182), StackAlloc.progComp (183, raw183), StackAlloc.progComp (184, raw184), StackAlloc.progComp (185, raw185), StackAlloc.progComp (186, raw186), StackAlloc.progComp (187, raw187), StackAlloc.progComp (188, raw188), StackAlloc.progComp (189, raw189), StackAlloc.progComp (190, raw190), StackAlloc.progComp (191, raw191)] = bodies
  rw [Alloc176_eq, Alloc177_eq, Alloc178_eq, Alloc179_eq, Alloc180_eq, Alloc181_eq, Alloc182_eq, Alloc183_eq, Alloc184_eq, Alloc185_eq, Alloc186_eq, Alloc187_eq, Alloc188_eq, Alloc189_eq, Alloc190_eq, Alloc191_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk176_191
