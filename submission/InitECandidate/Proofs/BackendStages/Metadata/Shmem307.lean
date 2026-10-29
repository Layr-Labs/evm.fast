import InitECandidate.Proofs.BackendStages.Metadata.Data307
import InitECandidate.Proofs.BackendStages.Padded307
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep307 : walkShmemLines Padded307.lines 241960 beforeFfis307 beforeShmem307 = (242172, afterFfis307, afterShmem307) := by
  kernel_rfl
theorem shmemStep307 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded307 :: rest) 241960 beforeFfis307 beforeShmem307 = LabToTarget.getShmemInfo rest 242172 afterFfis307 afterShmem307 := by
  rw [getShmemInfo_section, walkStep307]
theorem symbolLength307 : LabToTarget.secLength Padded307.lines 0 = 212 := by
  kernel_rfl
#print axioms shmemStep307
#print axioms symbolLength307
end InitECandidate.Proofs.BackendStages.Metadata
