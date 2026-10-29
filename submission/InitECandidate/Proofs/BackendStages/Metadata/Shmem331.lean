import InitECandidate.Proofs.BackendStages.Metadata.Data331
import InitECandidate.Proofs.BackendStages.Padded331
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep331 : walkShmemLines Padded331.lines 260072 beforeFfis331 beforeShmem331 = (260500, afterFfis331, afterShmem331) := by
  kernel_rfl
theorem shmemStep331 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded331 :: rest) 260072 beforeFfis331 beforeShmem331 = LabToTarget.getShmemInfo rest 260500 afterFfis331 afterShmem331 := by
  rw [getShmemInfo_section, walkStep331]
theorem symbolLength331 : LabToTarget.secLength Padded331.lines 0 = 428 := by
  kernel_rfl
#print axioms shmemStep331
#print axioms symbolLength331
end InitECandidate.Proofs.BackendStages.Metadata
