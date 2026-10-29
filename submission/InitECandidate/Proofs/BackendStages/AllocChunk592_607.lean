import InitECandidate.Proofs.BackendStages.RawChunk592_607
import InitECandidate.Proofs.BackendStages.Alloc592
import InitECandidate.Proofs.BackendStages.Alloc593
import InitECandidate.Proofs.BackendStages.Alloc594
import InitECandidate.Proofs.BackendStages.Alloc595
import InitECandidate.Proofs.BackendStages.Alloc596
import InitECandidate.Proofs.BackendStages.Alloc597
import InitECandidate.Proofs.BackendStages.Alloc598
import InitECandidate.Proofs.BackendStages.Alloc599
import InitECandidate.Proofs.BackendStages.Alloc600
import InitECandidate.Proofs.BackendStages.Alloc601
import InitECandidate.Proofs.BackendStages.Alloc602
import InitECandidate.Proofs.BackendStages.Alloc603
import InitECandidate.Proofs.BackendStages.Alloc604
import InitECandidate.Proofs.BackendStages.Alloc605
import InitECandidate.Proofs.BackendStages.Alloc606
import InitECandidate.Proofs.BackendStages.Alloc607
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk592_607
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc592, Alloc593, Alloc594, Alloc595, Alloc596, Alloc597, Alloc598, Alloc599, Alloc600, Alloc601, Alloc602, Alloc603, Alloc604, Alloc605, Alloc606, Alloc607]
theorem compiled_eq : RawChunk592_607.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (592, raw592), StackAlloc.progComp (593, raw593), StackAlloc.progComp (594, raw594), StackAlloc.progComp (595, raw595), StackAlloc.progComp (596, raw596), StackAlloc.progComp (597, raw597), StackAlloc.progComp (598, raw598), StackAlloc.progComp (599, raw599), StackAlloc.progComp (600, raw600), StackAlloc.progComp (601, raw601), StackAlloc.progComp (602, raw602), StackAlloc.progComp (603, raw603), StackAlloc.progComp (604, raw604), StackAlloc.progComp (605, raw605), StackAlloc.progComp (606, raw606), StackAlloc.progComp (607, raw607)] = bodies
  rw [Alloc592_eq, Alloc593_eq, Alloc594_eq, Alloc595_eq, Alloc596_eq, Alloc597_eq, Alloc598_eq, Alloc599_eq, Alloc600_eq, Alloc601_eq, Alloc602_eq, Alloc603_eq, Alloc604_eq, Alloc605_eq, Alloc606_eq, Alloc607_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk592_607
