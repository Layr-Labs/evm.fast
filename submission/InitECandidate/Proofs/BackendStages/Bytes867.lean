import InitECandidate.Proofs.BackendStages.Padded867
import InitECandidate.Proofs.BackendStages.BytesData867
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes867_eq : (Padded867.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes867 := by
  with_unfolding_all rfl
#print axioms sectionBytes867_eq
end InitECandidate.Proofs.BackendStages
