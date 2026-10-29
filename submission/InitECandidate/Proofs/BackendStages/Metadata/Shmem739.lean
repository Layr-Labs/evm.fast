import InitECandidate.Proofs.BackendStages.Metadata.Data739
import InitECandidate.Proofs.BackendStages.Padded739
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep739 : walkShmemLines Padded739.lines 736376 beforeFfis739 beforeShmem739 = (739424, afterFfis739, afterShmem739) := by
  kernel_rfl
theorem shmemStep739 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded739 :: rest) 736376 beforeFfis739 beforeShmem739 = LabToTarget.getShmemInfo rest 739424 afterFfis739 afterShmem739 := by
  rw [getShmemInfo_section, walkStep739]
theorem symbolLength739 : LabToTarget.secLength Padded739.lines 0 = 3048 := by
  kernel_rfl
#print axioms shmemStep739
#print axioms symbolLength739
end InitECandidate.Proofs.BackendStages.Metadata
