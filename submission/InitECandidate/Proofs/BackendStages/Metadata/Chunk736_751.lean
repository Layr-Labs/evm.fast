import InitECandidate.Proofs.BackendStages.Metadata.Ffi736
import InitECandidate.Proofs.BackendStages.Metadata.Shmem736
import InitECandidate.Proofs.BackendStages.Metadata.Ffi737
import InitECandidate.Proofs.BackendStages.Metadata.Shmem737
import InitECandidate.Proofs.BackendStages.Metadata.Ffi738
import InitECandidate.Proofs.BackendStages.Metadata.Shmem738
import InitECandidate.Proofs.BackendStages.Metadata.Ffi739
import InitECandidate.Proofs.BackendStages.Metadata.Shmem739
import InitECandidate.Proofs.BackendStages.Metadata.Ffi740
import InitECandidate.Proofs.BackendStages.Metadata.Shmem740
import InitECandidate.Proofs.BackendStages.Metadata.Ffi741
import InitECandidate.Proofs.BackendStages.Metadata.Shmem741
import InitECandidate.Proofs.BackendStages.Metadata.Ffi742
import InitECandidate.Proofs.BackendStages.Metadata.Shmem742
import InitECandidate.Proofs.BackendStages.Metadata.Ffi743
import InitECandidate.Proofs.BackendStages.Metadata.Shmem743
import InitECandidate.Proofs.BackendStages.Metadata.Ffi744
import InitECandidate.Proofs.BackendStages.Metadata.Shmem744
import InitECandidate.Proofs.BackendStages.Metadata.Ffi745
import InitECandidate.Proofs.BackendStages.Metadata.Shmem745
import InitECandidate.Proofs.BackendStages.Metadata.Ffi746
import InitECandidate.Proofs.BackendStages.Metadata.Shmem746
import InitECandidate.Proofs.BackendStages.Metadata.Ffi747
import InitECandidate.Proofs.BackendStages.Metadata.Shmem747
import InitECandidate.Proofs.BackendStages.Metadata.Ffi748
import InitECandidate.Proofs.BackendStages.Metadata.Shmem748
import InitECandidate.Proofs.BackendStages.Metadata.Ffi749
import InitECandidate.Proofs.BackendStages.Metadata.Shmem749
import InitECandidate.Proofs.BackendStages.Metadata.Ffi750
import InitECandidate.Proofs.BackendStages.Metadata.Shmem750
import InitECandidate.Proofs.BackendStages.Metadata.Ffi751
import InitECandidate.Proofs.BackendStages.Metadata.Shmem751
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk736_751 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis751) : LabToTarget.findFfiNames ([Filtered736, Filtered737, Filtered738, Filtered739, Filtered740, Filtered741, Filtered742, Filtered743, Filtered744, Filtered745, Filtered746, Filtered747, Filtered748, Filtered749, Filtered750, Filtered751] ++ rest) = suffixFfis736 := by
  exact ffiStep736 _ ( ffiStep737 _ ( ffiStep738 _ ( ffiStep739 _ ( ffiStep740 _ ( ffiStep741 _ ( ffiStep742 _ ( ffiStep743 _ ( ffiStep744 _ ( ffiStep745 _ ( ffiStep746 _ ( ffiStep747 _ ( ffiStep748 _ ( ffiStep749 _ ( ffiStep750 _ ( ffiStep751 _ (h))))))))))))))))
theorem shmemChunk736_751 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded736, Padded737, Padded738, Padded739, Padded740, Padded741, Padded742, Padded743, Padded744, Padded745, Padded746, Padded747, Padded748, Padded749, Padded750, Padded751] ++ rest) 735484 beforeFfis736 beforeShmem736 = LabToTarget.getShmemInfo rest 747984 afterFfis751 afterShmem751 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 735484 beforeFfis736 beforeShmem736 = _
  rw [shmemStep736]
  change LabToTarget.getShmemInfo _ 736028 beforeFfis737 beforeShmem737 = _
  rw [shmemStep737]
  change LabToTarget.getShmemInfo _ 736036 beforeFfis738 beforeShmem738 = _
  rw [shmemStep738]
  change LabToTarget.getShmemInfo _ 736376 beforeFfis739 beforeShmem739 = _
  rw [shmemStep739]
  change LabToTarget.getShmemInfo _ 739424 beforeFfis740 beforeShmem740 = _
  rw [shmemStep740]
  change LabToTarget.getShmemInfo _ 740876 beforeFfis741 beforeShmem741 = _
  rw [shmemStep741]
  change LabToTarget.getShmemInfo _ 741508 beforeFfis742 beforeShmem742 = _
  rw [shmemStep742]
  change LabToTarget.getShmemInfo _ 742164 beforeFfis743 beforeShmem743 = _
  rw [shmemStep743]
  change LabToTarget.getShmemInfo _ 743904 beforeFfis744 beforeShmem744 = _
  rw [shmemStep744]
  change LabToTarget.getShmemInfo _ 745532 beforeFfis745 beforeShmem745 = _
  rw [shmemStep745]
  change LabToTarget.getShmemInfo _ 745992 beforeFfis746 beforeShmem746 = _
  rw [shmemStep746]
  change LabToTarget.getShmemInfo _ 746140 beforeFfis747 beforeShmem747 = _
  rw [shmemStep747]
  change LabToTarget.getShmemInfo _ 746288 beforeFfis748 beforeShmem748 = _
  rw [shmemStep748]
  change LabToTarget.getShmemInfo _ 746672 beforeFfis749 beforeShmem749 = _
  rw [shmemStep749]
  change LabToTarget.getShmemInfo _ 747120 beforeFfis750 beforeShmem750 = _
  rw [shmemStep750]
  change LabToTarget.getShmemInfo _ 747568 beforeFfis751 beforeShmem751 = _
  rw [shmemStep751]
theorem symbolsChunk736_751 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 735484 ([Padded736, Padded737, Padded738, Padded739, Padded740, Padded741, Padded742, Padded743, Padded744, Padded745, Padded746, Padded747, Padded748, Padded749, Padded750, Padded751] ++ rest) = [(736, 735484, 544), (737, 736028, 8), (738, 736036, 340), (739, 736376, 3048), (740, 739424, 1452), (741, 740876, 632), (742, 741508, 656), (743, 742164, 1740), (744, 743904, 1628), (745, 745532, 460), (746, 745992, 148), (747, 746140, 148), (748, 746288, 384), (749, 746672, 448), (750, 747120, 448), (751, 747568, 416)] ++ LabToTarget.getSymbols 747984 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength736, symbolLength737, symbolLength738, symbolLength739, symbolLength740, symbolLength741, symbolLength742, symbolLength743, symbolLength744, symbolLength745, symbolLength746, symbolLength747, symbolLength748, symbolLength749, symbolLength750, symbolLength751]
  rfl
#print axioms ffiChunk736_751
#print axioms shmemChunk736_751
#print axioms symbolsChunk736_751
end InitECandidate.Proofs.BackendStages.Metadata
