import InitECandidate.Proofs.BackendStages.Metadata.Data681
import InitECandidate.Proofs.BackendStages.Padded681
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep681 : walkShmemLines Padded681.lines 605104 beforeFfis681 beforeShmem681 = (605120, afterFfis681, afterShmem681) := by
  kernel_rfl
theorem shmemStep681 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded681 :: rest) 605104 beforeFfis681 beforeShmem681 = LabToTarget.getShmemInfo rest 605120 afterFfis681 afterShmem681 := by
  rw [getShmemInfo_section, walkStep681]
theorem symbolLength681 : LabToTarget.secLength Padded681.lines 0 = 16 := by
  kernel_rfl
#print axioms shmemStep681
#print axioms symbolLength681
end InitECandidate.Proofs.BackendStages.Metadata
