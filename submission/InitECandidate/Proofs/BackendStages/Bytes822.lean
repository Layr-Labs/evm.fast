import InitECandidate.Proofs.BackendStages.Padded822
import InitECandidate.Proofs.BackendStages.BytesData822
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes822_eq : (Padded822.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes822 := by
  with_unfolding_all rfl
#print axioms sectionBytes822_eq
end InitECandidate.Proofs.BackendStages
