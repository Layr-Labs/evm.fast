import InitECandidate.Proofs.BackendStages.Metadata.Ffi768
import InitECandidate.Proofs.BackendStages.Metadata.Shmem768
import InitECandidate.Proofs.BackendStages.Metadata.Ffi769
import InitECandidate.Proofs.BackendStages.Metadata.Shmem769
import InitECandidate.Proofs.BackendStages.Metadata.Ffi770
import InitECandidate.Proofs.BackendStages.Metadata.Shmem770
import InitECandidate.Proofs.BackendStages.Metadata.Ffi771
import InitECandidate.Proofs.BackendStages.Metadata.Shmem771
import InitECandidate.Proofs.BackendStages.Metadata.Ffi772
import InitECandidate.Proofs.BackendStages.Metadata.Shmem772
import InitECandidate.Proofs.BackendStages.Metadata.Ffi773
import InitECandidate.Proofs.BackendStages.Metadata.Shmem773
import InitECandidate.Proofs.BackendStages.Metadata.Ffi774
import InitECandidate.Proofs.BackendStages.Metadata.Shmem774
import InitECandidate.Proofs.BackendStages.Metadata.Ffi775
import InitECandidate.Proofs.BackendStages.Metadata.Shmem775
import InitECandidate.Proofs.BackendStages.Metadata.Ffi776
import InitECandidate.Proofs.BackendStages.Metadata.Shmem776
import InitECandidate.Proofs.BackendStages.Metadata.Ffi777
import InitECandidate.Proofs.BackendStages.Metadata.Shmem777
import InitECandidate.Proofs.BackendStages.Metadata.Ffi778
import InitECandidate.Proofs.BackendStages.Metadata.Shmem778
import InitECandidate.Proofs.BackendStages.Metadata.Ffi779
import InitECandidate.Proofs.BackendStages.Metadata.Shmem779
import InitECandidate.Proofs.BackendStages.Metadata.Ffi780
import InitECandidate.Proofs.BackendStages.Metadata.Shmem780
import InitECandidate.Proofs.BackendStages.Metadata.Ffi781
import InitECandidate.Proofs.BackendStages.Metadata.Shmem781
import InitECandidate.Proofs.BackendStages.Metadata.Ffi782
import InitECandidate.Proofs.BackendStages.Metadata.Shmem782
import InitECandidate.Proofs.BackendStages.Metadata.Ffi783
import InitECandidate.Proofs.BackendStages.Metadata.Shmem783
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk768_783 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis783) : LabToTarget.findFfiNames ([Filtered768, Filtered769, Filtered770, Filtered771, Filtered772, Filtered773, Filtered774, Filtered775, Filtered776, Filtered777, Filtered778, Filtered779, Filtered780, Filtered781, Filtered782, Filtered783] ++ rest) = suffixFfis768 := by
  exact ffiStep768 _ ( ffiStep769 _ ( ffiStep770 _ ( ffiStep771 _ ( ffiStep772 _ ( ffiStep773 _ ( ffiStep774 _ ( ffiStep775 _ ( ffiStep776 _ ( ffiStep777 _ ( ffiStep778 _ ( ffiStep779 _ ( ffiStep780 _ ( ffiStep781 _ ( ffiStep782 _ ( ffiStep783 _ (h))))))))))))))))
theorem shmemChunk768_783 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded768, Padded769, Padded770, Padded771, Padded772, Padded773, Padded774, Padded775, Padded776, Padded777, Padded778, Padded779, Padded780, Padded781, Padded782, Padded783] ++ rest) 767408 beforeFfis768 beforeShmem768 = LabToTarget.getShmemInfo rest 802160 afterFfis783 afterShmem783 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 767408 beforeFfis768 beforeShmem768 = _
  rw [shmemStep768]
  change LabToTarget.getShmemInfo _ 767556 beforeFfis769 beforeShmem769 = _
  rw [shmemStep769]
  change LabToTarget.getShmemInfo _ 767916 beforeFfis770 beforeShmem770 = _
  rw [shmemStep770]
  change LabToTarget.getShmemInfo _ 774572 beforeFfis771 beforeShmem771 = _
  rw [shmemStep771]
  change LabToTarget.getShmemInfo _ 784500 beforeFfis772 beforeShmem772 = _
  rw [shmemStep772]
  change LabToTarget.getShmemInfo _ 786108 beforeFfis773 beforeShmem773 = _
  rw [shmemStep773]
  change LabToTarget.getShmemInfo _ 787192 beforeFfis774 beforeShmem774 = _
  rw [shmemStep774]
  change LabToTarget.getShmemInfo _ 788092 beforeFfis775 beforeShmem775 = _
  rw [shmemStep775]
  change LabToTarget.getShmemInfo _ 789256 beforeFfis776 beforeShmem776 = _
  rw [shmemStep776]
  change LabToTarget.getShmemInfo _ 790040 beforeFfis777 beforeShmem777 = _
  rw [shmemStep777]
  change LabToTarget.getShmemInfo _ 790700 beforeFfis778 beforeShmem778 = _
  rw [shmemStep778]
  change LabToTarget.getShmemInfo _ 791084 beforeFfis779 beforeShmem779 = _
  rw [shmemStep779]
  change LabToTarget.getShmemInfo _ 791092 beforeFfis780 beforeShmem780 = _
  rw [shmemStep780]
  change LabToTarget.getShmemInfo _ 791240 beforeFfis781 beforeShmem781 = _
  rw [shmemStep781]
  change LabToTarget.getShmemInfo _ 791672 beforeFfis782 beforeShmem782 = _
  rw [shmemStep782]
  change LabToTarget.getShmemInfo _ 796456 beforeFfis783 beforeShmem783 = _
  rw [shmemStep783]
theorem symbolsChunk768_783 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 767408 ([Padded768, Padded769, Padded770, Padded771, Padded772, Padded773, Padded774, Padded775, Padded776, Padded777, Padded778, Padded779, Padded780, Padded781, Padded782, Padded783] ++ rest) = [(768, 767408, 148), (769, 767556, 360), (770, 767916, 6656), (771, 774572, 9928), (772, 784500, 1608), (773, 786108, 1084), (774, 787192, 900), (775, 788092, 1164), (776, 789256, 784), (777, 790040, 660), (778, 790700, 384), (779, 791084, 8), (780, 791092, 148), (781, 791240, 432), (782, 791672, 4784), (783, 796456, 5704)] ++ LabToTarget.getSymbols 802160 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength768, symbolLength769, symbolLength770, symbolLength771, symbolLength772, symbolLength773, symbolLength774, symbolLength775, symbolLength776, symbolLength777, symbolLength778, symbolLength779, symbolLength780, symbolLength781, symbolLength782, symbolLength783]
  rfl
#print axioms ffiChunk768_783
#print axioms shmemChunk768_783
#print axioms symbolsChunk768_783
end InitECandidate.Proofs.BackendStages.Metadata
