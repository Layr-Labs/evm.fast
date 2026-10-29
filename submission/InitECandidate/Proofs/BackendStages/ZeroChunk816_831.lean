import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData816_831
import InitECandidate.Proofs.BackendStages.FinalChunk816_831
import InitECandidate.Proofs.BackendStages.ZeroTargets816
import InitECandidate.Proofs.BackendStages.ZeroTargets817
import InitECandidate.Proofs.BackendStages.ZeroTargets818
import InitECandidate.Proofs.BackendStages.ZeroTargets819
import InitECandidate.Proofs.BackendStages.ZeroTargets820
import InitECandidate.Proofs.BackendStages.ZeroTargets821
import InitECandidate.Proofs.BackendStages.ZeroTargets822
import InitECandidate.Proofs.BackendStages.ZeroTargets823
import InitECandidate.Proofs.BackendStages.ZeroTargets824
import InitECandidate.Proofs.BackendStages.ZeroTargets825
import InitECandidate.Proofs.BackendStages.ZeroTargets826
import InitECandidate.Proofs.BackendStages.ZeroTargets827
import InitECandidate.Proofs.BackendStages.ZeroTargets828
import InitECandidate.Proofs.BackendStages.ZeroTargets829
import InitECandidate.Proofs.BackendStages.ZeroTargets830
import InitECandidate.Proofs.BackendStages.ZeroTargets831
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk816_831
theorem targets_eq : ZeroProgramCollection.targets FinalChunk816_831.padded = ZeroChunkData816_831.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded816.lines.filterMap ZeroCollection.lineTarget, Padded817.lines.filterMap ZeroCollection.lineTarget, Padded818.lines.filterMap ZeroCollection.lineTarget, Padded819.lines.filterMap ZeroCollection.lineTarget, Padded820.lines.filterMap ZeroCollection.lineTarget, Padded821.lines.filterMap ZeroCollection.lineTarget, Padded822.lines.filterMap ZeroCollection.lineTarget, Padded823.lines.filterMap ZeroCollection.lineTarget, Padded824.lines.filterMap ZeroCollection.lineTarget, Padded825.lines.filterMap ZeroCollection.lineTarget, Padded826.lines.filterMap ZeroCollection.lineTarget, Padded827.lines.filterMap ZeroCollection.lineTarget, Padded828.lines.filterMap ZeroCollection.lineTarget, Padded829.lines.filterMap ZeroCollection.lineTarget, Padded830.lines.filterMap ZeroCollection.lineTarget, Padded831.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData816_831.keys
  rw [targets816_eq, targets817_eq, targets818_eq, targets819_eq, targets820_eq, targets821_eq, targets822_eq, targets823_eq, targets824_eq, targets825_eq, targets826_eq, targets827_eq, targets828_eq, targets829_eq, targets830_eq, targets831_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk816_831
