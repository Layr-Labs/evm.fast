import InitECandidate.Proofs.BackendStages.Metadata.Data520
import InitECandidate.Proofs.BackendStages.Padded520
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep520 : walkShmemLines Padded520.lines 385212 beforeFfis520 beforeShmem520 = (386132, afterFfis520, afterShmem520) := by
  kernel_rfl
theorem shmemStep520 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded520 :: rest) 385212 beforeFfis520 beforeShmem520 = LabToTarget.getShmemInfo rest 386132 afterFfis520 afterShmem520 := by
  rw [getShmemInfo_section, walkStep520]
theorem symbolLength520 : LabToTarget.secLength Padded520.lines 0 = 920 := by
  kernel_rfl
#print axioms shmemStep520
#print axioms symbolLength520
end InitECandidate.Proofs.BackendStages.Metadata
