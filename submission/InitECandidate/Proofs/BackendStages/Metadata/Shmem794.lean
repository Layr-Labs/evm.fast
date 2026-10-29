import InitECandidate.Proofs.BackendStages.Metadata.Data794
import InitECandidate.Proofs.BackendStages.Padded794
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep794 : walkShmemLines Padded794.lines 825700 beforeFfis794 beforeShmem794 = (827320, afterFfis794, afterShmem794) := by
  kernel_rfl
theorem shmemStep794 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded794 :: rest) 825700 beforeFfis794 beforeShmem794 = LabToTarget.getShmemInfo rest 827320 afterFfis794 afterShmem794 := by
  rw [getShmemInfo_section, walkStep794]
theorem symbolLength794 : LabToTarget.secLength Padded794.lines 0 = 1620 := by
  kernel_rfl
#print axioms shmemStep794
#print axioms symbolLength794
end InitECandidate.Proofs.BackendStages.Metadata
