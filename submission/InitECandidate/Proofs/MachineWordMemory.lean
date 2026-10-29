import InitE.MachineInitialization
import Flapjack.Compiler.Backend.LabToTarget.InstMem
import Mathlib.Tactic.FinCases

namespace InitE
open Flapjack Flapjack.Compiler.Backend.LabToTarget

def packEight (bytes : Fin 8 → BitVec 8) : BitVec 64 :=
  ((bytes 0).setWidth 64) |||
    ((bytes 1).setWidth 64 <<< 8) |||
    ((bytes 2).setWidth 64 <<< 16) |||
    ((bytes 3).setWidth 64 <<< 24) |||
    ((bytes 4).setWidth 64 <<< 32) |||
    ((bytes 5).setWidth 64 <<< 40) |||
    ((bytes 6).setWidth 64 <<< 48) |||
    ((bytes 7).setWidth 64 <<< 56)

theorem packEight_lane (bytes : Fin 8 → BitVec 8) (i : Fin 8) :
    ((packEight bytes >>> (8*i.val)).setWidth 8) = bytes i := by
  fin_cases i <;>
    apply BitVec.eq_of_getLsbD_eq <;>
    intro j hj <;>
    simp (disch := omega) [packEight, BitVec.getLsbD_of_ge] <;> grind
theorem packEight_inverse (word : BitVec 64) :
    packEight (fun i => Flapjack.HolByte.getByte (BitVec.ofNat 64 i.val) word false) = word := by
  apply BitVec.eq_of_getLsbD_eq
  intro j hj
  have hdiv : j / 8 < 8 := by omega
  have hmod : j % 8 < 8 := by omega
  have hjoin : 8 * (j / 8) + j % 8 = j := by omega
  have hbyte : Flapjack.HolByte.getByte (BitVec.ofNat 64 (j / 8)) word false =
      (word >>> (8 * (j / 8))).setWidth 8 := by
    simp [Flapjack.HolByte.getByte, Flapjack.HolByte.byteIndex,
      BitVec.toNat_ofNat, Nat.mod_eq_of_lt hdiv]
  have h := congrArg (fun b : BitVec 8 => b.getLsbD (j % 8))
    (packEight_lane
      (fun i => Flapjack.HolByte.getByte (BitVec.ofNat 64 i.val) word false)
      ⟨j / 8, hdiv⟩)
  simp only [hbyte, BitVec.getLsbD_setWidth, BitVec.getLsbD_ushiftRight] at h
  simpa [hmod, hjoin] using h

noncomputable def packedMemoryWord (memory : BitVec 64 → BitVec 8)
    (address : BitVec 64) : BitVec 64 :=
  packEight (fun i => memory (holByteAlign address + BitVec.ofNat 64 i.val))

noncomputable def packedWordMemory (memory : BitVec 64 → BitVec 8)
    (address : BitVec 64) : WordLocW 64 := .word (packedMemoryWord memory address)

theorem packedMemoryWord_byte (memory : BitVec 64 → BitVec 8) (address : BitVec 64) :
    HolByte.getByte address (packedMemoryWord memory address) false = memory address := by
  change ((packEight (fun i => memory (holByteAlign address + BitVec.ofNat 64 i.val)) >>>
    (8*(address.toNat%8))).setWidth 8) = memory address
  have hmod : address.toNat % 8 < 8 := Nat.mod_lt _ (by decide)
  have hp := packEight_lane
    (fun i => memory (holByteAlign address + BitVec.ofNat 64 i.val)) ⟨address.toNat%8,hmod⟩
  rw [hp, holByteAlign_add_mod (Or.inr rfl)]

theorem packedMemoryWord_align (memory : BitVec 64 → BitVec 8) (address : BitVec 64) :
    packedMemoryWord memory (holByteAlign address) = packedMemoryWord memory address := by
  unfold packedMemoryWord
  have h : holByteAlign (holByteAlign address) = holByteAlign address := by
    apply BitVec.eq_of_toNat_eq
    simp [holByteAlign_toNat (Or.inr rfl)]
  rw [h]

