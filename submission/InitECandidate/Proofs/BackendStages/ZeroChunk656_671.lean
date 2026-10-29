import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData656_671
import InitECandidate.Proofs.BackendStages.FinalChunk656_671
import InitECandidate.Proofs.BackendStages.ZeroTargets656
import InitECandidate.Proofs.BackendStages.ZeroTargets657
import InitECandidate.Proofs.BackendStages.ZeroTargets658
import InitECandidate.Proofs.BackendStages.ZeroTargets659
import InitECandidate.Proofs.BackendStages.ZeroTargets660
import InitECandidate.Proofs.BackendStages.ZeroTargets661
import InitECandidate.Proofs.BackendStages.ZeroTargets662
import InitECandidate.Proofs.BackendStages.ZeroTargets663
import InitECandidate.Proofs.BackendStages.ZeroTargets664
import InitECandidate.Proofs.BackendStages.ZeroTargets665
import InitECandidate.Proofs.BackendStages.ZeroTargets666
import InitECandidate.Proofs.BackendStages.ZeroTargets667
import InitECandidate.Proofs.BackendStages.ZeroTargets668
import InitECandidate.Proofs.BackendStages.ZeroTargets669
import InitECandidate.Proofs.BackendStages.ZeroTargets670
import InitECandidate.Proofs.BackendStages.ZeroTargets671
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk656_671
theorem targets_eq : ZeroProgramCollection.targets FinalChunk656_671.padded = ZeroChunkData656_671.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded656.lines.filterMap ZeroCollection.lineTarget, Padded657.lines.filterMap ZeroCollection.lineTarget, Padded658.lines.filterMap ZeroCollection.lineTarget, Padded659.lines.filterMap ZeroCollection.lineTarget, Padded660.lines.filterMap ZeroCollection.lineTarget, Padded661.lines.filterMap ZeroCollection.lineTarget, Padded662.lines.filterMap ZeroCollection.lineTarget, Padded663.lines.filterMap ZeroCollection.lineTarget, Padded664.lines.filterMap ZeroCollection.lineTarget, Padded665.lines.filterMap ZeroCollection.lineTarget, Padded666.lines.filterMap ZeroCollection.lineTarget, Padded667.lines.filterMap ZeroCollection.lineTarget, Padded668.lines.filterMap ZeroCollection.lineTarget, Padded669.lines.filterMap ZeroCollection.lineTarget, Padded670.lines.filterMap ZeroCollection.lineTarget, Padded671.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData656_671.keys
  rw [targets656_eq, targets657_eq, targets658_eq, targets659_eq, targets660_eq, targets661_eq, targets662_eq, targets663_eq, targets664_eq, targets665_eq, targets666_eq, targets667_eq, targets668_eq, targets669_eq, targets670_eq, targets671_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk656_671
