import InitECandidate.Proofs.WordStages.Optimize64
import InitECandidate.Proofs.StackAnalysis.Data64
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
namespace InitECandidate.Proofs.WordBackend
/-- Independent stack-analysis literals match the checked optimized function. -/
theorem stackAnalysis64_eq : InitECandidate.Proofs.WordStages.optimized64 = InitECandidate.Proofs.StackAnalysis.optimized64 := by
  rfl
#print axioms stackAnalysis64_eq
end InitECandidate.Proofs.WordBackend
