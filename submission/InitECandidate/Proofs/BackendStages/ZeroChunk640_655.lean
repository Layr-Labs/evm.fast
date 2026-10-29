import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData640_655
import InitECandidate.Proofs.BackendStages.FinalChunk640_655
import InitECandidate.Proofs.BackendStages.ZeroTargets640
import InitECandidate.Proofs.BackendStages.ZeroTargets641
import InitECandidate.Proofs.BackendStages.ZeroTargets642
import InitECandidate.Proofs.BackendStages.ZeroTargets643
import InitECandidate.Proofs.BackendStages.ZeroTargets644
import InitECandidate.Proofs.BackendStages.ZeroTargets645
import InitECandidate.Proofs.BackendStages.ZeroTargets646
import InitECandidate.Proofs.BackendStages.ZeroTargets647
import InitECandidate.Proofs.BackendStages.ZeroTargets648
import InitECandidate.Proofs.BackendStages.ZeroTargets649
import InitECandidate.Proofs.BackendStages.ZeroTargets650
import InitECandidate.Proofs.BackendStages.ZeroTargets651
import InitECandidate.Proofs.BackendStages.ZeroTargets652
import InitECandidate.Proofs.BackendStages.ZeroTargets653
import InitECandidate.Proofs.BackendStages.ZeroTargets654
import InitECandidate.Proofs.BackendStages.ZeroTargets655
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk640_655
theorem targets_eq : ZeroProgramCollection.targets FinalChunk640_655.padded = ZeroChunkData640_655.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded640.lines.filterMap ZeroCollection.lineTarget, Padded641.lines.filterMap ZeroCollection.lineTarget, Padded642.lines.filterMap ZeroCollection.lineTarget, Padded643.lines.filterMap ZeroCollection.lineTarget, Padded644.lines.filterMap ZeroCollection.lineTarget, Padded645.lines.filterMap ZeroCollection.lineTarget, Padded646.lines.filterMap ZeroCollection.lineTarget, Padded647.lines.filterMap ZeroCollection.lineTarget, Padded648.lines.filterMap ZeroCollection.lineTarget, Padded649.lines.filterMap ZeroCollection.lineTarget, Padded650.lines.filterMap ZeroCollection.lineTarget, Padded651.lines.filterMap ZeroCollection.lineTarget, Padded652.lines.filterMap ZeroCollection.lineTarget, Padded653.lines.filterMap ZeroCollection.lineTarget, Padded654.lines.filterMap ZeroCollection.lineTarget, Padded655.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData640_655.keys
  rw [targets640_eq, targets641_eq, targets642_eq, targets643_eq, targets644_eq, targets645_eq, targets646_eq, targets647_eq, targets648_eq, targets649_eq, targets650_eq, targets651_eq, targets652_eq, targets653_eq, targets654_eq, targets655_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk640_655
