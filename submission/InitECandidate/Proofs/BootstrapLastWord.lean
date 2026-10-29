import InitECandidate.Proofs.CompilerComputation
import InitECandidate.Proofs.ImageComputation
import InitECandidate.Proofs.BootstrapCopyFacts
import InitECandidate.Proofs.BitmapImageFacts

open scoped InitECandidate.Proofs.CompilerComputation InitECandidate.Proofs.ImageComputation

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

namespace InitECandidate.Proofs.BootstrapCopy
open Flapjack Flapjack.RiscV.TargetProof

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 0 in
theorem final_bitmap_word_image :
    sourceReadWord (resultWidth := 64) false InitE.initialMemory 0x800fafe8 8 =
      InitECandidate.bitmaps.getLast?.getD 0 := by
  simp only [sourceReadWord, ImageComputation.initialMemory_eq,
    ImageComputation.suffix_getElem?_eq]
  kernel_rfl

private theorem copyState_value_from_image (k : Nat) (hk : k < 4606) (word : BitVec 64)
    (image : sourceReadWord (resultWidth := 64) false InitE.initialMemory
      (0x800f2000 + BitVec.ofNat 64 (8 * k)) 8 = word) :
    (copyState (k + 1)).regs 28 = word :=
  (copyState_last_register k hk).trans image

/-- The scratch register left by the real copy loop is the last literal bitmap
word from the loaded ROM image. -/
theorem copyExit_loaded_register :
    (copyState 4606).regs 28 = InitECandidate.bitmaps.getLast?.getD 0 := by
  have address : (0x800f2000 : BitVec 64) + BitVec.ofNat 64 (8 * 4605) = 0x800fafe8 := by decide
  have loaded : sourceReadWord (resultWidth := 64) false InitE.initialMemory
      ((0x800f2000 : BitVec 64) + BitVec.ofNat 64 (8 * 4605)) 8 =
      InitECandidate.bitmaps.getLast?.getD 0 := by
    rw [address]
    exact final_bitmap_word_image
  have count : 4605 + 1 = 4606 := rfl
  have endpoint := congrArg (fun n : Nat => (copyState n).regs 28) count
  exact endpoint.symm.trans (copyState_value_from_image 4605 (by decide) _ loaded)

end InitECandidate.Proofs.BootstrapCopy
