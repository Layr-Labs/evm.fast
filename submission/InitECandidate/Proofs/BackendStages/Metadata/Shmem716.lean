import InitECandidate.Proofs.BackendStages.Metadata.Data716
import InitECandidate.Proofs.BackendStages.Padded716
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep716 : walkShmemLines Padded716.lines 722752 beforeFfis716 beforeShmem716 = (722900, afterFfis716, afterShmem716) := by
  kernel_rfl
theorem shmemStep716 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded716 :: rest) 722752 beforeFfis716 beforeShmem716 = LabToTarget.getShmemInfo rest 722900 afterFfis716 afterShmem716 := by
  rw [getShmemInfo_section, walkStep716]
theorem symbolLength716 : LabToTarget.secLength Padded716.lines 0 = 148 := by
  kernel_rfl
#print axioms shmemStep716
#print axioms symbolLength716
end InitECandidate.Proofs.BackendStages.Metadata
