import InitECandidate.Proofs.BackendStages.Metadata.Data791
import InitECandidate.Proofs.BackendStages.Padded791
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep791 : walkShmemLines Padded791.lines 814500 beforeFfis791 beforeShmem791 = (821540, afterFfis791, afterShmem791) := by
  kernel_rfl
theorem shmemStep791 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded791 :: rest) 814500 beforeFfis791 beforeShmem791 = LabToTarget.getShmemInfo rest 821540 afterFfis791 afterShmem791 := by
  rw [getShmemInfo_section, walkStep791]
theorem symbolLength791 : LabToTarget.secLength Padded791.lines 0 = 7040 := by
  kernel_rfl
#print axioms shmemStep791
#print axioms symbolLength791
end InitECandidate.Proofs.BackendStages.Metadata
