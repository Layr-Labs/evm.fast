import InitECandidate.Proofs.BackendStages.Padded861
import InitECandidate.Proofs.BackendStages.BytesData861
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes861_eq : (Padded861.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes861 := by
  with_unfolding_all rfl
#print axioms sectionBytes861_eq
end InitECandidate.Proofs.BackendStages
