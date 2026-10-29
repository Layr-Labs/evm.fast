import InitECandidate.Proofs.BackendStages.Metadata.Data373
import InitECandidate.Proofs.BackendStages.Padded373
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep373 : walkShmemLines Padded373.lines 287160 beforeFfis373 beforeShmem373 = (287176, afterFfis373, afterShmem373) := by
  kernel_rfl
theorem shmemStep373 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded373 :: rest) 287160 beforeFfis373 beforeShmem373 = LabToTarget.getShmemInfo rest 287176 afterFfis373 afterShmem373 := by
  rw [getShmemInfo_section, walkStep373]
theorem symbolLength373 : LabToTarget.secLength Padded373.lines 0 = 16 := by
  kernel_rfl
#print axioms shmemStep373
#print axioms symbolLength373
end InitECandidate.Proofs.BackendStages.Metadata
