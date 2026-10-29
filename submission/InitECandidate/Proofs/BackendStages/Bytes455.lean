import InitECandidate.Proofs.BackendStages.Padded455
import InitECandidate.Proofs.BackendStages.BytesData455
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes455_eq : (Padded455.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes455 := by
  with_unfolding_all rfl
#print axioms sectionBytes455_eq
end InitECandidate.Proofs.BackendStages
