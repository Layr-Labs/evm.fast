import InitECandidate.Proofs.BackendStages.Metadata.Data680
import InitECandidate.Proofs.BackendStages.Padded680
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep680 : walkShmemLines Padded680.lines 604656 beforeFfis680 beforeShmem680 = (605104, afterFfis680, afterShmem680) := by
  kernel_rfl
theorem shmemStep680 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded680 :: rest) 604656 beforeFfis680 beforeShmem680 = LabToTarget.getShmemInfo rest 605104 afterFfis680 afterShmem680 := by
  rw [getShmemInfo_section, walkStep680]
theorem symbolLength680 : LabToTarget.secLength Padded680.lines 0 = 448 := by
  kernel_rfl
#print axioms shmemStep680
#print axioms symbolLength680
end InitECandidate.Proofs.BackendStages.Metadata
