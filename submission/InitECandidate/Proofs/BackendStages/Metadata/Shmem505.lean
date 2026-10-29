import InitECandidate.Proofs.BackendStages.Metadata.Data505
import InitECandidate.Proofs.BackendStages.Padded505
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep505 : walkShmemLines Padded505.lines 373684 beforeFfis505 beforeShmem505 = (374600, afterFfis505, afterShmem505) := by
  kernel_rfl
theorem shmemStep505 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded505 :: rest) 373684 beforeFfis505 beforeShmem505 = LabToTarget.getShmemInfo rest 374600 afterFfis505 afterShmem505 := by
  rw [getShmemInfo_section, walkStep505]
theorem symbolLength505 : LabToTarget.secLength Padded505.lines 0 = 916 := by
  kernel_rfl
#print axioms shmemStep505
#print axioms symbolLength505
end InitECandidate.Proofs.BackendStages.Metadata
