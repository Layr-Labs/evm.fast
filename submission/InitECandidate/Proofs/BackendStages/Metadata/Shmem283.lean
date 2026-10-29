import InitECandidate.Proofs.BackendStages.Metadata.Data283
import InitECandidate.Proofs.BackendStages.Padded283
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep283 : walkShmemLines Padded283.lines 224116 beforeFfis283 beforeShmem283 = (226892, afterFfis283, afterShmem283) := by
  kernel_rfl
theorem shmemStep283 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded283 :: rest) 224116 beforeFfis283 beforeShmem283 = LabToTarget.getShmemInfo rest 226892 afterFfis283 afterShmem283 := by
  rw [getShmemInfo_section, walkStep283]
theorem symbolLength283 : LabToTarget.secLength Padded283.lines 0 = 2776 := by
  kernel_rfl
#print axioms shmemStep283
#print axioms symbolLength283
end InitECandidate.Proofs.BackendStages.Metadata
