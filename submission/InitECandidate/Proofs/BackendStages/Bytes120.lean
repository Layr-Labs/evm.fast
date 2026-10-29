import InitECandidate.Proofs.BackendStages.Padded120
import InitECandidate.Proofs.BackendStages.BytesData120
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes120_eq : (Padded120.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes120 := by
  with_unfolding_all rfl
#print axioms sectionBytes120_eq
end InitECandidate.Proofs.BackendStages
