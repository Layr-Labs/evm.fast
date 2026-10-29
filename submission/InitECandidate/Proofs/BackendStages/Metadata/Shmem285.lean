import InitECandidate.Proofs.BackendStages.Metadata.Data285
import InitECandidate.Proofs.BackendStages.Padded285
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep285 : walkShmemLines Padded285.lines 227204 beforeFfis285 beforeShmem285 = (229220, afterFfis285, afterShmem285) := by
  kernel_rfl
theorem shmemStep285 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded285 :: rest) 227204 beforeFfis285 beforeShmem285 = LabToTarget.getShmemInfo rest 229220 afterFfis285 afterShmem285 := by
  rw [getShmemInfo_section, walkStep285]
theorem symbolLength285 : LabToTarget.secLength Padded285.lines 0 = 2016 := by
  kernel_rfl
#print axioms shmemStep285
#print axioms symbolLength285
end InitECandidate.Proofs.BackendStages.Metadata
