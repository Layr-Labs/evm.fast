import InitECandidate.Proofs.BackendStages.Padded660
import InitECandidate.Proofs.BackendStages.BytesData660
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes660_eq : (Padded660.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes660 := by
  with_unfolding_all rfl
#print axioms sectionBytes660_eq
end InitECandidate.Proofs.BackendStages
