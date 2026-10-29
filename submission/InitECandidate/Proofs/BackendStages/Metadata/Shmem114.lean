import InitECandidate.Proofs.BackendStages.Metadata.Data114
import InitECandidate.Proofs.BackendStages.Padded114
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep114 : walkShmemLines Padded114.lines 11816 beforeFfis114 beforeShmem114 = (11836, afterFfis114, afterShmem114) := by
  kernel_rfl
theorem shmemStep114 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded114 :: rest) 11816 beforeFfis114 beforeShmem114 = LabToTarget.getShmemInfo rest 11836 afterFfis114 afterShmem114 := by
  rw [getShmemInfo_section, walkStep114]
theorem symbolLength114 : LabToTarget.secLength Padded114.lines 0 = 20 := by
  kernel_rfl
#print axioms shmemStep114
#print axioms symbolLength114
end InitECandidate.Proofs.BackendStages.Metadata
