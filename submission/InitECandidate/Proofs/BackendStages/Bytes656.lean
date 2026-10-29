import InitECandidate.Proofs.BackendStages.Padded656
import InitECandidate.Proofs.BackendStages.BytesData656
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes656_eq : (Padded656.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes656 := by
  with_unfolding_all rfl
#print axioms sectionBytes656_eq
end InitECandidate.Proofs.BackendStages
