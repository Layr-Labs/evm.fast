import InitECandidate.Proofs.BackendStages.Metadata.Data230
import InitECandidate.Proofs.BackendStages.Padded230
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep230 : walkShmemLines Padded230.lines 153100 beforeFfis230 beforeShmem230 = (154888, afterFfis230, afterShmem230) := by
  kernel_rfl
theorem shmemStep230 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded230 :: rest) 153100 beforeFfis230 beforeShmem230 = LabToTarget.getShmemInfo rest 154888 afterFfis230 afterShmem230 := by
  rw [getShmemInfo_section, walkStep230]
theorem symbolLength230 : LabToTarget.secLength Padded230.lines 0 = 1788 := by
  kernel_rfl
#print axioms shmemStep230
#print axioms symbolLength230
end InitECandidate.Proofs.BackendStages.Metadata
