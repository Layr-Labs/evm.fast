import InitECandidate.Proofs.BackendStages.Metadata.Data383
import InitECandidate.Proofs.BackendStages.Padded383
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep383 : walkShmemLines Padded383.lines 294060 beforeFfis383 beforeShmem383 = (294128, afterFfis383, afterShmem383) := by
  kernel_rfl
theorem shmemStep383 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded383 :: rest) 294060 beforeFfis383 beforeShmem383 = LabToTarget.getShmemInfo rest 294128 afterFfis383 afterShmem383 := by
  rw [getShmemInfo_section, walkStep383]
theorem symbolLength383 : LabToTarget.secLength Padded383.lines 0 = 68 := by
  kernel_rfl
#print axioms shmemStep383
#print axioms symbolLength383
end InitECandidate.Proofs.BackendStages.Metadata
