import InitECandidate.Proofs.BitmapImageFacts

namespace InitE
open Flapjack

private theorem bitmap_image_byte (offset : Fin (8*InitECandidate.bitmaps.length)) :
    InitECandidate.code[initDataRom-initialPc+24+offset.val]?.getD 0 =
      wordByte (InitECandidate.bitmaps[offset.val/8]?.getD 0) (offset.val%8) := by
  have h := congrArg (fun bytes : List (BitVec 8) => bytes[offset.val]?.getD 0) bitmap_image_bytes
  simpa [List.getElem?_take, offset.isLt, List.getElem?_drop,
    bitmapBytes, List.getElem?_map, List.getElem?_range, Nat.add_comm] using h

private theorem wordByte_getByte (word : BitVec 64) (offset : Nat) (ho : offset < 8) :
    wordByte word offset = HolByte.getByte (BitVec.ofNat 64 offset) word false := by
  apply BitVec.eq_of_toNat_eq
  simp only [wordByte, HolByte.getByte, HolByte.byteIndex, Bool.false_eq_true, ↓reduceIte,
    BitVec.toNat_ofNat, BitVec.toNat_setWidth, BitVec.toNat_ushiftRight,
    Nat.shiftRight_eq_div_pow]
  rw [Nat.mod_eq_of_lt (by omega : offset < 2^64),Nat.mod_eq_of_lt ho]

theorem installed_bitmap_byte (i : Fin InitECandidate.bitmaps.length) (j : Fin 8) :
    installedMemory (BitVec.ofNat 64 (initDataRam+24+8*i.val) + BitVec.ofNat 64 j.val) =
      HolByte.getByte (BitVec.ofNat 64 j.val) InitECandidate.bitmaps[i] false := by
  have hi : i.val < 4603 := by simpa only [bitmap_count] using i.isLt
  have hj := j.isLt
  have ha : (BitVec.ofNat 64 (initDataRam+24+8*i.val) + BitVec.ofNat 64 j.val).toNat =
      initDataRam+24+8*i.val+j.val := by
    rw [BitVec.ofNat_add_ofNat,BitVec.toNat_ofNat,
      Nat.mod_eq_of_lt (by simp only [initDataRam]; omega)]
  have hs : ¬ (sourceBase ≤ initDataRam+24+8*i.val+j.val ∧
      initDataRam+24+8*i.val+j.val < sourceBase+40) := by
    simp only [sourceBase,initDataRam]; omega
  have hd : ¬ (initDataRam ≤ initDataRam+24+8*i.val+j.val ∧
      initDataRam+24+8*i.val+j.val < initDataRam+24) := by omega
  have hb : initDataRam+24 ≤ initDataRam+24+8*i.val+j.val ∧
      initDataRam+24+8*i.val+j.val < initDataEnd := by
    simp only [initDataRam,initDataEnd]; omega
  rw [installedMemory,ha,if_neg hs,if_neg hd,if_pos hb]
  have hrom : initDataRom+(initDataRam+24+8*i.val+j.val)-initDataRam = initDataRom+24+8*i.val+j.val := by omega
  rw [hrom]
  unfold initialMemory
  have hrt : (BitVec.ofNat 64 (initDataRom+24+8*i.val+j.val)).toNat = initDataRom+24+8*i.val+j.val := by
    rw [BitVec.toNat_ofNat,Nat.mod_eq_of_lt (by simp only [initDataRom]; omega)]
  have hsize := submitted_image_size
  rw [hrt,if_pos (by simp only [initialPc,initDataRom,hsize]; omega)]
  have hoff : initDataRom+24+8*i.val+j.val-initialPc = initDataRom-initialPc+24+(8*i.val+j.val) := by
    simp only [initDataRom,initialPc]; omega
  rw [hoff,bitmap_image_byte ⟨8*i.val+j.val,by have hl := bitmap_count; omega⟩]
  have hdiv : (8*i.val+j.val)/8 = i.val := by omega
  have hmod : (8*i.val+j.val)%8 = j.val := by omega
  rw [hdiv,hmod,List.getElem?_eq_getElem i.isLt]
  exact wordByte_getByte _ _ j.isLt

theorem installed_bitmap_word (i : Fin InitECandidate.bitmaps.length) :
    packedMemoryWord installedMemory (BitVec.ofNat 64 (initDataRam+24+8*i.val)) =
      InitECandidate.bitmaps[i] := by
  apply packedMemoryWord_of_bytes
  · unfold holByteAligned
    rw [holLOG2_eq_log2 (by decide)]
    change holAligned 3 (BitVec.ofNat 64 (initDataRam+24+8*i.val)) = true
    apply (holAligned_iff _ _).mpr
    change (BitVec.ofNat 64 (initDataRam+24+8*i.val)).toNat % 8 = 0
    have hi : i.val < 4603 := by simpa only [bitmap_count] using i.isLt
    simp only [BitVec.toNat_ofNat]
    have hbase : initDataRam+24+8*i.val < 2^64 := by
      simp only [initDataRam]; omega
    rw [Nat.mod_eq_of_lt hbase]
    simp [initDataRam,Nat.add_mod,Nat.mul_mod_right]
  · exact installed_bitmap_byte i

end InitE
