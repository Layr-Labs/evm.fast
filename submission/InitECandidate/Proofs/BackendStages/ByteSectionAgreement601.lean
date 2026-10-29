import InitECandidate.Proofs.BackendStages.BytesData601
import InitECandidate.Proofs.BackendStages.BytePiecesData601
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section601_eq : ByteData.bytes601 = [piece601_0, piece601_1].flatten := by
  rw [piece601_0_eq, piece601_1_eq]
  rfl
#print axioms section601_eq
end InitECandidate.Proofs.BackendStages.BytePieces
