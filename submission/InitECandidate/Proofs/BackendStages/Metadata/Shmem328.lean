import InitECandidate.Proofs.BackendStages.Metadata.Data328
import InitECandidate.Proofs.BackendStages.Padded328
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep328 : walkShmemLines Padded328.lines 258404 beforeFfis328 beforeShmem328 = (258856, afterFfis328, afterShmem328) := by
  kernel_rfl
theorem shmemStep328 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded328 :: rest) 258404 beforeFfis328 beforeShmem328 = LabToTarget.getShmemInfo rest 258856 afterFfis328 afterShmem328 := by
  rw [getShmemInfo_section, walkStep328]
theorem symbolLength328 : LabToTarget.secLength Padded328.lines 0 = 452 := by
  kernel_rfl
#print axioms shmemStep328
#print axioms symbolLength328
end InitECandidate.Proofs.BackendStages.Metadata
