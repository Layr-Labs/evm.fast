import InitECandidate.Proofs.BackendStages.Padded425
import InitECandidate.Proofs.BackendStages.BytesData425
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes425_eq : (Padded425.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes425 := by
  with_unfolding_all rfl
#print axioms sectionBytes425_eq
end InitECandidate.Proofs.BackendStages
