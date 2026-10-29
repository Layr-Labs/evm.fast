import InitECandidate.Proofs.BackendStages.RawChunk128_143
import InitECandidate.Proofs.BackendStages.Alloc128
import InitECandidate.Proofs.BackendStages.Alloc129
import InitECandidate.Proofs.BackendStages.Alloc130
import InitECandidate.Proofs.BackendStages.Alloc131
import InitECandidate.Proofs.BackendStages.Alloc132
import InitECandidate.Proofs.BackendStages.Alloc133
import InitECandidate.Proofs.BackendStages.Alloc134
import InitECandidate.Proofs.BackendStages.Alloc135
import InitECandidate.Proofs.BackendStages.Alloc136
import InitECandidate.Proofs.BackendStages.Alloc137
import InitECandidate.Proofs.BackendStages.Alloc138
import InitECandidate.Proofs.BackendStages.Alloc139
import InitECandidate.Proofs.BackendStages.Alloc140
import InitECandidate.Proofs.BackendStages.Alloc141
import InitECandidate.Proofs.BackendStages.Alloc142
import InitECandidate.Proofs.BackendStages.Alloc143
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.AllocChunk128_143
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc128, Alloc129, Alloc130, Alloc131, Alloc132, Alloc133, Alloc134, Alloc135, Alloc136, Alloc137, Alloc138, Alloc139, Alloc140, Alloc141, Alloc142, Alloc143]
theorem compiled_eq : RawChunk128_143.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (128, raw128), StackAlloc.progComp (129, raw129), StackAlloc.progComp (130, raw130), StackAlloc.progComp (131, raw131), StackAlloc.progComp (132, raw132), StackAlloc.progComp (133, raw133), StackAlloc.progComp (134, raw134), StackAlloc.progComp (135, raw135), StackAlloc.progComp (136, raw136), StackAlloc.progComp (137, raw137), StackAlloc.progComp (138, raw138), StackAlloc.progComp (139, raw139), StackAlloc.progComp (140, raw140), StackAlloc.progComp (141, raw141), StackAlloc.progComp (142, raw142), StackAlloc.progComp (143, raw143)] = bodies
  rw [Alloc128_eq, Alloc129_eq, Alloc130_eq, Alloc131_eq, Alloc132_eq, Alloc133_eq, Alloc134_eq, Alloc135_eq, Alloc136_eq, Alloc137_eq, Alloc138_eq, Alloc139_eq, Alloc140_eq, Alloc141_eq, Alloc142_eq, Alloc143_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.AllocChunk128_143
