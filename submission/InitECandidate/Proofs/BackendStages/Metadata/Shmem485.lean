import InitECandidate.Proofs.BackendStages.Metadata.Data485
import InitECandidate.Proofs.BackendStages.Padded485
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep485 : walkShmemLines Padded485.lines 363664 beforeFfis485 beforeShmem485 = (364372, afterFfis485, afterShmem485) := by
  kernel_rfl
theorem shmemStep485 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded485 :: rest) 363664 beforeFfis485 beforeShmem485 = LabToTarget.getShmemInfo rest 364372 afterFfis485 afterShmem485 := by
  rw [getShmemInfo_section, walkStep485]
theorem symbolLength485 : LabToTarget.secLength Padded485.lines 0 = 708 := by
  kernel_rfl
#print axioms shmemStep485
#print axioms symbolLength485
end InitECandidate.Proofs.BackendStages.Metadata
