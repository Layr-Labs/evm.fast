import InitECandidate.Proofs.BackendStages.Padded778
import InitECandidate.Proofs.BackendStages.BytesData778
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes778_eq : (Padded778.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes778 := by
  with_unfolding_all rfl
#print axioms sectionBytes778_eq
end InitECandidate.Proofs.BackendStages
