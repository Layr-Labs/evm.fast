import Mathlib.Tactic.NormNum
import InitE.SourceCodeFacts
import InitE.SourceSemantics

namespace InitE
open Flapjack Flapjack.Compiler.Backend

private theorem address_toNat (base index : Nat) (h : base + index * 8 < 2 ^ 64) :
    (BitVec.ofNat 64 base + BitVec.ofNat 64 index * StackRemove.bytesInWord 64).toNat =
      base + index * 8 := by
  change (BitVec.ofNat 64 base + BitVec.ofNat 64 index * BitVec.ofNat 64 8).toNat = _
  rw [BitVec.ofNat_mul_ofNat, BitVec.ofNat_add_ofNat, BitVec.toNat_ofNat,
    Nat.mod_eq_of_lt h]

theorem ordinaryDomain_below_top (address : BitVec 64) (h : ordinaryDomain address) :
    address.toNat < heapEnd := by
  obtain ⟨i, hi, rfl⟩ := (StackRemove.mem_addresses _ _ _).mp h
  have hbound : sourceBase + i * 8 < 2 ^ 64 := by
    norm_num [stackStart, ramEnd, ramStart, ramSize, stackSize, sourceBase, globalsWords] at hi ⊢
    omega
  rw [address_toNat sourceBase i hbound]
  norm_num [stackStart, ramEnd, ramStart, ramSize, stackSize, sourceBase, globalsWords, heapEnd] at hi ⊢
  omega

theorem source_globals_allocatable (input : Guest.InputBlob) :
    globalsAllocatableHOL (sourceInitialState input) sourceDeclarations := by
  unfold globalsAllocatableHOL
  dsimp only
  rw [sourceGlobalsSize, sourceStructContext]
  change (some ([] : Pancake.PanLang.StructContextExact) ≠ none) ∧
    (∀ a, ¬ (ordinaryDomain a ∧ StackRemove.addresses (BitVec.ofNat 64 heapEnd) 67 a)) ∧
    ¬ ordinaryDomain (BitVec.ofNat 64 heapEnd + StackRemove.bytesInWord 64 * BitVec.ofNat 64 67) ∧
    67 * (StackRemove.bytesInWord 64).toNat < 2 ^ 64
  refine ⟨by simp, ?_, ?_, by decide⟩
  · intro address ⟨ha, hg⟩
    have hlt := ordinaryDomain_below_top address ha
    obtain ⟨i, hi, heq⟩ := (StackRemove.mem_addresses _ _ _).mp hg
    have hb : heapEnd + i * 8 < 2 ^ 64 := by
      norm_num [heapEnd, stackStart, ramEnd, ramStart, ramSize, stackSize, globalsWords] at hi ⊢
      omega
    rw [heq, address_toNat heapEnd i hb] at hlt
    omega
  · intro ha
    have hlt := ordinaryDomain_below_top _ ha
    have hb : heapEnd + 67 * 8 < 2 ^ 64 := by decide
    rw [BitVec.mul_comm, address_toNat heapEnd 67 hb] at hlt
    omega

end InitE
