import InitECandidate.Proofs.BackendStages.Metadata.Data444
import InitECandidate.Proofs.BackendStages.Padded444
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep444 : walkShmemLines Padded444.lines 327504 beforeFfis444 beforeShmem444 = (327976, afterFfis444, afterShmem444) := by
  kernel_rfl
theorem shmemStep444 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded444 :: rest) 327504 beforeFfis444 beforeShmem444 = LabToTarget.getShmemInfo rest 327976 afterFfis444 afterShmem444 := by
  rw [getShmemInfo_section, walkStep444]
theorem symbolLength444 : LabToTarget.secLength Padded444.lines 0 = 472 := by
  kernel_rfl
#print axioms shmemStep444
#print axioms symbolLength444
end InitECandidate.Proofs.BackendStages.Metadata
