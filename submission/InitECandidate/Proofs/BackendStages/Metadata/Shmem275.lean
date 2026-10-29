import InitECandidate.Proofs.BackendStages.Metadata.Data275
import InitECandidate.Proofs.BackendStages.Padded275
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep275 : walkShmemLines Padded275.lines 213616 beforeFfis275 beforeShmem275 = (214332, afterFfis275, afterShmem275) := by
  kernel_rfl
theorem shmemStep275 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded275 :: rest) 213616 beforeFfis275 beforeShmem275 = LabToTarget.getShmemInfo rest 214332 afterFfis275 afterShmem275 := by
  rw [getShmemInfo_section, walkStep275]
theorem symbolLength275 : LabToTarget.secLength Padded275.lines 0 = 716 := by
  kernel_rfl
#print axioms shmemStep275
#print axioms symbolLength275
end InitECandidate.Proofs.BackendStages.Metadata
