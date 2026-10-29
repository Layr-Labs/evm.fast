import InitECandidate.Proofs.BackendStages.Metadata.Data306
import InitECandidate.Proofs.BackendStages.Padded306
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep306 : walkShmemLines Padded306.lines 241064 beforeFfis306 beforeShmem306 = (241960, afterFfis306, afterShmem306) := by
  kernel_rfl
theorem shmemStep306 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded306 :: rest) 241064 beforeFfis306 beforeShmem306 = LabToTarget.getShmemInfo rest 241960 afterFfis306 afterShmem306 := by
  rw [getShmemInfo_section, walkStep306]
theorem symbolLength306 : LabToTarget.secLength Padded306.lines 0 = 896 := by
  kernel_rfl
#print axioms shmemStep306
#print axioms symbolLength306
end InitECandidate.Proofs.BackendStages.Metadata
