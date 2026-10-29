import InitECandidate.Proofs.BackendStages.Padded319
import InitECandidate.Proofs.BackendStages.BytesData319
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes319_eq : (Padded319.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes319 := by
  with_unfolding_all rfl
#print axioms sectionBytes319_eq
end InitECandidate.Proofs.BackendStages
