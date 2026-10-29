import InitECandidate.Proofs.BackendStages.Metadata.Data552
import InitECandidate.Proofs.BackendStages.Padded552
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep552 : walkShmemLines Padded552.lines 412500 beforeFfis552 beforeShmem552 = (413440, afterFfis552, afterShmem552) := by
  kernel_rfl
theorem shmemStep552 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded552 :: rest) 412500 beforeFfis552 beforeShmem552 = LabToTarget.getShmemInfo rest 413440 afterFfis552 afterShmem552 := by
  rw [getShmemInfo_section, walkStep552]
theorem symbolLength552 : LabToTarget.secLength Padded552.lines 0 = 940 := by
  kernel_rfl
#print axioms shmemStep552
#print axioms symbolLength552
end InitECandidate.Proofs.BackendStages.Metadata
