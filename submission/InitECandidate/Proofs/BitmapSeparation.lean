import InitECandidate.Proofs.BitmapInstallation
import Flapjack.Compiler.Backend.StackRemove.Proofs.WordListMemory

namespace InitE
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Backend.StackRemove.Proofs.WordListMemory

local instance : Nonempty (WordLocW 64) := ⟨.word 0⟩
set_option maxRecDepth 100000

private theorem word_list_graph {β : Type} [Nonempty β]
    (values : List β) (base : BitVec 64) (memory : BitVec 64 → β)
    (hbound : base.toNat+values.length*8 < 2^64)
    (hmem : ∀ i : Fin values.length,
      memory (base+BitVec.ofNat 64 i.val * StackRemove.bytesInWord 64) = values[i]) :
    Misc.wordList base values (SetSep.fun2Set (memory, StackRemove.addresses base values.length)) := by
  rw [wordListSeteq values base ⟨Or.inr rfl,hbound⟩]
  funext entry
  apply propext
  constructor
  · rintro ⟨address,haddr,rfl⟩
    obtain ⟨i,hi,rfl⟩ := (StackRemove.mem_addresses _ _ _).mp haddr
    apply List.mem_map.mpr
    refine ⟨i,List.mem_range.mpr hi,?_⟩
    rw [holEl_eq_getElem i values hi]
    change (_,values[i]) = (_,memory (base+BitVec.ofNat 64 i*StackRemove.bytesInWord 64))
    exact congrArg (Prod.mk _) (hmem ⟨i,hi⟩).symm
  · intro hentry
    obtain ⟨i,hi,heq⟩ := List.mem_map.mp hentry
    have hil := List.mem_range.mp hi
    refine ⟨base+BitVec.ofNat 64 i * StackRemove.bytesInWord 64,?_,?_⟩
    · exact (StackRemove.mem_addresses _ _ _).mpr ⟨i,hil,rfl⟩
    · rw [←heq,holEl_eq_getElem i values hil]
      change (_,values[i]) = (_,memory (base+BitVec.ofNat 64 i*StackRemove.bytesInWord 64))
      exact congrArg (Prod.mk _) (hmem ⟨i,hil⟩).symm

private theorem word_list_exists_zero (base : BitVec 64) :
    Misc.wordListExists (β := WordLocW 64) base 0 (fun _ => False) := by
  refine ⟨[],(fun _=>False),(fun _=>False),?_,rfl,?_⟩
  · exact ⟨by funext e; simp,fun e h=>h.1⟩
  · exact ⟨rfl,rfl⟩

theorem baseline_bitmap_separation :
    SetSep.star (Misc.wordList (BitVec.ofNat 64 (initDataRam+24))
        (InitECandidate.bitmaps.map WordLocW.word))
      (Misc.wordListExists (BitVec.ofNat 64 initDataEnd) 0)
      (SetSep.fun2Set (packedWordMemory installedMemory,
        StackRemove.addresses (BitVec.ofNat 64 (initDataRam+24)) InitECandidate.bitmaps.length)) := by
  let heap := SetSep.fun2Set (packedWordMemory installedMemory,
    StackRemove.addresses (BitVec.ofNat 64 (initDataRam+24)) InitECandidate.bitmaps.length)
  refine ⟨heap,(fun _=>False),⟨by funext e; simp [heap], fun e h=>h.2⟩,?_,word_list_exists_zero _⟩
  have hword := word_list_graph (InitECandidate.bitmaps.map WordLocW.word)
    (BitVec.ofNat 64 (initDataRam+24)) (packedWordMemory installedMemory)
  have hb : (BitVec.ofNat 64 (initDataRam+24)).toNat+
      (InitECandidate.bitmaps.map WordLocW.word).length*8 < 2^64 := by
    simp only [List.length_map,bitmap_count]; decide
  apply hword hb
  intro i
  have hi : i.val < InitECandidate.bitmaps.length := by simpa using i.isLt
  have ha : BitVec.ofNat 64 (initDataRam+24)+BitVec.ofNat 64 i.val*StackRemove.bytesInWord 64 =
      BitVec.ofNat 64 (initDataRam+24+8*i.val) := by
    change BitVec.ofNat 64 (initDataRam+24)+BitVec.ofNat 64 i.val*BitVec.ofNat 64 8 = _
    rw [BitVec.ofNat_mul_ofNat,BitVec.ofNat_add_ofNat,Nat.mul_comm]
  rw [ha]
  change WordLocW.word (packedMemoryWord installedMemory (BitVec.ofNat 64 (initDataRam+24+8*i.val))) =
    (InitECandidate.bitmaps.map WordLocW.word)[i.val]
  have hm := @List.getElem_map (BitVec 64) (WordLocW 64) WordLocW.word
    InitECandidate.bitmaps i.val i.isLt
  exact (congrArg WordLocW.word (installed_bitmap_word ⟨i.val,hi⟩)).trans hm.symm

end InitE
