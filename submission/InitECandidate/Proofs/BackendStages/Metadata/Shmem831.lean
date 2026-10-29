import InitECandidate.Proofs.BackendStages.Metadata.Data831
import InitECandidate.Proofs.BackendStages.Padded831
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep831 : walkShmemLines Padded831.lines 896552 beforeFfis831 beforeShmem831 = (897140, afterFfis831, afterShmem831) := by
  kernel_rfl
theorem shmemStep831 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded831 :: rest) 896552 beforeFfis831 beforeShmem831 = LabToTarget.getShmemInfo rest 897140 afterFfis831 afterShmem831 := by
  rw [getShmemInfo_section, walkStep831]
theorem symbolLength831 : LabToTarget.secLength Padded831.lines 0 = 588 := by
  kernel_rfl
#print axioms shmemStep831
#print axioms symbolLength831
end InitECandidate.Proofs.BackendStages.Metadata
