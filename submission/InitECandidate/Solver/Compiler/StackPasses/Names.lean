import InitECandidate.Solver.Compiler.StackPasses.Common
import Flapjack.Compiler.Backend.StackToLab.Proofs.FullMakeInitSemantics

/-!
# `stack_names` run transfer, and preservation of the program hypotheses along the stack chain

* `renameState_makeInit`: the renamed `stack_names` source state of Flapjack's `make_init` is the
  `stack_names` output state (the fact proved inside Flapjack's `StackNames.makeInitSemantics`,
  not exported there).
* `stackNames_entry_run`: a run of the entry call from the `make_init` source state
  `StackNames.makeInit f (sptFromAList code) oracle s` at clock `k` is a run from `s` at the
  same clock `k`, with the same result, FFI state and final clock.
* `s2_to_s3_run`: the instance at Flapjack's `full_make_init` states `s2`/`s3`
  (`FullMakeInitSemantics.lean`): a run of procedure `0` from `s2` moves to `s3`.
* `noA_rawcallCompTop`, `okP_rawcallCompTop`, `okP_allocComp`, `okP_gcStub`: `noA` is preserved
  by `stack_rawcall`, `okP X` by `stack_rawcall` and `stack_alloc`, and the `stack_alloc` GC stub
  satisfies `okP X`.
-/

namespace InitECandidate.Solver.Compiler.StackPasses

open Flapjack Flapjack.Compiler.Backend.StackLang Flapjack.StackSemEvaluate
open Flapjack.StackSemStateOps
open Flapjack.Compiler.Backend.StackNames (renameState findNameSpt compileHOL progCompHOL)

set_option autoImplicit false

section
variable {width : Nat} [NeZero width] {C F : Type}

/-- The renamed `make_init` source state is the `stack_names` output state. -/
theorem renameState_makeInit {s : StackSemStateFiniteExact width C F} {f : Spt Nat}
    {code : List (Nat × HolProg width)}
    {oracle : Nat → C × List (Nat × HolProg width) × List (BitVec width)}
    (hf : Function.Bijective (findNameSpt f)) (hcode : s.code = sptFromAList (compileHOL f code))
    (hor : s.compileOracle = Prod.map id (Prod.map (compileHOL f) id) ∘ oracle) :
    renameState s.compile f
      (Flapjack.Compiler.Backend.StackNames.makeInit f (sptFromAList code) oracle s) = s := by
  have hinv : ∀ y, findNameSpt f (holLinv (findNameSpt f) (fun _ => True) y) = y :=
    apply_holLinv_of_surjective hf.2
  have hc : sptFromAList (compileHOL f (sptToAList (sptFromAList code))) = s.code := by
    rw [hcode]
    refine (sptEqThm _ _ ⟨sptWfFromAList _, sptWfFromAList _⟩).mpr fun n => ?_
    rw [sptLookup_sptFromAList, Flapjack.Compiler.Backend.StackNames.sptAListLookup_compileHOL,
      ← sptLookup_sptFromAList,
      sptLookup_sptFromAList_sptToAList, sptLookup_sptFromAList, sptLookup_sptFromAList,
      Flapjack.Compiler.Backend.StackNames.sptAListLookup_compileHOL]
  classical
  have hsave : (fun y => decide (∃ x, decide (∃ z, s.ffiSaveRegs z = true ∧
      x = holLinv (findNameSpt f) (fun _ => True) z) = true ∧ y = findNameSpt f x)) =
      s.ffiSaveRegs := by
    funext y
    by_cases hy : s.ffiSaveRegs y = true
    · rw [hy, decide_eq_true_iff]
      exact ⟨holLinv (findNameSpt f) (fun _ => True) y,
        decide_eq_true_iff.mpr ⟨y, hy, rfl⟩, (hinv y).symm⟩
    · rw [Bool.not_eq_true] at hy
      rw [hy, decide_eq_false_iff_not]
      rintro ⟨x, hx, rfl⟩
      obtain ⟨z, hz, rfl⟩ := decide_eq_true_iff.mp hx
      rw [hinv z, hz] at hy
      exact Bool.noConfusion hy
  simp only [renameState, Flapjack.Compiler.Backend.StackNames.makeInit,
    Flapjack.Compiler.Backend.StackNames.MakeInit.mapKeys_mapKeys_linv hf, hc, ← hor]
  refine Eq.trans ?_ (show { s with ffiSaveRegs := s.ffiSaveRegs } = s from rfl)
  congr 1

theorem progCompHOL_call_inl (f : Spt Nat) (n : Nat) :
    progCompHOL f (.call none (.inl n) none : HolProg width) = .call none (.inl n) none := by
  simp [progCompHOL, Flapjack.Compiler.Backend.StackNames.destFindNameHOL]

