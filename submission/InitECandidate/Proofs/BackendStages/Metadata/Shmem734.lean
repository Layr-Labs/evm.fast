import InitECandidate.Proofs.BackendStages.Metadata.Data734
import InitECandidate.Proofs.BackendStages.Padded734
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep734 : walkShmemLines Padded734.lines 734100 beforeFfis734 beforeShmem734 = (734792, afterFfis734, afterShmem734) := by
  kernel_rfl
theorem shmemStep734 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded734 :: rest) 734100 beforeFfis734 beforeShmem734 = LabToTarget.getShmemInfo rest 734792 afterFfis734 afterShmem734 := by
  rw [getShmemInfo_section, walkStep734]
theorem symbolLength734 : LabToTarget.secLength Padded734.lines 0 = 692 := by
  kernel_rfl
#print axioms shmemStep734
#print axioms symbolLength734
end InitECandidate.Proofs.BackendStages.Metadata
