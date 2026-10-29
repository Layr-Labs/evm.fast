import InitECandidate.Proofs.BackendStages.Padded860
import InitECandidate.Proofs.BackendStages.BytesData860
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes860_eq : (Padded860.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes860 := by
  with_unfolding_all rfl
#print axioms sectionBytes860_eq
end InitECandidate.Proofs.BackendStages
