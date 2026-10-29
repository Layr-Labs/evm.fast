import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData784_799
import InitECandidate.Proofs.BackendStages.FinalChunk784_799
import InitECandidate.Proofs.BackendStages.ZeroTargets784
import InitECandidate.Proofs.BackendStages.ZeroTargets785
import InitECandidate.Proofs.BackendStages.ZeroTargets786
import InitECandidate.Proofs.BackendStages.ZeroTargets787
import InitECandidate.Proofs.BackendStages.ZeroTargets788
import InitECandidate.Proofs.BackendStages.ZeroTargets789
import InitECandidate.Proofs.BackendStages.ZeroTargets790
import InitECandidate.Proofs.BackendStages.ZeroTargets791
import InitECandidate.Proofs.BackendStages.ZeroTargets792
import InitECandidate.Proofs.BackendStages.ZeroTargets793
import InitECandidate.Proofs.BackendStages.ZeroTargets794
import InitECandidate.Proofs.BackendStages.ZeroTargets795
import InitECandidate.Proofs.BackendStages.ZeroTargets796
import InitECandidate.Proofs.BackendStages.ZeroTargets797
import InitECandidate.Proofs.BackendStages.ZeroTargets798
import InitECandidate.Proofs.BackendStages.ZeroTargets799
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk784_799
theorem targets_eq : ZeroProgramCollection.targets FinalChunk784_799.padded = ZeroChunkData784_799.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded784.lines.filterMap ZeroCollection.lineTarget, Padded785.lines.filterMap ZeroCollection.lineTarget, Padded786.lines.filterMap ZeroCollection.lineTarget, Padded787.lines.filterMap ZeroCollection.lineTarget, Padded788.lines.filterMap ZeroCollection.lineTarget, Padded789.lines.filterMap ZeroCollection.lineTarget, Padded790.lines.filterMap ZeroCollection.lineTarget, Padded791.lines.filterMap ZeroCollection.lineTarget, Padded792.lines.filterMap ZeroCollection.lineTarget, Padded793.lines.filterMap ZeroCollection.lineTarget, Padded794.lines.filterMap ZeroCollection.lineTarget, Padded795.lines.filterMap ZeroCollection.lineTarget, Padded796.lines.filterMap ZeroCollection.lineTarget, Padded797.lines.filterMap ZeroCollection.lineTarget, Padded798.lines.filterMap ZeroCollection.lineTarget, Padded799.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData784_799.keys
  rw [targets784_eq, targets785_eq, targets786_eq, targets787_eq, targets788_eq, targets789_eq, targets790_eq, targets791_eq, targets792_eq, targets793_eq, targets794_eq, targets795_eq, targets796_eq, targets797_eq, targets798_eq, targets799_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk784_799