/-- A complete aligned word is recovered from its eight concrete bytes. -/
theorem packedMemoryWord_of_bytes (memory : BitVec 64 → BitVec 8)
    (address word : BitVec 64) (halign : holByteAligned address = true)
    (hbytes : ∀ i : Fin 8, memory (address + BitVec.ofNat 64 i.val) =
      HolByte.getByte (BitVec.ofNat 64 i.val) word false) :
    packedMemoryWord memory address = word := by
  have ha : holByteAlign address = address := by
    simpa only [holByteAligned, holAligned, holByteAlign, decide_eq_true_eq] using halign
  unfold packedMemoryWord
  rw [ha]
  have hfun : (fun i : Fin 8 => memory (address + BitVec.ofNat 64 i.val)) =
      (fun i : Fin 8 => HolByte.getByte (BitVec.ofNat 64 i.val) word false) := funext hbytes
  rw [hfun]
  exact packEight_inverse word

/-- Every byte memory admits the complete little-endian word witness required
by goodInitState, including addresses outside accessible regions. -/
theorem packedWordMemory_certificate (memory : BitVec 64 → BitVec 8)
    (address : BitVec 64) :
    ∃ word, memory address = HolByte.getByte address word false ∧
      packedWordMemory memory (holByteAlign address) = .word word := by
  exact ⟨packedMemoryWord memory address, (packedMemoryWord_byte memory address).symm,
    congrArg WordLocW.word (packedMemoryWord_align memory address)⟩

/-- Pointwise loading of literal bytes implies codeLoaded's exact recursive read. -/
theorem readBytearray_literal (address : BitVec 64) (bytes : List (BitVec 8))
    (reader : BitVec 64 → Option (BitVec 8))
    (h : ∀ i : Fin bytes.length,
      reader (address + BitVec.ofNat 64 i.val) = some bytes[i]) :
    readBytearrayWordHOL address bytes.length reader = some bytes := by
  induction bytes generalizing address with
  | nil => rfl
  | cons byte rest ih =>
      have hhead := h ⟨0,by simp⟩
      have htail : ∀ i : Fin rest.length,
          reader ((address+1) + BitVec.ofNat 64 i.val) = some rest[i] := by
        intro i
        have hh := h ⟨i.val+1,by simpa using Nat.succ_lt_succ i.isLt⟩
        have ha : (address+1) + BitVec.ofNat 64 i.val =
            address + BitVec.ofNat 64 (i.val+1) := by
          rw [BitVec.ofNat_add]
          change (address+1) + BitVec.ofNat 64 i.val = address + (BitVec.ofNat 64 i.val+1)
          rw [BitVec.add_assoc, BitVec.add_comm (1 : BitVec 64) (BitVec.ofNat 64 i.val)]
        rw [ha]
        exact hh
      simp only [List.length_cons, readBytearrayWordHOL]
      simpa using (show reader address = some byte from by simpa using hhead) ▸
        (show (some byte).bind (fun b =>
          (readBytearrayWordHOL (address+1) rest.length reader).bind (fun bs => some (b::bs))) =
          some (byte::rest) from by rw [ih (address+1) htail]; rfl)

theorem bytesInMem_literal (address : BitVec 64) (bytes : List (BitVec 8))
    (memory : BitVec 64 → BitVec 8) (domain excluded : BitVec 64 → Prop)
    (h : ∀ i : Fin bytes.length,
      domain (address+BitVec.ofNat 64 i.val) ∧ ¬excluded (address+BitVec.ofNat 64 i.val) ∧
        memory (address+BitVec.ofNat 64 i.val) = bytes[i]) :
    bytesInMemHOL address bytes memory domain excluded := by
  induction bytes generalizing address with
  | nil => trivial
  | cons byte rest ih =>
      have hhead : domain address ∧ ¬excluded address ∧ memory address = byte := by
        simpa using h ⟨0,by simp⟩
      refine ⟨hhead.1,hhead.2.1,hhead.2.2,ih (address+1) ?_⟩
      intro i
      have hh := h ⟨i.val+1,by simpa using Nat.succ_lt_succ i.isLt⟩
      have ha : (address+1) + BitVec.ofNat 64 i.val =
          address + BitVec.ofNat 64 (i.val+1) := by
        rw [BitVec.ofNat_add]
        change (address+1) + BitVec.ofNat 64 i.val = address + (BitVec.ofNat 64 i.val+1)
        rw [BitVec.add_assoc,BitVec.add_comm (1 : BitVec 64) (BitVec.ofNat 64 i.val)]
      rw [ha]
      exact hh

end InitE
