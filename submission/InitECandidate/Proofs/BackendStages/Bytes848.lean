import InitECandidate.Proofs.BackendStages.Padded848
import InitECandidate.Proofs.BackendStages.BytesData848
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes848_eq : (Padded848.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes848 := by
  with_unfolding_all rfl
#print axioms sectionBytes848_eq
end InitECandidate.Proofs.BackendStages
