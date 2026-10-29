import InitECandidate.Proofs.BackendStages.Metadata.Data676
import InitECandidate.Proofs.BackendStages.Padded676
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep676 : walkShmemLines Padded676.lines 604184 beforeFfis676 beforeShmem676 = (604200, afterFfis676, afterShmem676) := by
  kernel_rfl
theorem shmemStep676 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded676 :: rest) 604184 beforeFfis676 beforeShmem676 = LabToTarget.getShmemInfo rest 604200 afterFfis676 afterShmem676 := by
  rw [getShmemInfo_section, walkStep676]
theorem symbolLength676 : LabToTarget.secLength Padded676.lines 0 = 16 := by
  kernel_rfl
#print axioms shmemStep676
#print axioms symbolLength676
end InitECandidate.Proofs.BackendStages.Metadata
