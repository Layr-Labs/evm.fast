import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData128_143
import InitECandidate.Proofs.BackendStages.FinalChunk128_143
import InitECandidate.Proofs.BackendStages.ZeroTargets128
import InitECandidate.Proofs.BackendStages.ZeroTargets129
import InitECandidate.Proofs.BackendStages.ZeroTargets130
import InitECandidate.Proofs.BackendStages.ZeroTargets131
import InitECandidate.Proofs.BackendStages.ZeroTargets132
import InitECandidate.Proofs.BackendStages.ZeroTargets133
import InitECandidate.Proofs.BackendStages.ZeroTargets134
import InitECandidate.Proofs.BackendStages.ZeroTargets135
import InitECandidate.Proofs.BackendStages.ZeroTargets136
import InitECandidate.Proofs.BackendStages.ZeroTargets137
import InitECandidate.Proofs.BackendStages.ZeroTargets138
import InitECandidate.Proofs.BackendStages.ZeroTargets139
import InitECandidate.Proofs.BackendStages.ZeroTargets140
import InitECandidate.Proofs.BackendStages.ZeroTargets141
import InitECandidate.Proofs.BackendStages.ZeroTargets142
import InitECandidate.Proofs.BackendStages.ZeroTargets143
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk128_143
theorem targets_eq : ZeroProgramCollection.targets FinalChunk128_143.padded = ZeroChunkData128_143.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded128.lines.filterMap ZeroCollection.lineTarget, Padded129.lines.filterMap ZeroCollection.lineTarget, Padded130.lines.filterMap ZeroCollection.lineTarget, Padded131.lines.filterMap ZeroCollection.lineTarget, Padded132.lines.filterMap ZeroCollection.lineTarget, Padded133.lines.filterMap ZeroCollection.lineTarget, Padded134.lines.filterMap ZeroCollection.lineTarget, Padded135.lines.filterMap ZeroCollection.lineTarget, Padded136.lines.filterMap ZeroCollection.lineTarget, Padded137.lines.filterMap ZeroCollection.lineTarget, Padded138.lines.filterMap ZeroCollection.lineTarget, Padded139.lines.filterMap ZeroCollection.lineTarget, Padded140.lines.filterMap ZeroCollection.lineTarget, Padded141.lines.filterMap ZeroCollection.lineTarget, Padded142.lines.filterMap ZeroCollection.lineTarget, Padded143.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData128_143.keys
  rw [targets128_eq, targets129_eq, targets130_eq, targets131_eq, targets132_eq, targets133_eq, targets134_eq, targets135_eq, targets136_eq, targets137_eq, targets138_eq, targets139_eq, targets140_eq, targets141_eq, targets142_eq, targets143_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk128_143
