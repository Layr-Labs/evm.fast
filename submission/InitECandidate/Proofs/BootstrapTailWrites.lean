import InitECandidate.Proofs.BootstrapCopyFacts

set_option autoImplicit false

namespace InitECandidate.Proofs.BootstrapStraightLine
open InitE
open Flapjack Flapjack.Compiler.Backend.LabToTarget

/-- The eight actual startup stores, in execution order. -/
def tailWrites (memory : BitVec 64 → BitVec 8) : BitVec 64 → BitVec 8 :=
  let memory := wmwMem false memory (BitVec.ofNat 64 initDataRam) 8 (BitVec.ofNat 64 sourceBase)
  let memory := wmwMem false memory (BitVec.ofNat 64 (initDataRam+8)) 8 (BitVec.ofNat 64 stackStart)
  let memory := wmwMem false memory (BitVec.ofNat 64 (initDataRam+16)) 8 (BitVec.ofNat 64 ramEnd)
  let memory := wmwMem false memory (BitVec.ofNat 64 sourceBase) 8 (0xa0020018 : BitVec 64)
  let memory := wmwMem false memory (BitVec.ofNat 64 (sourceBase+8)) 8 (0xa0028ff0 : BitVec 64)
  let memory := wmwMem false memory (BitVec.ofNat 64 (sourceBase+16)) 8 (0xa0028ff0 : BitVec 64)
  let memory := wmwMem false memory (BitVec.ofNat 64 (sourceBase+24)) 8 (0x800f0134 : BitVec 64)
  wmwMem false memory (BitVec.ofNat 64 (sourceBase+32)) 8 (0x800f1000 : BitVec 64)


set_option maxRecDepth 10000 in
/-- Every source bookkeeping byte is set to its fixed challenge value. -/
theorem tailWrites_headers (i : Fin 5) (j : Fin 8)
    (memory : BitVec 64 → BitVec 8) :
    tailWrites memory (BitVec.ofNat 64 (sourceBase+8*i.val+j.val)) =
      wordByte Guest.startupHeaders[i] j.val := by
  fin_cases i <;> fin_cases j <;>
    simp [tailWrites, Guest.startupHeaders, wordByte, wmwMem,
      sourceBase, initDataRam, stackStart, ramEnd, ramStart, ramSize]

set_option maxRecDepth 10000 in
/-- The three ABI cells are installed by startup, rather than supplied by RAM. -/
theorem tailWrites_abi (i : Fin 3) (j : Fin 8)
    (memory : BitVec 64 → BitVec 8) :
    tailWrites memory (BitVec.ofNat 64 (initDataRam+8*i.val+j.val)) =
      wordByte ([BitVec.ofNat 64 sourceBase, BitVec.ofNat 64 stackStart,
        BitVec.ofNat 64 ramEnd][i]) j.val := by
  fin_cases i <;> fin_cases j <;> rfl

/-- Other memory survives the eight initialization stores. -/
theorem tailWrites_frame (memory : BitVec 64 → BitVec 8) (a : BitVec 64)
    (source : ¬ (sourceBase ≤ a.toNat ∧ a.toNat < sourceBase+40))
    (abi : ¬ (initDataRam ≤ a.toNat ∧ a.toNat < initDataRam+24)) :
    tailWrites memory a = memory a := by
  have frame (base : Nat) (value : BitVec 64)
      (within : (sourceBase ≤ base ∧ base+8 ≤ sourceBase+40) ∨
        (initDataRam ≤ base ∧ base+8 ≤ initDataRam+24))
      (m : BitVec 64 → BitVec 8) : wmwMem false m (BitVec.ofNat 64 base) 8 value a = m a := by
    apply wmwMem_other
    intro byte bound equality
    have numbers := congrArg BitVec.toNat equality
    simp only [stepAddr, Bool.false_eq_true, reduceIte, BitVec.toNat_add,
      BitVec.toNat_ofNat] at numbers
    have baseBound : base < 2^64 := by simp only [sourceBase,initDataRam] at within; omega
    rw [Nat.mod_eq_of_lt baseBound, Nat.mod_eq_of_lt (by omega : byte < 2^64),
      Nat.mod_eq_of_lt (by simp only [sourceBase,initDataRam] at within; omega : base+byte < 2^64)] at numbers
    rcases within with within | within
    · exact source ⟨by omega,by omega⟩
    · exact abi ⟨by omega,by omega⟩
  simp only [tailWrites,
    frame (sourceBase+32) _ (by decide), frame (sourceBase+24) _ (by decide),
    frame (sourceBase+16) _ (by decide), frame (sourceBase+8) _ (by decide),
    frame sourceBase _ (by decide), frame (initDataRam+16) _ (by decide),
    frame (initDataRam+8) _ (by decide), frame initDataRam _ (by decide)]

/-- Applying the bootstrap stores to the proved ROM-copy result establishes
exactly the compiler/source memory installation formula. -/
theorem tailWrites_copied_memory : tailWrites (BootstrapCopy.copiedMemory 4606) = installedMemory := by
  funext a
  unfold installedMemory
  split_ifs with source abi bitmap
  · let offset := a.toNat-sourceBase
    let i : Fin 5 := ⟨offset/8,by dsimp [offset]; omega⟩
    let j : Fin 8 := ⟨offset%8,Nat.mod_lt _ (by decide)⟩
    have address : BitVec.ofNat 64 (sourceBase+8*i.val+j.val) = a := by
      apply BitVec.eq_of_toNat_eq
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by
        dsimp [i,j,offset]; simp only [sourceBase] at source ⊢; omega)]
      dsimp [i,j,offset]
      omega
    have value := tailWrites_headers i j (BootstrapCopy.copiedMemory 4606)
    rw [address] at value
    have index : (a.toNat-sourceBase)/8 < Guest.startupHeaders.length := by
      simpa only [i,offset,Guest.startupHeaders,List.length_cons,List.length_nil] using i.isLt
    rw [List.getElem?_eq_getElem index,Option.getD_some]
    exact value
  · let offset := a.toNat-initDataRam
    let i : Fin 3 := ⟨offset/8,by dsimp [offset]; omega⟩
    let j : Fin 8 := ⟨offset%8,Nat.mod_lt _ (by decide)⟩
    have address : BitVec.ofNat 64 (initDataRam+8*i.val+j.val) = a := by
      apply BitVec.eq_of_toNat_eq
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by
        dsimp [i,j,offset]; simp only [initDataRam] at abi ⊢; omega)]
      dsimp [i,j,offset]
      omega
    have value := tailWrites_abi i j (BootstrapCopy.copiedMemory 4606)
    rw [address] at value
    have index : (a.toNat-initDataRam)/8 <
        [BitVec.ofNat 64 sourceBase, BitVec.ofNat 64 stackStart, BitVec.ofNat 64 ramEnd].length := by
      simpa only [i,offset,List.length_cons,List.length_nil] using i.isLt
    rw [List.getElem?_eq_getElem index,Option.getD_some]
    exact value
  · rw [tailWrites_frame _ _ source abi]
    unfold BootstrapCopy.copiedMemory
    rw [if_pos (by simp only [initDataRam,initDataEnd] at bitmap; omega)]
    apply congrArg initialMemory
    apply congrArg (BitVec.ofNat 64)
    simp only [initDataRom,initDataRam] at bitmap ⊢
    omega
  · rw [tailWrites_frame _ _ source abi]
    unfold BootstrapCopy.copiedMemory
    rw [if_neg (by simp only [sourceBase,initDataRam,initDataEnd] at abi bitmap; omega)]

end InitECandidate.Proofs.BootstrapStraightLine
