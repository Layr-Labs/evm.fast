import InitECandidate.Proofs.BackendStages.Metadata.Data263
import InitECandidate.Proofs.BackendStages.Padded263
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep263 : walkShmemLines Padded263.lines 201792 beforeFfis263 beforeShmem263 = (202820, afterFfis263, afterShmem263) := by
  kernel_rfl
theorem shmemStep263 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded263 :: rest) 201792 beforeFfis263 beforeShmem263 = LabToTarget.getShmemInfo rest 202820 afterFfis263 afterShmem263 := by
  rw [getShmemInfo_section, walkStep263]
theorem symbolLength263 : LabToTarget.secLength Padded263.lines 0 = 1028 := by
  kernel_rfl
#print axioms shmemStep263
#print axioms symbolLength263
end InitECandidate.Proofs.BackendStages.Metadata
