import InitECandidate.Proofs.BackendStages.Padded637
import InitECandidate.Proofs.BackendStages.BytesData637
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes637_eq : (Padded637.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes637 := by
  with_unfolding_all rfl
#print axioms sectionBytes637_eq
end InitECandidate.Proofs.BackendStages
