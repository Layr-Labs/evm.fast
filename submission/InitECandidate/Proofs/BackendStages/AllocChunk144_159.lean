import InitECandidate.Proofs.BackendStages.RawChunk144_159
import InitECandidate.Proofs.BackendStages.Alloc144
import InitECandidate.Proofs.BackendStages.Alloc145
import InitECandidate.Proofs.BackendStages.Alloc146
import InitECandidate.Proofs.BackendStages.Alloc147
import InitECandidate.Proofs.BackendStages.Alloc148
import InitECandidate.Proofs.BackendStages.Alloc149
import InitECandidate.Proofs.BackendStages.Alloc150
import InitECandidate.Proofs.BackendStages.Alloc151
import InitECandidate.Proofs.BackendStages.Alloc152
import InitECandidate.Proofs.BackendStages.Alloc153
import InitECandidate.Proofs.BackendStages.Alloc154
import InitECandidate.Proofs.BackendStages.Alloc155
import InitECandidate.Proofs.BackendStages.Alloc156
import InitECandidate.Proofs.BackendStages.Alloc157
import InitECandidate.Proofs.BackendStages.Alloc158
import InitECandidate.Proofs.BackendStages.Alloc159
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk144_159
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc144, Alloc145, Alloc146, Alloc147, Alloc148, Alloc149, Alloc150, Alloc151, Alloc152, Alloc153, Alloc154, Alloc155, Alloc156, Alloc157, Alloc158, Alloc159]
theorem compiled_eq : RawChunk144_159.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (144, raw144), StackAlloc.progComp (145, raw145), StackAlloc.progComp (146, raw146), StackAlloc.progComp (147, raw147), StackAlloc.progComp (148, raw148), StackAlloc.progComp (149, raw149), StackAlloc.progComp (150, raw150), StackAlloc.progComp (151, raw151), StackAlloc.progComp (152, raw152), StackAlloc.progComp (153, raw153), StackAlloc.progComp (154, raw154), StackAlloc.progComp (155, raw155), StackAlloc.progComp (156, raw156), StackAlloc.progComp (157, raw157), StackAlloc.progComp (158, raw158), StackAlloc.progComp (159, raw159)] = bodies
  rw [Alloc144_eq, Alloc145_eq, Alloc146_eq, Alloc147_eq, Alloc148_eq, Alloc149_eq, Alloc150_eq, Alloc151_eq, Alloc152_eq, Alloc153_eq, Alloc154_eq, Alloc155_eq, Alloc156_eq, Alloc157_eq, Alloc158_eq, Alloc159_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk144_159
