import InitECandidate.Proofs.BackendStages.Padded78
import InitECandidate.Proofs.BackendStages.BytesData78
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes78_eq : (Padded78.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes78 := by
  with_unfolding_all rfl
#print axioms sectionBytes78_eq
end InitECandidate.Proofs.BackendStages
