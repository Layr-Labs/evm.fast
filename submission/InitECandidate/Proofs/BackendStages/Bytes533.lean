import InitECandidate.Proofs.BackendStages.Padded533
import InitECandidate.Proofs.BackendStages.BytesData533
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes533_eq : (Padded533.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes533 := by
  with_unfolding_all rfl
#print axioms sectionBytes533_eq
end InitECandidate.Proofs.BackendStages
