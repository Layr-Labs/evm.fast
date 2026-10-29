import InitECandidate.Proofs.BackendStages.Padded139
import InitECandidate.Proofs.BackendStages.BytesData139
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes139_eq : (Padded139.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes139 := by
  with_unfolding_all rfl
#print axioms sectionBytes139_eq
end InitECandidate.Proofs.BackendStages
