import InitECandidate.Proofs.BackendStages.Padded761
import InitECandidate.Proofs.BackendStages.BytesData761
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes761_eq : (Padded761.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes761 := by
  with_unfolding_all rfl
#print axioms sectionBytes761_eq
end InitECandidate.Proofs.BackendStages
