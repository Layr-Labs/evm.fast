import InitECandidate.Proofs.BackendStages.Metadata.Data752
import InitECandidate.Proofs.BackendStages.Padded752
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep752 : walkShmemLines Padded752.lines 747984 beforeFfis752 beforeShmem752 = (750844, afterFfis752, afterShmem752) := by
  kernel_rfl
theorem shmemStep752 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded752 :: rest) 747984 beforeFfis752 beforeShmem752 = LabToTarget.getShmemInfo rest 750844 afterFfis752 afterShmem752 := by
  rw [getShmemInfo_section, walkStep752]
theorem symbolLength752 : LabToTarget.secLength Padded752.lines 0 = 2860 := by
  kernel_rfl
#print axioms shmemStep752
#print axioms symbolLength752
end InitECandidate.Proofs.BackendStages.Metadata
