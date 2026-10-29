import InitECandidate.Proofs.BackendStages.Metadata.Data709
import InitECandidate.Proofs.BackendStages.Padded709
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep709 : walkShmemLines Padded709.lines 702872 beforeFfis709 beforeShmem709 = (703056, afterFfis709, afterShmem709) := by
  kernel_rfl
theorem shmemStep709 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded709 :: rest) 702872 beforeFfis709 beforeShmem709 = LabToTarget.getShmemInfo rest 703056 afterFfis709 afterShmem709 := by
  rw [getShmemInfo_section, walkStep709]
theorem symbolLength709 : LabToTarget.secLength Padded709.lines 0 = 184 := by
  kernel_rfl
#print axioms shmemStep709
#print axioms symbolLength709
end InitECandidate.Proofs.BackendStages.Metadata
