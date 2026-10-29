import InitECandidate.Proofs.BackendStages.Padded405
import InitECandidate.Proofs.BackendStages.BytesData405
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes405_eq : (Padded405.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes405 := by
  with_unfolding_all rfl
#print axioms sectionBytes405_eq
end InitECandidate.Proofs.BackendStages
