import InitECandidate.Proofs.BackendStages.Padded110
import InitECandidate.Proofs.BackendStages.BytesData110
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes110_eq : (Padded110.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes110 := by
  with_unfolding_all rfl
#print axioms sectionBytes110_eq
end InitECandidate.Proofs.BackendStages
