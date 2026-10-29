import InitECandidate.Proofs.BackendStages.Metadata.Data793
import InitECandidate.Proofs.BackendStages.Padded793
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep793 : walkShmemLines Padded793.lines 822888 beforeFfis793 beforeShmem793 = (825700, afterFfis793, afterShmem793) := by
  kernel_rfl
theorem shmemStep793 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded793 :: rest) 822888 beforeFfis793 beforeShmem793 = LabToTarget.getShmemInfo rest 825700 afterFfis793 afterShmem793 := by
  rw [getShmemInfo_section, walkStep793]
theorem symbolLength793 : LabToTarget.secLength Padded793.lines 0 = 2812 := by
  kernel_rfl
#print axioms shmemStep793
#print axioms symbolLength793
end InitECandidate.Proofs.BackendStages.Metadata
