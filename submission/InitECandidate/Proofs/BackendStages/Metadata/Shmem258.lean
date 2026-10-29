import InitECandidate.Proofs.BackendStages.Metadata.Data258
import InitECandidate.Proofs.BackendStages.Padded258
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep258 : walkShmemLines Padded258.lines 193872 beforeFfis258 beforeShmem258 = (194140, afterFfis258, afterShmem258) := by
  kernel_rfl
theorem shmemStep258 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded258 :: rest) 193872 beforeFfis258 beforeShmem258 = LabToTarget.getShmemInfo rest 194140 afterFfis258 afterShmem258 := by
  rw [getShmemInfo_section, walkStep258]
theorem symbolLength258 : LabToTarget.secLength Padded258.lines 0 = 268 := by
  kernel_rfl
#print axioms shmemStep258
#print axioms symbolLength258
end InitECandidate.Proofs.BackendStages.Metadata
