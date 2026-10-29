import InitECandidate.Proofs.BackendStages.Metadata.Data859
import InitECandidate.Proofs.BackendStages.Padded859
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep859 : walkShmemLines Padded859.lines 940932 beforeFfis859 beforeShmem859 = (941208, afterFfis859, afterShmem859) := by
  kernel_rfl
theorem shmemStep859 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded859 :: rest) 940932 beforeFfis859 beforeShmem859 = LabToTarget.getShmemInfo rest 941208 afterFfis859 afterShmem859 := by
  rw [getShmemInfo_section, walkStep859]
theorem symbolLength859 : LabToTarget.secLength Padded859.lines 0 = 276 := by
  kernel_rfl
#print axioms shmemStep859
#print axioms symbolLength859
end InitECandidate.Proofs.BackendStages.Metadata
