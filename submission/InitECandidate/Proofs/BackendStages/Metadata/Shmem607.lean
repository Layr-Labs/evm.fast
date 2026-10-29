import InitECandidate.Proofs.BackendStages.Metadata.Data607
import InitECandidate.Proofs.BackendStages.Padded607
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep607 : walkShmemLines Padded607.lines 480112 beforeFfis607 beforeShmem607 = (481004, afterFfis607, afterShmem607) := by
  kernel_rfl
theorem shmemStep607 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded607 :: rest) 480112 beforeFfis607 beforeShmem607 = LabToTarget.getShmemInfo rest 481004 afterFfis607 afterShmem607 := by
  rw [getShmemInfo_section, walkStep607]
theorem symbolLength607 : LabToTarget.secLength Padded607.lines 0 = 892 := by
  kernel_rfl
#print axioms shmemStep607
#print axioms symbolLength607
end InitECandidate.Proofs.BackendStages.Metadata
