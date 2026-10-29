import InitECandidate.Proofs.BackendStages.Metadata.Data510
import InitECandidate.Proofs.BackendStages.Padded510
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep510 : walkShmemLines Padded510.lines 377932 beforeFfis510 beforeShmem510 = (378696, afterFfis510, afterShmem510) := by
  kernel_rfl
theorem shmemStep510 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded510 :: rest) 377932 beforeFfis510 beforeShmem510 = LabToTarget.getShmemInfo rest 378696 afterFfis510 afterShmem510 := by
  rw [getShmemInfo_section, walkStep510]
theorem symbolLength510 : LabToTarget.secLength Padded510.lines 0 = 764 := by
  kernel_rfl
#print axioms shmemStep510
#print axioms symbolLength510
end InitECandidate.Proofs.BackendStages.Metadata
