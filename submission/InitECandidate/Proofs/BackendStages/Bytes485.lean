import InitECandidate.Proofs.BackendStages.Padded485
import InitECandidate.Proofs.BackendStages.BytesData485
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes485_eq : (Padded485.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes485 := by
  with_unfolding_all rfl
#print axioms sectionBytes485_eq
end InitECandidate.Proofs.BackendStages
