import InitECandidate.Proofs.BackendStages.BytesData282
import InitECandidate.Proofs.BackendStages.BytePiecesData282
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section282_eq : ByteData.bytes282 = [piece282_0].flatten := by
  rw [piece282_0_eq]
  rfl
#print axioms section282_eq
end InitECandidate.Proofs.BackendStages.BytePieces
