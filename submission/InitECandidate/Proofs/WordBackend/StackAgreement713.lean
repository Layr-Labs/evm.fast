import InitECandidate.Proofs.WordStages.Sparse713.Data10
import InitECandidate.Proofs.StackAnalysis.Data713
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
namespace InitECandidate.Proofs.WordBackend
/-- The sparse optimized-body literal agrees with independent stack analysis. -/
theorem stackAnalysis713Body_eq :
    (713, 1, InitECandidate.Proofs.WordStages.Sparse713.pass713_10) = InitECandidate.Proofs.StackAnalysis.optimized713 := by
  rfl
#print axioms stackAnalysis713Body_eq
end InitECandidate.Proofs.WordBackend
