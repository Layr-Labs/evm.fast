import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData224_239
import InitECandidate.Proofs.BackendStages.FinalChunk224_239
import InitECandidate.Proofs.BackendStages.ZeroTargets224
import InitECandidate.Proofs.BackendStages.ZeroTargets225
import InitECandidate.Proofs.BackendStages.ZeroTargets226
import InitECandidate.Proofs.BackendStages.ZeroTargets227
import InitECandidate.Proofs.BackendStages.ZeroTargets228
import InitECandidate.Proofs.BackendStages.ZeroTargets229
import InitECandidate.Proofs.BackendStages.ZeroTargets230
import InitECandidate.Proofs.BackendStages.ZeroTargets231
import InitECandidate.Proofs.BackendStages.ZeroTargets232
import InitECandidate.Proofs.BackendStages.ZeroTargets233
import InitECandidate.Proofs.BackendStages.ZeroTargets234
import InitECandidate.Proofs.BackendStages.ZeroTargets235
import InitECandidate.Proofs.BackendStages.ZeroTargets236
import InitECandidate.Proofs.BackendStages.ZeroTargets237
import InitECandidate.Proofs.BackendStages.ZeroTargets238
import InitECandidate.Proofs.BackendStages.ZeroTargets239
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk224_239
theorem targets_eq : ZeroProgramCollection.targets FinalChunk224_239.padded = ZeroChunkData224_239.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded224.lines.filterMap ZeroCollection.lineTarget, Padded225.lines.filterMap ZeroCollection.lineTarget, Padded226.lines.filterMap ZeroCollection.lineTarget, Padded227.lines.filterMap ZeroCollection.lineTarget, Padded228.lines.filterMap ZeroCollection.lineTarget, Padded229.lines.filterMap ZeroCollection.lineTarget, Padded230.lines.filterMap ZeroCollection.lineTarget, Padded231.lines.filterMap ZeroCollection.lineTarget, Padded232.lines.filterMap ZeroCollection.lineTarget, Padded233.lines.filterMap ZeroCollection.lineTarget, Padded234.lines.filterMap ZeroCollection.lineTarget, Padded235.lines.filterMap ZeroCollection.lineTarget, Padded236.lines.filterMap ZeroCollection.lineTarget, Padded237.lines.filterMap ZeroCollection.lineTarget, Padded238.lines.filterMap ZeroCollection.lineTarget, Padded239.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData224_239.keys
  rw [targets224_eq, targets225_eq, targets226_eq, targets227_eq, targets228_eq, targets229_eq, targets230_eq, targets231_eq, targets232_eq, targets233_eq, targets234_eq, targets235_eq, targets236_eq, targets237_eq, targets238_eq, targets239_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk224_239
