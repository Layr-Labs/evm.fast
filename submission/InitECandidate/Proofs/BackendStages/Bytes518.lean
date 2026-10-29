import InitECandidate.Proofs.BackendStages.Padded518
import InitECandidate.Proofs.BackendStages.BytesData518
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes518_eq : (Padded518.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes518 := by
  with_unfolding_all rfl
#print axioms sectionBytes518_eq
end InitECandidate.Proofs.BackendStages
