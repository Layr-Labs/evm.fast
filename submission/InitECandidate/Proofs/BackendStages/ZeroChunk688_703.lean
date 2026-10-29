import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData688_703
import InitECandidate.Proofs.BackendStages.FinalChunk688_703
import InitECandidate.Proofs.BackendStages.ZeroTargets688
import InitECandidate.Proofs.BackendStages.ZeroTargets689
import InitECandidate.Proofs.BackendStages.ZeroTargets690
import InitECandidate.Proofs.BackendStages.ZeroTargets691
import InitECandidate.Proofs.BackendStages.ZeroTargets692
import InitECandidate.Proofs.BackendStages.ZeroTargets693
import InitECandidate.Proofs.BackendStages.ZeroTargets694
import InitECandidate.Proofs.BackendStages.ZeroTargets695
import InitECandidate.Proofs.BackendStages.ZeroTargets696
import InitECandidate.Proofs.BackendStages.ZeroTargets697
import InitECandidate.Proofs.BackendStages.ZeroTargets698
import InitECandidate.Proofs.BackendStages.ZeroTargets699
import InitECandidate.Proofs.BackendStages.ZeroTargets700
import InitECandidate.Proofs.BackendStages.ZeroTargets701
import InitECandidate.Proofs.BackendStages.ZeroTargets702
import InitECandidate.Proofs.BackendStages.ZeroTargets703
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk688_703
theorem targets_eq : ZeroProgramCollection.targets FinalChunk688_703.padded = ZeroChunkData688_703.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded688.lines.filterMap ZeroCollection.lineTarget, Padded689.lines.filterMap ZeroCollection.lineTarget, Padded690.lines.filterMap ZeroCollection.lineTarget, Padded691.lines.filterMap ZeroCollection.lineTarget, Padded692.lines.filterMap ZeroCollection.lineTarget, Padded693.lines.filterMap ZeroCollection.lineTarget, Padded694.lines.filterMap ZeroCollection.lineTarget, Padded695.lines.filterMap ZeroCollection.lineTarget, Padded696.lines.filterMap ZeroCollection.lineTarget, Padded697.lines.filterMap ZeroCollection.lineTarget, Padded698.lines.filterMap ZeroCollection.lineTarget, Padded699.lines.filterMap ZeroCollection.lineTarget, Padded700.lines.filterMap ZeroCollection.lineTarget, Padded701.lines.filterMap ZeroCollection.lineTarget, Padded702.lines.filterMap ZeroCollection.lineTarget, Padded703.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData688_703.keys
  rw [targets688_eq, targets689_eq, targets690_eq, targets691_eq, targets692_eq, targets693_eq, targets694_eq, targets695_eq, targets696_eq, targets697_eq, targets698_eq, targets699_eq, targets700_eq, targets701_eq, targets702_eq, targets703_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk688_703
