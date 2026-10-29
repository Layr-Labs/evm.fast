import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData64_79
import InitECandidate.Proofs.BackendStages.FinalChunk64_79
import InitECandidate.Proofs.BackendStages.ZeroTargets64
import InitECandidate.Proofs.BackendStages.ZeroTargets65
import InitECandidate.Proofs.BackendStages.ZeroTargets66
import InitECandidate.Proofs.BackendStages.ZeroTargets67
import InitECandidate.Proofs.BackendStages.ZeroTargets68
import InitECandidate.Proofs.BackendStages.ZeroTargets69
import InitECandidate.Proofs.BackendStages.ZeroTargets70
import InitECandidate.Proofs.BackendStages.ZeroTargets71
import InitECandidate.Proofs.BackendStages.ZeroTargets72
import InitECandidate.Proofs.BackendStages.ZeroTargets73
import InitECandidate.Proofs.BackendStages.ZeroTargets74
import InitECandidate.Proofs.BackendStages.ZeroTargets75
import InitECandidate.Proofs.BackendStages.ZeroTargets76
import InitECandidate.Proofs.BackendStages.ZeroTargets77
import InitECandidate.Proofs.BackendStages.ZeroTargets78
import InitECandidate.Proofs.BackendStages.ZeroTargets79
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk64_79
theorem targets_eq : ZeroProgramCollection.targets FinalChunk64_79.padded = ZeroChunkData64_79.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded64.lines.filterMap ZeroCollection.lineTarget, Padded65.lines.filterMap ZeroCollection.lineTarget, Padded66.lines.filterMap ZeroCollection.lineTarget, Padded67.lines.filterMap ZeroCollection.lineTarget, Padded68.lines.filterMap ZeroCollection.lineTarget, Padded69.lines.filterMap ZeroCollection.lineTarget, Padded70.lines.filterMap ZeroCollection.lineTarget, Padded71.lines.filterMap ZeroCollection.lineTarget, Padded72.lines.filterMap ZeroCollection.lineTarget, Padded73.lines.filterMap ZeroCollection.lineTarget, Padded74.lines.filterMap ZeroCollection.lineTarget, Padded75.lines.filterMap ZeroCollection.lineTarget, Padded76.lines.filterMap ZeroCollection.lineTarget, Padded77.lines.filterMap ZeroCollection.lineTarget, Padded78.lines.filterMap ZeroCollection.lineTarget, Padded79.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData64_79.keys
  rw [targets64_eq, targets65_eq, targets66_eq, targets67_eq, targets68_eq, targets69_eq, targets70_eq, targets71_eq, targets72_eq, targets73_eq, targets74_eq, targets75_eq, targets76_eq, targets77_eq, targets78_eq, targets79_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk64_79
