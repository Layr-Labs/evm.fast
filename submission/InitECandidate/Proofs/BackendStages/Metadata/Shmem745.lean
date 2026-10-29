import InitECandidate.Proofs.BackendStages.Metadata.Data745
import InitECandidate.Proofs.BackendStages.Padded745
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep745 : walkShmemLines Padded745.lines 745532 beforeFfis745 beforeShmem745 = (745992, afterFfis745, afterShmem745) := by
  kernel_rfl
theorem shmemStep745 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded745 :: rest) 745532 beforeFfis745 beforeShmem745 = LabToTarget.getShmemInfo rest 745992 afterFfis745 afterShmem745 := by
  rw [getShmemInfo_section, walkStep745]
theorem symbolLength745 : LabToTarget.secLength Padded745.lines 0 = 460 := by
  kernel_rfl
#print axioms shmemStep745
#print axioms symbolLength745
end InitECandidate.Proofs.BackendStages.Metadata
