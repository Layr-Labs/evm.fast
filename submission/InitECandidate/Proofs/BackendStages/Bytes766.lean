import InitECandidate.Proofs.BackendStages.Padded766
import InitECandidate.Proofs.BackendStages.BytesData766
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes766_eq : (Padded766.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes766 := by
  with_unfolding_all rfl
#print axioms sectionBytes766_eq
end InitECandidate.Proofs.BackendStages
