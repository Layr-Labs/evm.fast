import InitECandidate.Proofs.BackendStages.Metadata.Data224
import InitECandidate.Proofs.BackendStages.Padded224
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep224 : walkShmemLines Padded224.lines 129580 beforeFfis224 beforeShmem224 = (135800, afterFfis224, afterShmem224) := by
  kernel_rfl
theorem shmemStep224 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded224 :: rest) 129580 beforeFfis224 beforeShmem224 = LabToTarget.getShmemInfo rest 135800 afterFfis224 afterShmem224 := by
  rw [getShmemInfo_section, walkStep224]
theorem symbolLength224 : LabToTarget.secLength Padded224.lines 0 = 6220 := by
  kernel_rfl
#print axioms shmemStep224
#print axioms symbolLength224
end InitECandidate.Proofs.BackendStages.Metadata
