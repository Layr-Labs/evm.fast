import InitECandidate.Proofs.BackendStages.Padded330
import InitECandidate.Proofs.BackendStages.BytesData330
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes330_eq : (Padded330.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes330 := by
  with_unfolding_all rfl
#print axioms sectionBytes330_eq
end InitECandidate.Proofs.BackendStages
