import InitECandidate.Proofs.BackendStages.Metadata.Data755
import InitECandidate.Proofs.BackendStages.Padded755
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep755 : walkShmemLines Padded755.lines 755152 beforeFfis755 beforeShmem755 = (755300, afterFfis755, afterShmem755) := by
  kernel_rfl
theorem shmemStep755 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded755 :: rest) 755152 beforeFfis755 beforeShmem755 = LabToTarget.getShmemInfo rest 755300 afterFfis755 afterShmem755 := by
  rw [getShmemInfo_section, walkStep755]
theorem symbolLength755 : LabToTarget.secLength Padded755.lines 0 = 148 := by
  kernel_rfl
#print axioms shmemStep755
#print axioms symbolLength755
end InitECandidate.Proofs.BackendStages.Metadata
