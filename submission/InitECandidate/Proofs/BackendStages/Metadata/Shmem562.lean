import InitECandidate.Proofs.BackendStages.Metadata.Data562
import InitECandidate.Proofs.BackendStages.Padded562
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep562 : walkShmemLines Padded562.lines 420092 beforeFfis562 beforeShmem562 = (420460, afterFfis562, afterShmem562) := by
  kernel_rfl
theorem shmemStep562 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded562 :: rest) 420092 beforeFfis562 beforeShmem562 = LabToTarget.getShmemInfo rest 420460 afterFfis562 afterShmem562 := by
  rw [getShmemInfo_section, walkStep562]
theorem symbolLength562 : LabToTarget.secLength Padded562.lines 0 = 368 := by
  kernel_rfl
#print axioms shmemStep562
#print axioms symbolLength562
end InitECandidate.Proofs.BackendStages.Metadata
