import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData96_111
import InitECandidate.Proofs.BackendStages.FinalChunk96_111
import InitECandidate.Proofs.BackendStages.ZeroTargets96
import InitECandidate.Proofs.BackendStages.ZeroTargets97
import InitECandidate.Proofs.BackendStages.ZeroTargets98
import InitECandidate.Proofs.BackendStages.ZeroTargets99
import InitECandidate.Proofs.BackendStages.ZeroTargets100
import InitECandidate.Proofs.BackendStages.ZeroTargets101
import InitECandidate.Proofs.BackendStages.ZeroTargets102
import InitECandidate.Proofs.BackendStages.ZeroTargets103
import InitECandidate.Proofs.BackendStages.ZeroTargets104
import InitECandidate.Proofs.BackendStages.ZeroTargets105
import InitECandidate.Proofs.BackendStages.ZeroTargets106
import InitECandidate.Proofs.BackendStages.ZeroTargets107
import InitECandidate.Proofs.BackendStages.ZeroTargets108
import InitECandidate.Proofs.BackendStages.ZeroTargets109
import InitECandidate.Proofs.BackendStages.ZeroTargets110
import InitECandidate.Proofs.BackendStages.ZeroTargets111
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk96_111
theorem targets_eq : ZeroProgramCollection.targets FinalChunk96_111.padded = ZeroChunkData96_111.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded96.lines.filterMap ZeroCollection.lineTarget, Padded97.lines.filterMap ZeroCollection.lineTarget, Padded98.lines.filterMap ZeroCollection.lineTarget, Padded99.lines.filterMap ZeroCollection.lineTarget, Padded100.lines.filterMap ZeroCollection.lineTarget, Padded101.lines.filterMap ZeroCollection.lineTarget, Padded102.lines.filterMap ZeroCollection.lineTarget, Padded103.lines.filterMap ZeroCollection.lineTarget, Padded104.lines.filterMap ZeroCollection.lineTarget, Padded105.lines.filterMap ZeroCollection.lineTarget, Padded106.lines.filterMap ZeroCollection.lineTarget, Padded107.lines.filterMap ZeroCollection.lineTarget, Padded108.lines.filterMap ZeroCollection.lineTarget, Padded109.lines.filterMap ZeroCollection.lineTarget, Padded110.lines.filterMap ZeroCollection.lineTarget, Padded111.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData96_111.keys
  rw [targets96_eq, targets97_eq, targets98_eq, targets99_eq, targets100_eq, targets101_eq, targets102_eq, targets103_eq, targets104_eq, targets105_eq, targets106_eq, targets107_eq, targets108_eq, targets109_eq, targets110_eq, targets111_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk96_111
