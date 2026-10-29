import InitECandidate.Proofs.CompilerComputation
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BitmapComputation
import InitECandidate.Proofs.BootstrapMemory
import InitECandidate.Proofs.MachineWordMemory

open scoped InitECandidate.Proofs.CompilerComputation

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

namespace InitE
open InitECandidate.Proofs
open Flapjack

def bitmapBytes : List (BitVec 8) :=
  (List.range (8*InitECandidate.bitmaps.length)).map fun offset =>
    wordByte (InitECandidate.bitmaps[offset/8]?.getD 0) (offset%8)

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 0 in
theorem bitmap_image_bytes :
    (InitECandidate.code.drop (initDataRom-initialPc+24)).take
      (8*InitECandidate.bitmaps.length) = bitmapBytes := by
  have prefixLength : (InitECandidate.bootPrefix ++ InitECandidate.nativeCode).length = 983348 := by
    simp only [List.length_append, LiteralFacts.bootPrefix_length, LiteralFacts.nativeCode_length]
  have skipPrefix :
      (InitECandidate.bootPrefix ++ InitECandidate.nativeCode).drop
        (initDataRom - initialPc + 24) = [] := by
    apply List.drop_eq_nil_of_le
    rw [prefixLength]
    decide
  rw [InitECandidate.code, List.drop_append, skipPrefix, prefixLength, List.nil_append]
  rw [bitmapBytes, BitmapComputation.range_bytes_eq]
  kernel_rfl

theorem submitted_image_size : InitECandidate.code.length = 1028080 :=
  LiteralFacts.code_length

theorem bitmap_count : InitECandidate.bitmaps.length = 4603 := by kernel_rfl

theorem bitmapBytes_length : bitmapBytes.length = 8*InitECandidate.bitmaps.length := by
  simp [bitmapBytes]

end InitE
