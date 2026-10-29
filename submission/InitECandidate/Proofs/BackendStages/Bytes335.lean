import InitECandidate.Proofs.BackendStages.Padded335
import InitECandidate.Proofs.BackendStages.BytesData335
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes335_eq : (Padded335.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes335 := by
  with_unfolding_all rfl
#print axioms sectionBytes335_eq
end InitECandidate.Proofs.BackendStages
