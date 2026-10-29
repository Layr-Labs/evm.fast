import InitECandidate.Proofs.BackendStages.Padded481
import InitECandidate.Proofs.BackendStages.BytesData481
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes481_eq : (Padded481.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes481 := by
  with_unfolding_all rfl
#print axioms sectionBytes481_eq
end InitECandidate.Proofs.BackendStages
