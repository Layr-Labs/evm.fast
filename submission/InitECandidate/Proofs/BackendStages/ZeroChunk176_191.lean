import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData176_191
import InitECandidate.Proofs.BackendStages.FinalChunk176_191
import InitECandidate.Proofs.BackendStages.ZeroTargets176
import InitECandidate.Proofs.BackendStages.ZeroTargets177
import InitECandidate.Proofs.BackendStages.ZeroTargets178
import InitECandidate.Proofs.BackendStages.ZeroTargets179
import InitECandidate.Proofs.BackendStages.ZeroTargets180
import InitECandidate.Proofs.BackendStages.ZeroTargets181
import InitECandidate.Proofs.BackendStages.ZeroTargets182
import InitECandidate.Proofs.BackendStages.ZeroTargets183
import InitECandidate.Proofs.BackendStages.ZeroTargets184
import InitECandidate.Proofs.BackendStages.ZeroTargets185
import InitECandidate.Proofs.BackendStages.ZeroTargets186
import InitECandidate.Proofs.BackendStages.ZeroTargets187
import InitECandidate.Proofs.BackendStages.ZeroTargets188
import InitECandidate.Proofs.BackendStages.ZeroTargets189
import InitECandidate.Proofs.BackendStages.ZeroTargets190
import InitECandidate.Proofs.BackendStages.ZeroTargets191
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk176_191
theorem targets_eq : ZeroProgramCollection.targets FinalChunk176_191.padded = ZeroChunkData176_191.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded176.lines.filterMap ZeroCollection.lineTarget, Padded177.lines.filterMap ZeroCollection.lineTarget, Padded178.lines.filterMap ZeroCollection.lineTarget, Padded179.lines.filterMap ZeroCollection.lineTarget, Padded180.lines.filterMap ZeroCollection.lineTarget, Padded181.lines.filterMap ZeroCollection.lineTarget, Padded182.lines.filterMap ZeroCollection.lineTarget, Padded183.lines.filterMap ZeroCollection.lineTarget, Padded184.lines.filterMap ZeroCollection.lineTarget, Padded185.lines.filterMap ZeroCollection.lineTarget, Padded186.lines.filterMap ZeroCollection.lineTarget, Padded187.lines.filterMap ZeroCollection.lineTarget, Padded188.lines.filterMap ZeroCollection.lineTarget, Padded189.lines.filterMap ZeroCollection.lineTarget, Padded190.lines.filterMap ZeroCollection.lineTarget, Padded191.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData176_191.keys
  rw [targets176_eq, targets177_eq, targets178_eq, targets179_eq, targets180_eq, targets181_eq, targets182_eq, targets183_eq, targets184_eq, targets185_eq, targets186_eq, targets187_eq, targets188_eq, targets189_eq, targets190_eq, targets191_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk176_191
