import InitECandidate.Proofs.BackendStages.Padded711
import InitECandidate.Proofs.BackendStages.BytesData711
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes711_eq : (Padded711.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes711 := by
  with_unfolding_all rfl
#print axioms sectionBytes711_eq
end InitECandidate.Proofs.BackendStages
