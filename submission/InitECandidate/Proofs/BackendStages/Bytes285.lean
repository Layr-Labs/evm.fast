import InitECandidate.Proofs.BackendStages.Padded285
import InitECandidate.Proofs.BackendStages.BytesData285
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes285_eq : (Padded285.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes285 := by
  with_unfolding_all rfl
#print axioms sectionBytes285_eq
end InitECandidate.Proofs.BackendStages
