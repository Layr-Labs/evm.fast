import InitECandidate.Proofs.BackendStages.Metadata.Data347
import InitECandidate.Proofs.BackendStages.Padded347
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep347 : walkShmemLines Padded347.lines 276416 beforeFfis347 beforeShmem347 = (276424, afterFfis347, afterShmem347) := by
  kernel_rfl
theorem shmemStep347 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded347 :: rest) 276416 beforeFfis347 beforeShmem347 = LabToTarget.getShmemInfo rest 276424 afterFfis347 afterShmem347 := by
  rw [getShmemInfo_section, walkStep347]
theorem symbolLength347 : LabToTarget.secLength Padded347.lines 0 = 8 := by
  kernel_rfl
#print axioms shmemStep347
#print axioms symbolLength347
end InitECandidate.Proofs.BackendStages.Metadata
