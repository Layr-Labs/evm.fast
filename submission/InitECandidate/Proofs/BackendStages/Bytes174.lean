import InitECandidate.Proofs.BackendStages.Padded174
import InitECandidate.Proofs.BackendStages.BytesData174
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes174_eq : (Padded174.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes174 := by
  with_unfolding_all rfl
#print axioms sectionBytes174_eq
end InitECandidate.Proofs.BackendStages
