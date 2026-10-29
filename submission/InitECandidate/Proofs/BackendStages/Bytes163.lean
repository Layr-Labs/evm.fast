import InitECandidate.Proofs.BackendStages.Padded163
import InitECandidate.Proofs.BackendStages.BytesData163
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes163_eq : (Padded163.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes163 := by
  with_unfolding_all rfl
#print axioms sectionBytes163_eq
end InitECandidate.Proofs.BackendStages
