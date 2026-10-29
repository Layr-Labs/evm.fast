import InitECandidate.Proofs.BackendStages.Padded349
import InitECandidate.Proofs.BackendStages.BytesData349
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes349_eq : (Padded349.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes349 := by
  with_unfolding_all rfl
#print axioms sectionBytes349_eq
end InitECandidate.Proofs.BackendStages
