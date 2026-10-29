import InitECandidate.Proofs.BackendStages.Padded872
import InitECandidate.Proofs.BackendStages.BytesData872
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes872_eq : (Padded872.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes872 := by
  with_unfolding_all rfl
#print axioms sectionBytes872_eq
end InitECandidate.Proofs.BackendStages
