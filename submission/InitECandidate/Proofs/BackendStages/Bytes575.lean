import InitECandidate.Proofs.BackendStages.Padded575
import InitECandidate.Proofs.BackendStages.BytesData575
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes575_eq : (Padded575.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes575 := by
  with_unfolding_all rfl
#print axioms sectionBytes575_eq
end InitECandidate.Proofs.BackendStages
