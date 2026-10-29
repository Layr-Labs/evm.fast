import InitECandidate.Proofs.BackendStages.Padded561
import InitECandidate.Proofs.BackendStages.BytesData561
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes561_eq : (Padded561.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes561 := by
  with_unfolding_all rfl
#print axioms sectionBytes561_eq
end InitECandidate.Proofs.BackendStages
