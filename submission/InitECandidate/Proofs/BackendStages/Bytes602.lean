import InitECandidate.Proofs.BackendStages.Padded602
import InitECandidate.Proofs.BackendStages.BytesData602
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes602_eq : (Padded602.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes602 := by
  with_unfolding_all rfl
#print axioms sectionBytes602_eq
end InitECandidate.Proofs.BackendStages
