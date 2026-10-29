import InitECandidate.Proofs.BackendStages.Padded755
import InitECandidate.Proofs.BackendStages.BytesData755
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes755_eq : (Padded755.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes755 := by
  with_unfolding_all rfl
#print axioms sectionBytes755_eq
end InitECandidate.Proofs.BackendStages
