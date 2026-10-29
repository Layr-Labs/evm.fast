import InitECandidate.Proofs.BackendStages.RawChunk112_127
import InitECandidate.Proofs.BackendStages.Alloc112
import InitECandidate.Proofs.BackendStages.Alloc113
import InitECandidate.Proofs.BackendStages.Alloc114
import InitECandidate.Proofs.BackendStages.Alloc115
import InitECandidate.Proofs.BackendStages.Alloc116
import InitECandidate.Proofs.BackendStages.Alloc117
import InitECandidate.Proofs.BackendStages.Alloc118
import InitECandidate.Proofs.BackendStages.Alloc119
import InitECandidate.Proofs.BackendStages.Alloc120
import InitECandidate.Proofs.BackendStages.Alloc121
import InitECandidate.Proofs.BackendStages.Alloc122
import InitECandidate.Proofs.BackendStages.Alloc123
import InitECandidate.Proofs.BackendStages.Alloc124
import InitECandidate.Proofs.BackendStages.Alloc125
import InitECandidate.Proofs.BackendStages.Alloc126
import InitECandidate.Proofs.BackendStages.Alloc127
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk112_127
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc112, Alloc113, Alloc114, Alloc115, Alloc116, Alloc117, Alloc118, Alloc119, Alloc120, Alloc121, Alloc122, Alloc123, Alloc124, Alloc125, Alloc126, Alloc127]
theorem compiled_eq : RawChunk112_127.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (112, raw112), StackAlloc.progComp (113, raw113), StackAlloc.progComp (114, raw114), StackAlloc.progComp (115, raw115), StackAlloc.progComp (116, raw116), StackAlloc.progComp (117, raw117), StackAlloc.progComp (118, raw118), StackAlloc.progComp (119, raw119), StackAlloc.progComp (120, raw120), StackAlloc.progComp (121, raw121), StackAlloc.progComp (122, raw122), StackAlloc.progComp (123, raw123), StackAlloc.progComp (124, raw124), StackAlloc.progComp (125, raw125), StackAlloc.progComp (126, raw126), StackAlloc.progComp (127, raw127)] = bodies
  rw [Alloc112_eq, Alloc113_eq, Alloc114_eq, Alloc115_eq, Alloc116_eq, Alloc117_eq, Alloc118_eq, Alloc119_eq, Alloc120_eq, Alloc121_eq, Alloc122_eq, Alloc123_eq, Alloc124_eq, Alloc125_eq, Alloc126_eq, Alloc127_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk112_127
