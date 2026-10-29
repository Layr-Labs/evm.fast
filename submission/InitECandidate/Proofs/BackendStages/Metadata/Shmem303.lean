import InitECandidate.Proofs.BackendStages.Metadata.Data303
import InitECandidate.Proofs.BackendStages.Padded303
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep303 : walkShmemLines Padded303.lines 239328 beforeFfis303 beforeShmem303 = (239620, afterFfis303, afterShmem303) := by
  kernel_rfl
theorem shmemStep303 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded303 :: rest) 239328 beforeFfis303 beforeShmem303 = LabToTarget.getShmemInfo rest 239620 afterFfis303 afterShmem303 := by
  rw [getShmemInfo_section, walkStep303]
theorem symbolLength303 : LabToTarget.secLength Padded303.lines 0 = 292 := by
  kernel_rfl
#print axioms shmemStep303
#print axioms symbolLength303
end InitECandidate.Proofs.BackendStages.Metadata
