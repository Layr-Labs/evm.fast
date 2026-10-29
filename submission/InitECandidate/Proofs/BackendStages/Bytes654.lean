import InitECandidate.Proofs.BackendStages.Padded654
import InitECandidate.Proofs.BackendStages.BytesData654
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes654_eq : (Padded654.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes654 := by
  with_unfolding_all rfl
#print axioms sectionBytes654_eq
end InitECandidate.Proofs.BackendStages
