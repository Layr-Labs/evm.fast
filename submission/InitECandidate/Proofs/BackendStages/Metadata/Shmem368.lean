import InitECandidate.Proofs.BackendStages.Metadata.Data368
import InitECandidate.Proofs.BackendStages.Padded368
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep368 : walkShmemLines Padded368.lines 286424 beforeFfis368 beforeShmem368 = (286436, afterFfis368, afterShmem368) := by
  kernel_rfl
theorem shmemStep368 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded368 :: rest) 286424 beforeFfis368 beforeShmem368 = LabToTarget.getShmemInfo rest 286436 afterFfis368 afterShmem368 := by
  rw [getShmemInfo_section, walkStep368]
theorem symbolLength368 : LabToTarget.secLength Padded368.lines 0 = 12 := by
  kernel_rfl
#print axioms shmemStep368
#print axioms symbolLength368
end InitECandidate.Proofs.BackendStages.Metadata
