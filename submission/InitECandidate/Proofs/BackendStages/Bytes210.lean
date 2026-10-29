import InitECandidate.Proofs.BackendStages.Padded210
import InitECandidate.Proofs.BackendStages.BytesData210
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes210_eq : (Padded210.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes210 := by
  with_unfolding_all rfl
#print axioms sectionBytes210_eq
end InitECandidate.Proofs.BackendStages
