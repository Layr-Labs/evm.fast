import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData208_223
import InitECandidate.Proofs.BackendStages.FinalChunk208_223
import InitECandidate.Proofs.BackendStages.ZeroTargets208
import InitECandidate.Proofs.BackendStages.ZeroTargets209
import InitECandidate.Proofs.BackendStages.ZeroTargets210
import InitECandidate.Proofs.BackendStages.ZeroTargets211
import InitECandidate.Proofs.BackendStages.ZeroTargets212
import InitECandidate.Proofs.BackendStages.ZeroTargets213
import InitECandidate.Proofs.BackendStages.ZeroTargets214
import InitECandidate.Proofs.BackendStages.ZeroTargets215
import InitECandidate.Proofs.BackendStages.ZeroTargets216
import InitECandidate.Proofs.BackendStages.ZeroTargets217
import InitECandidate.Proofs.BackendStages.ZeroTargets218
import InitECandidate.Proofs.BackendStages.ZeroTargets219
import InitECandidate.Proofs.BackendStages.ZeroTargets220
import InitECandidate.Proofs.BackendStages.ZeroTargets221
import InitECandidate.Proofs.BackendStages.ZeroTargets222
import InitECandidate.Proofs.BackendStages.ZeroTargets223
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk208_223
theorem targets_eq : ZeroProgramCollection.targets FinalChunk208_223.padded = ZeroChunkData208_223.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded208.lines.filterMap ZeroCollection.lineTarget, Padded209.lines.filterMap ZeroCollection.lineTarget, Padded210.lines.filterMap ZeroCollection.lineTarget, Padded211.lines.filterMap ZeroCollection.lineTarget, Padded212.lines.filterMap ZeroCollection.lineTarget, Padded213.lines.filterMap ZeroCollection.lineTarget, Padded214.lines.filterMap ZeroCollection.lineTarget, Padded215.lines.filterMap ZeroCollection.lineTarget, Padded216.lines.filterMap ZeroCollection.lineTarget, Padded217.lines.filterMap ZeroCollection.lineTarget, Padded218.lines.filterMap ZeroCollection.lineTarget, Padded219.lines.filterMap ZeroCollection.lineTarget, Padded220.lines.filterMap ZeroCollection.lineTarget, Padded221.lines.filterMap ZeroCollection.lineTarget, Padded222.lines.filterMap ZeroCollection.lineTarget, Padded223.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData208_223.keys
  rw [targets208_eq, targets209_eq, targets210_eq, targets211_eq, targets212_eq, targets213_eq, targets214_eq, targets215_eq, targets216_eq, targets217_eq, targets218_eq, targets219_eq, targets220_eq, targets221_eq, targets222_eq, targets223_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk208_223
