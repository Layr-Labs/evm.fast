import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData288_303
import InitECandidate.Proofs.BackendStages.FinalChunk288_303
import InitECandidate.Proofs.BackendStages.ZeroTargets288
import InitECandidate.Proofs.BackendStages.ZeroTargets289
import InitECandidate.Proofs.BackendStages.ZeroTargets290
import InitECandidate.Proofs.BackendStages.ZeroTargets291
import InitECandidate.Proofs.BackendStages.ZeroTargets292
import InitECandidate.Proofs.BackendStages.ZeroTargets293
import InitECandidate.Proofs.BackendStages.ZeroTargets294
import InitECandidate.Proofs.BackendStages.ZeroTargets295
import InitECandidate.Proofs.BackendStages.ZeroTargets296
import InitECandidate.Proofs.BackendStages.ZeroTargets297
import InitECandidate.Proofs.BackendStages.ZeroTargets298
import InitECandidate.Proofs.BackendStages.ZeroTargets299
import InitECandidate.Proofs.BackendStages.ZeroTargets300
import InitECandidate.Proofs.BackendStages.ZeroTargets301
import InitECandidate.Proofs.BackendStages.ZeroTargets302
import InitECandidate.Proofs.BackendStages.ZeroTargets303
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk288_303
theorem targets_eq : ZeroProgramCollection.targets FinalChunk288_303.padded = ZeroChunkData288_303.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded288.lines.filterMap ZeroCollection.lineTarget, Padded289.lines.filterMap ZeroCollection.lineTarget, Padded290.lines.filterMap ZeroCollection.lineTarget, Padded291.lines.filterMap ZeroCollection.lineTarget, Padded292.lines.filterMap ZeroCollection.lineTarget, Padded293.lines.filterMap ZeroCollection.lineTarget, Padded294.lines.filterMap ZeroCollection.lineTarget, Padded295.lines.filterMap ZeroCollection.lineTarget, Padded296.lines.filterMap ZeroCollection.lineTarget, Padded297.lines.filterMap ZeroCollection.lineTarget, Padded298.lines.filterMap ZeroCollection.lineTarget, Padded299.lines.filterMap ZeroCollection.lineTarget, Padded300.lines.filterMap ZeroCollection.lineTarget, Padded301.lines.filterMap ZeroCollection.lineTarget, Padded302.lines.filterMap ZeroCollection.lineTarget, Padded303.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData288_303.keys
  rw [targets288_eq, targets289_eq, targets290_eq, targets291_eq, targets292_eq, targets293_eq, targets294_eq, targets295_eq, targets296_eq, targets297_eq, targets298_eq, targets299_eq, targets300_eq, targets301_eq, targets302_eq, targets303_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk288_303
