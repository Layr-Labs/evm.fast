import InitECandidate.Proofs.BackendStages.Padded688
import InitECandidate.Proofs.BackendStages.BytesData688
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes688_eq : (Padded688.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes688 := by
  with_unfolding_all rfl
#print axioms sectionBytes688_eq
end InitECandidate.Proofs.BackendStages
