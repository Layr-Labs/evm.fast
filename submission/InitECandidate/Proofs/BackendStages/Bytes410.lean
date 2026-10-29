import InitECandidate.Proofs.BackendStages.Padded410
import InitECandidate.Proofs.BackendStages.BytesData410
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes410_eq : (Padded410.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes410 := by
  with_unfolding_all rfl
#print axioms sectionBytes410_eq
end InitECandidate.Proofs.BackendStages
