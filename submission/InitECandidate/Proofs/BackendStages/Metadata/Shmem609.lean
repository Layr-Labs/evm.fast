import InitECandidate.Proofs.BackendStages.Metadata.Data609
import InitECandidate.Proofs.BackendStages.Padded609
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep609 : walkShmemLines Padded609.lines 482420 beforeFfis609 beforeShmem609 = (482512, afterFfis609, afterShmem609) := by
  kernel_rfl
theorem shmemStep609 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded609 :: rest) 482420 beforeFfis609 beforeShmem609 = LabToTarget.getShmemInfo rest 482512 afterFfis609 afterShmem609 := by
  rw [getShmemInfo_section, walkStep609]
theorem symbolLength609 : LabToTarget.secLength Padded609.lines 0 = 92 := by
  kernel_rfl
#print axioms shmemStep609
#print axioms symbolLength609
end InitECandidate.Proofs.BackendStages.Metadata
