import InitECandidate.Proofs.BackendStages.Metadata.Data463
import InitECandidate.Proofs.BackendStages.Padded463
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep463 : walkShmemLines Padded463.lines 356888 beforeFfis463 beforeShmem463 = (356912, afterFfis463, afterShmem463) := by
  kernel_rfl
theorem shmemStep463 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded463 :: rest) 356888 beforeFfis463 beforeShmem463 = LabToTarget.getShmemInfo rest 356912 afterFfis463 afterShmem463 := by
  rw [getShmemInfo_section, walkStep463]
theorem symbolLength463 : LabToTarget.secLength Padded463.lines 0 = 24 := by
  kernel_rfl
#print axioms shmemStep463
#print axioms symbolLength463
end InitECandidate.Proofs.BackendStages.Metadata
