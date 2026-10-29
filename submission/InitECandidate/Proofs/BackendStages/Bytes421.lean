import InitECandidate.Proofs.BackendStages.Padded421
import InitECandidate.Proofs.BackendStages.BytesData421
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes421_eq : (Padded421.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes421 := by
  with_unfolding_all rfl
#print axioms sectionBytes421_eq
end InitECandidate.Proofs.BackendStages
