import InitECandidate.Proofs.BackendStages.Padded350
import InitECandidate.Proofs.BackendStages.BytesData350
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes350_eq : (Padded350.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes350 := by
  with_unfolding_all rfl
#print axioms sectionBytes350_eq
end InitECandidate.Proofs.BackendStages
