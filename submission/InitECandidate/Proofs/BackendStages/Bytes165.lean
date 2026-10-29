import InitECandidate.Proofs.BackendStages.Padded165
import InitECandidate.Proofs.BackendStages.BytesData165
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes165_eq : (Padded165.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes165 := by
  with_unfolding_all rfl
#print axioms sectionBytes165_eq
end InitECandidate.Proofs.BackendStages
