import InitECandidate.Proofs.BackendStages.Metadata.Data688
import InitECandidate.Proofs.BackendStages.Padded688
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep688 : walkShmemLines Padded688.lines 627408 beforeFfis688 beforeShmem688 = (630320, afterFfis688, afterShmem688) := by
  kernel_rfl
theorem shmemStep688 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded688 :: rest) 627408 beforeFfis688 beforeShmem688 = LabToTarget.getShmemInfo rest 630320 afterFfis688 afterShmem688 := by
  rw [getShmemInfo_section, walkStep688]
theorem symbolLength688 : LabToTarget.secLength Padded688.lines 0 = 2912 := by
  kernel_rfl
#print axioms shmemStep688
#print axioms symbolLength688
end InitECandidate.Proofs.BackendStages.Metadata
