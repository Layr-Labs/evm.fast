import InitECandidate.Proofs.BackendStages.Metadata.Data491
import InitECandidate.Proofs.BackendStages.Padded491
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep491 : walkShmemLines Padded491.lines 366680 beforeFfis491 beforeShmem491 = (366704, afterFfis491, afterShmem491) := by
  kernel_rfl
theorem shmemStep491 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded491 :: rest) 366680 beforeFfis491 beforeShmem491 = LabToTarget.getShmemInfo rest 366704 afterFfis491 afterShmem491 := by
  rw [getShmemInfo_section, walkStep491]
theorem symbolLength491 : LabToTarget.secLength Padded491.lines 0 = 24 := by
  kernel_rfl
#print axioms shmemStep491
#print axioms symbolLength491
end InitECandidate.Proofs.BackendStages.Metadata
