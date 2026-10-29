import InitECandidate.Proofs.BackendStages.Metadata.Data314
import InitECandidate.Proofs.BackendStages.Padded314
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep314 : walkShmemLines Padded314.lines 245272 beforeFfis314 beforeShmem314 = (246252, afterFfis314, afterShmem314) := by
  kernel_rfl
theorem shmemStep314 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded314 :: rest) 245272 beforeFfis314 beforeShmem314 = LabToTarget.getShmemInfo rest 246252 afterFfis314 afterShmem314 := by
  rw [getShmemInfo_section, walkStep314]
theorem symbolLength314 : LabToTarget.secLength Padded314.lines 0 = 980 := by
  kernel_rfl
#print axioms shmemStep314
#print axioms symbolLength314
end InitECandidate.Proofs.BackendStages.Metadata
