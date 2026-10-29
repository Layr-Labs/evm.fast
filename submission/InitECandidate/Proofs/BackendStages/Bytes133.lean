import InitECandidate.Proofs.BackendStages.Padded133
import InitECandidate.Proofs.BackendStages.BytesData133
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes133_eq : (Padded133.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes133 := by
  with_unfolding_all rfl
#print axioms sectionBytes133_eq
end InitECandidate.Proofs.BackendStages
