import InitECandidate.Proofs.BackendStages.Padded813
import InitECandidate.Proofs.BackendStages.BytesData813
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes813_eq : (Padded813.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes813 := by
  with_unfolding_all rfl
#print axioms sectionBytes813_eq
end InitECandidate.Proofs.BackendStages
