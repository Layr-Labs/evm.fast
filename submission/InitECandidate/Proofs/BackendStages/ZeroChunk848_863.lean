import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData848_863
import InitECandidate.Proofs.BackendStages.FinalChunk848_863
import InitECandidate.Proofs.BackendStages.ZeroTargets848
import InitECandidate.Proofs.BackendStages.ZeroTargets849
import InitECandidate.Proofs.BackendStages.ZeroTargets850
import InitECandidate.Proofs.BackendStages.ZeroTargets851
import InitECandidate.Proofs.BackendStages.ZeroTargets852
import InitECandidate.Proofs.BackendStages.ZeroTargets853
import InitECandidate.Proofs.BackendStages.ZeroTargets854
import InitECandidate.Proofs.BackendStages.ZeroTargets855
import InitECandidate.Proofs.BackendStages.ZeroTargets856
import InitECandidate.Proofs.BackendStages.ZeroTargets857
import InitECandidate.Proofs.BackendStages.ZeroTargets858
import InitECandidate.Proofs.BackendStages.ZeroTargets859
import InitECandidate.Proofs.BackendStages.ZeroTargets860
import InitECandidate.Proofs.BackendStages.ZeroTargets861
import InitECandidate.Proofs.BackendStages.ZeroTargets862
import InitECandidate.Proofs.BackendStages.ZeroTargets863
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk848_863
theorem targets_eq : ZeroProgramCollection.targets FinalChunk848_863.padded = ZeroChunkData848_863.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded848.lines.filterMap ZeroCollection.lineTarget, Padded849.lines.filterMap ZeroCollection.lineTarget, Padded850.lines.filterMap ZeroCollection.lineTarget, Padded851.lines.filterMap ZeroCollection.lineTarget, Padded852.lines.filterMap ZeroCollection.lineTarget, Padded853.lines.filterMap ZeroCollection.lineTarget, Padded854.lines.filterMap ZeroCollection.lineTarget, Padded855.lines.filterMap ZeroCollection.lineTarget, Padded856.lines.filterMap ZeroCollection.lineTarget, Padded857.lines.filterMap ZeroCollection.lineTarget, Padded858.lines.filterMap ZeroCollection.lineTarget, Padded859.lines.filterMap ZeroCollection.lineTarget, Padded860.lines.filterMap ZeroCollection.lineTarget, Padded861.lines.filterMap ZeroCollection.lineTarget, Padded862.lines.filterMap ZeroCollection.lineTarget, Padded863.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData848_863.keys
  rw [targets848_eq, targets849_eq, targets850_eq, targets851_eq, targets852_eq, targets853_eq, targets854_eq, targets855_eq, targets856_eq, targets857_eq, targets858_eq, targets859_eq, targets860_eq, targets861_eq, targets862_eq, targets863_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk848_863
