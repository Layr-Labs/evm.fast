import InitECandidate.Proofs.BackendStages.RawChunk160_175
import InitECandidate.Proofs.BackendStages.Alloc160
import InitECandidate.Proofs.BackendStages.Alloc161
import InitECandidate.Proofs.BackendStages.Alloc162
import InitECandidate.Proofs.BackendStages.Alloc163
import InitECandidate.Proofs.BackendStages.Alloc164
import InitECandidate.Proofs.BackendStages.Alloc165
import InitECandidate.Proofs.BackendStages.Alloc166
import InitECandidate.Proofs.BackendStages.Alloc167
import InitECandidate.Proofs.BackendStages.Alloc168
import InitECandidate.Proofs.BackendStages.Alloc169
import InitECandidate.Proofs.BackendStages.Alloc170
import InitECandidate.Proofs.BackendStages.Alloc171
import InitECandidate.Proofs.BackendStages.Alloc172
import InitECandidate.Proofs.BackendStages.Alloc173
import InitECandidate.Proofs.BackendStages.Alloc174
import InitECandidate.Proofs.BackendStages.Alloc175
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk160_175
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc160, Alloc161, Alloc162, Alloc163, Alloc164, Alloc165, Alloc166, Alloc167, Alloc168, Alloc169, Alloc170, Alloc171, Alloc172, Alloc173, Alloc174, Alloc175]
theorem compiled_eq : RawChunk160_175.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (160, raw160), StackAlloc.progComp (161, raw161), StackAlloc.progComp (162, raw162), StackAlloc.progComp (163, raw163), StackAlloc.progComp (164, raw164), StackAlloc.progComp (165, raw165), StackAlloc.progComp (166, raw166), StackAlloc.progComp (167, raw167), StackAlloc.progComp (168, raw168), StackAlloc.progComp (169, raw169), StackAlloc.progComp (170, raw170), StackAlloc.progComp (171, raw171), StackAlloc.progComp (172, raw172), StackAlloc.progComp (173, raw173), StackAlloc.progComp (174, raw174), StackAlloc.progComp (175, raw175)] = bodies
  rw [Alloc160_eq, Alloc161_eq, Alloc162_eq, Alloc163_eq, Alloc164_eq, Alloc165_eq, Alloc166_eq, Alloc167_eq, Alloc168_eq, Alloc169_eq, Alloc170_eq, Alloc171_eq, Alloc172_eq, Alloc173_eq, Alloc174_eq, Alloc175_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk160_175
