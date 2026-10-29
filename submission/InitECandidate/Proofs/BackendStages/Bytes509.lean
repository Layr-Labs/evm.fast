import InitECandidate.Proofs.BackendStages.Padded509
import InitECandidate.Proofs.BackendStages.BytesData509
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes509_eq : (Padded509.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes509 := by
  with_unfolding_all rfl
#print axioms sectionBytes509_eq
end InitECandidate.Proofs.BackendStages
