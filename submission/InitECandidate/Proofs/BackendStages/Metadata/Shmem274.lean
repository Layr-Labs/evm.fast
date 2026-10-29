import InitECandidate.Proofs.BackendStages.Metadata.Data274
import InitECandidate.Proofs.BackendStages.Padded274
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep274 : walkShmemLines Padded274.lines 209188 beforeFfis274 beforeShmem274 = (213616, afterFfis274, afterShmem274) := by
  kernel_rfl
theorem shmemStep274 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded274 :: rest) 209188 beforeFfis274 beforeShmem274 = LabToTarget.getShmemInfo rest 213616 afterFfis274 afterShmem274 := by
  rw [getShmemInfo_section, walkStep274]
theorem symbolLength274 : LabToTarget.secLength Padded274.lines 0 = 4428 := by
  kernel_rfl
#print axioms shmemStep274
#print axioms symbolLength274
end InitECandidate.Proofs.BackendStages.Metadata
