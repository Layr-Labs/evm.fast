import InitECandidate.Proofs.BackendStages.Metadata.Data487
import InitECandidate.Proofs.BackendStages.Padded487
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep487 : walkShmemLines Padded487.lines 364468 beforeFfis487 beforeShmem487 = (364736, afterFfis487, afterShmem487) := by
  kernel_rfl
theorem shmemStep487 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded487 :: rest) 364468 beforeFfis487 beforeShmem487 = LabToTarget.getShmemInfo rest 364736 afterFfis487 afterShmem487 := by
  rw [getShmemInfo_section, walkStep487]
theorem symbolLength487 : LabToTarget.secLength Padded487.lines 0 = 268 := by
  kernel_rfl
#print axioms shmemStep487
#print axioms symbolLength487
end InitECandidate.Proofs.BackendStages.Metadata