/-- **`stack_names` entry run.** Under the premises of Flapjack's
`StackNames.makeInitSemantics`, a run of the entry call from the `make_init` source state at
clock `k` is a run from the `stack_names` output state `s` at the same clock, with the same
result, FFI state and final clock. -/
theorem stackNames_entry_run {s : StackSemStateFiniteExact width C F} {f : Spt Nat}
    {code : List (Nat × HolProg width)}
    {oracle : Nat → C × List (Nat × HolProg width) × List (BitVec width)}
    (ha : ¬s.useAlloc) (hs : ¬s.useStore) (hk : ¬s.useStack)
    (hf : Function.Bijective (findNameSpt f)) (hcode : s.code = sptFromAList (compileHOL f code))
    (hor : s.compileOracle = Prod.map id (Prod.map (compileHOL f) id) ∘ oracle)
    (start k : Nat) (res : Option (StackSemResult width))
    (post : StackSemStateFiniteExact width C F)
    (run : evaluate ((.call none (.inl start) none : HolProg width),
      { Flapjack.Compiler.Backend.StackNames.makeInit f (sptFromAList code) oracle s with
        clock := k }) = (res, post)) :
    ∃ post', evaluate ((.call none (.inl start) none : HolProg width), { s with clock := k }) =
      (res, post') ∧ post'.ffi = post.ffi ∧ post'.clock = post.clock := by
  have h := Flapjack.Compiler.Backend.StackNames.compCorrect (c := s.compile) (f := f)
    (.call none (.inl start) none)
    { Flapjack.Compiler.Backend.StackNames.makeInit f (sptFromAList code) oracle s with clock := k }
    res post ⟨run, hf, by simpa [Flapjack.Compiler.Backend.StackNames.makeInit] using ha,
      by simpa [Flapjack.Compiler.Backend.StackNames.makeInit] using hs,
      by simpa [Flapjack.Compiler.Backend.StackNames.makeInit] using hk, rfl⟩
  rw [progCompHOL_call_inl, Flapjack.Compiler.Backend.StackNames.renameState_withClock,
    renameState_makeInit hf hcode hor] at h
  exact ⟨_, h, rfl, rfl⟩

/-! ## Preservation of `noA` and `okP X` along `stack_rawcall` and `stack_alloc` -/

theorem noA_compSeq (first second : HolProg width) (info : Spt Nat) (fallback : HolProg width)
    (hf : noA fallback = true) :
    noA (Flapjack.Compiler.Backend.StackRawCall.compSeq first second info fallback) = true := by
  unfold Flapjack.Compiler.Backend.StackRawCall.compSeq
  split
  · exact hf
  · split
    · exact hf
    · split
      · rfl
      · split <;> rfl

theorem noA_rawcallComp (info : Spt Nat) (p : HolProg width) (h : noA p = true) :
    noA (Flapjack.Compiler.Backend.StackRawCall.comp info p) = true := by
  induction p using Flapjack.Compiler.Backend.StackRawCall.comp.induct with
  | case1 first second ih1 ih2 =>
    simp only [noA_seq, Bool.and_eq_true] at h
    rw [Flapjack.Compiler.Backend.StackRawCall.comp]
    exact noA_compSeq _ _ _ _ (by simp [ih1 h.1, ih2 h.2])
  | case2 op r ri first second ih1 ih2 =>
    simp only [noA_ite, Bool.and_eq_true] at h
    simp [Flapjack.Compiler.Backend.StackRawCall.comp, ih1 h.1, ih2 h.2]
  | case3 body ih =>
    simp only [noA_loop] at h
    simp [Flapjack.Compiler.Backend.StackRawCall.comp, ih h]
  | case4 body lr l1 l2 dest ih =>
    have := (noA_call h).1 body lr l1 l2 rfl
    simp [Flapjack.Compiler.Backend.StackRawCall.comp, noA, ih this]
  | case5 body lr l1 l2 dest handler k1 k2 ih1 ih2 =>
    have h1 := (noA_call h).1 body lr l1 l2 rfl
    have h2 := (noA_call h).2 handler k1 k2 rfl
    simp [Flapjack.Compiler.Backend.StackRawCall.comp, noA, ih1 h1, ih2 h2]
  | case6 other h1 h2 h3 h4 h5 =>
    cases other with
    | seq a b => exact (h1 _ _ rfl).elim
    | ite a b c d e => exact (h2 _ _ _ _ _ rfl).elim
    | loop a => exact (h3 _ rfl).elim
    | call ret dest handler =>
      rcases ret with _ | ⟨b, lr, l1, l2⟩
      · exact h
      · rcases handler with _ | ⟨hh, k1, k2⟩
        · exact (h4 _ _ _ _ _ rfl).elim
        · exact (h5 _ _ _ _ _ _ _ _ rfl).elim
    | _ => exact h

theorem noA_rawcallCompTop (info : Spt Nat) (p : HolProg width) (h : noA p = true) :
    noA (Flapjack.Compiler.Backend.StackRawCall.compTop info p) = true := by
  cases p with
  | seq a b =>
    simp only [noA_seq, Bool.and_eq_true] at h
    simp [Flapjack.Compiler.Backend.StackRawCall.compTop, noA_rawcallComp info a h.1,
      noA_rawcallComp info b h.2]
  | _ => exact noA_rawcallComp info _ h

theorem okP_compSeq {X : List Nat} (first second : HolProg width) (info : Spt Nat)
    (fallback : HolProg width) (hf : okP X fallback = true) (hs : okP X second = true) :
    okP X (Flapjack.Compiler.Backend.StackRawCall.compSeq first second info fallback) = true := by
  unfold Flapjack.Compiler.Backend.StackRawCall.compSeq
  split
  · exact hf
  · rename_i k dest hd
    have hsec : second = .call none (.inl dest) none := by
      unfold Flapjack.Compiler.Backend.StackRawCall.destCase at hd
      split at hd <;> simp_all
    subst hsec
    have hdx : (!X.contains dest) = true := by simpa [okP, destOk] using hs
    have hdn : dest ∉ X := by simpa using hdx
    split
    · exact hf
    · split
      · simpa [okP] using hdx
      · split <;> simp [okP, hdn]

theorem okP_rawcallComp {X : List Nat} (info : Spt Nat) (p : HolProg width) (h : okP X p = true) :
    okP X (Flapjack.Compiler.Backend.StackRawCall.comp info p) = true := by
  induction p using Flapjack.Compiler.Backend.StackRawCall.comp.induct with
  | case1 first second ih1 ih2 =>
    simp only [okP_seq, Bool.and_eq_true] at h
    rw [Flapjack.Compiler.Backend.StackRawCall.comp]
    exact okP_compSeq _ _ _ _ (by simp [ih1 h.1, ih2 h.2]) h.2
  | case2 op r ri first second ih1 ih2 =>
    simp only [okP_ite, Bool.and_eq_true] at h
    simp [Flapjack.Compiler.Backend.StackRawCall.comp, ih1 h.1, ih2 h.2]
  | case3 body ih =>
    simp only [okP_loop] at h
    simp [Flapjack.Compiler.Backend.StackRawCall.comp, ih h]
  | case4 body lr l1 l2 dest ih =>
    obtain ⟨hd, hr, -⟩ := okP_call h
    simp [Flapjack.Compiler.Backend.StackRawCall.comp, okP, hd, ih (hr body lr l1 l2 rfl)]
  | case5 body lr l1 l2 dest handler k1 k2 ih1 ih2 =>
    obtain ⟨hd, hr, hh⟩ := okP_call h
    simp [Flapjack.Compiler.Backend.StackRawCall.comp, okP, hd, ih1 (hr body lr l1 l2 rfl),
      ih2 (hh handler k1 k2 rfl)]
  | case6 other h1 h2 h3 h4 h5 =>
    cases other with
    | seq a b => exact (h1 _ _ rfl).elim
    | ite a b c d e => exact (h2 _ _ _ _ _ rfl).elim
    | loop a => exact (h3 _ rfl).elim
    | call ret dest handler =>
      rcases ret with _ | ⟨b, lr, l1, l2⟩
      · exact h
      · rcases handler with _ | ⟨hh, k1, k2⟩
        · exact (h4 _ _ _ _ _ rfl).elim
        · exact (h5 _ _ _ _ _ _ _ _ rfl).elim
    | _ => exact h

theorem okP_rawcallCompTop {X : List Nat} (info : Spt Nat) (p : HolProg width)
    (h : okP X p = true) :
    okP X (Flapjack.Compiler.Backend.StackRawCall.compTop info p) = true := by
  cases p with
  | seq a b =>
    simp only [okP_seq, Bool.and_eq_true] at h
    simp [Flapjack.Compiler.Backend.StackRawCall.compTop, okP_rawcallComp info a h.1,
      okP_rawcallComp info b h.2]
  | _ => exact okP_rawcallComp info _ h

theorem okP_allocComp {X : List Nat} (n m : Nat) (p : HolProg width) (h : okP X p = true) :
    okP X (Flapjack.Compiler.Backend.StackAlloc.comp n m p).1 = true := by
  induction m, p using Flapjack.Compiler.Backend.StackAlloc.comp.induct n with
  | case1 m p1 p2 q2 m1 h1 q2' m2 h2 ih1 ih2 =>
    simp only [okP_seq, Bool.and_eq_true] at h
    have a := ih1 h.1; have b := ih2 h.2
    rw [h1] at a; rw [h2] at b
    simp [Flapjack.Compiler.Backend.StackAlloc.comp, h1, h2, a, b]
  | case2 m c r ri p1 p2 q2 m1 h1 q2' m2 h2 ih1 ih2 =>
    simp only [okP_ite, Bool.and_eq_true] at h
    have a := ih1 h.1; have b := ih2 h.2
    rw [h1] at a; rw [h2] at b
    simp [Flapjack.Compiler.Backend.StackAlloc.comp, h1, h2, a, b]
  | case3 m p1 q2 m1 h1 ih =>
    simp only [okP_loop] at h
    have a := ih h; rw [h1] at a
    simp [Flapjack.Compiler.Backend.StackAlloc.comp, h1, a]
  | case4 m dest handler =>
    simp [Flapjack.Compiler.Backend.StackAlloc.comp, okP, (okP_call h).1]
  | case5 m p1 lr l1 l2 dest q2 m1 h1 ih =>
    obtain ⟨hd, hr, -⟩ := okP_call h
    have a := ih (hr p1 lr l1 l2 rfl); rw [h1] at a
    simp [Flapjack.Compiler.Backend.StackAlloc.comp, h1, a, okP, hd]
  | case6 m p1 lr l1 l2 dest q2 m1 h1 p2 k1 k2 q2' m2 h2 ih1 ih2 =>
    obtain ⟨hd, hr, hh⟩ := okP_call h
    have a := ih1 (hr p1 lr l1 l2 rfl); rw [h1] at a
    have b := ih2 (hh p2 k1 k2 rfl); rw [h2] at b
    simp [Flapjack.Compiler.Backend.StackAlloc.comp, h1, h2, a, b, okP, hd]
  | case7 m words => simp at h
  | case8 m a b loc => simp at h
  | case9 m p hs hi hl hc1 hc2 ha hst =>
    cases p with
    | seq a b => exact (hs _ _ rfl).elim
    | ite c r ri a b => exact (hi _ _ _ _ _ rfl).elim
    | loop a => exact (hl _ rfl).elim
    | call ret dest handler =>
      rcases ret with _ | ⟨b, lr, l1, l2⟩
      · exact (hc1 _ _ rfl).elim
      · exact (hc2 _ _ _ _ _ _ rfl).elim
    | alloc w => exact (ha _ rfl).elim
    | storeConsts a b o => simp at h
    | _ => exact h

set_option linter.unusedSimpArgs false in
open Flapjack.Compiler.Backend.StackAlloc Flapjack.Compiler.Backend.StackRemove in
/-- The `stack_alloc` GC stub satisfies `okP X` for every `X`: no `Alloc`, no `StoreConsts`, no
calls or jumps (it is never called by an `Alloc`-free program, but it is part of the
`stack_remove` source code). -/
theorem okP_gcStub (X : List Nat) (conf : Flapjack.Compiler.Backend.DataToWord.Config) :
    okP X (wordGcCode conf : HolProg width) = true := by
  unfold wordGcCode
  split <;> simp [listSeqHOL, okP, memcpyCode, clearTopInst, wordGcMoveCode,
    wordGcMoveListCode, wordGcMoveLoopCode, wordGcMoveBitmapCode, wordGcMoveBitmapsCode,
    wordGcMoveRootsBitmapsCode, wordGenGcMoveCode, wordGenGcPartialMoveCode,
    wordGenGcMoveBitmapCode, wordGenGcPartialMoveBitmapCode, wordGenGcMoveBitmapsCode,
    wordGenGcPartialMoveBitmapsCode, wordGenGcMoveRootsBitmapsCode,
    wordGenGcPartialMoveRootsBitmapsCode, wordGenGcMoveListCode, wordGenGcPartialMoveListCode,
    wordGenGcMoveDataCode, wordGenGcPartialMoveRefListCode, wordGenGcPartialMoveDataCode,
    wordGenGcMoveRefsCode, wordGenGcMoveLoopCode, wordGcPartialOrFull, setNewTrigger, moveHOL,
    constInst, addInst, subInst, leftShiftInst, rightShiftInst, whileHOL, sub1Inst, andInst,
    xorInst, add1Inst, orInst, addBytesInWordInst, div2Inst, loadInst, storeInst, haltInst]
  split <;> simp [okP]

end

end InitECandidate.Solver.Compiler.StackPasses
