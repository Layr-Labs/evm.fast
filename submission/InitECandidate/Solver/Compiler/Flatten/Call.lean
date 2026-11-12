import InitECandidate.Solver.Compiler.Flatten.Leaves

/-!
# Bounded `flatten_correct`: `JumpLower`, `RawCall`, `Call`

Bounded copies of Flapjack's `StackToLab/Proofs/FlattenCorrect/{Jumps,Call}.lean`.
Each of these consumes one StackSem tick before running a procedure body of size at most `S`
(`CodeBounded`); the tick pays for the body's `2 * psize ≤ 2 * S` and for the at most two
extra lines of a returning call (the `LocValue` of the return label and the join jump of an
exception handler).
-/

namespace InitECandidate.Solver.Compiler.Flatten

open Flapjack hiding flattenHOL findLabHOL
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.StackToLab.Proofs
open Flapjack.Compiler.Backend.StackToLab (flattenHOL findLabHOL negateHOL compileJumpHOL isSeqHOL
  progToSectionHOL stackIsSkip)
open Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabSem
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.StackToLab.Proofs.CodeInstalled
open Flapjack.Compiler.Backend.StackToLab.Proofs.StateRel
open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenHelpers
open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenCorrect

set_option autoImplicit false

section
variable {width : Nat} [NeZero width] {C F : Type}

/-- A procedure found by `find_code` has `psize ≤ S`. -/
theorem findCode_psize {S : Nat} {s : StackSemStateFiniteExact width C F} {dest : Nat ⊕ Nat}
    {regs : HolFiniteMapExact Nat (WordLocW width)} {prog : HolProg width}
    (hcb : CodeBounded S s) (h : StackSemControl.findCode dest regs s.code = some prog) :
    psize prog ≤ S := by
  cases dest with
  | inl d => exact hcb.1 d prog (by simpa [StackSemControl.findCode] using h)
  | inr r =>
    simp only [StackSemControl.findCode] at h
    split at h
    · exact hcb.1 _ prog h
    · simp at h

/-- `JumpLower` case. -/
theorem flattenCorrectJumpLowerB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (r1 r2 dest : Nat) (ih : FlattenIHB S (.jumpLower r1 r2 dest) s1) :
    FlattenPropB S (.jumpLower r1 r2 dest) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, -, inst, -⟩ hcb -
  rw [StackSemEvaluate.evaluate_jumpLower] at ev
  have fetch : asmFetchAux t1.pc t1.code =
      some (.labAsm (.jumpCmp .lower r1 (.reg r2) (.lab dest 0)) 0 [] 0) :=
    fetchSingle rfl (by simpa [flattenHOL, appListAppendList] using inst)
  have err : ∀ {x : StackSemStateFiniteExact width C F},
      (some StackSemResult.error, x) = (r, s2) → False := fun e => by
    simp only [Prod.mk.injEq] at e; exact nerr e.1.symm
  rcases hx : StackSemStateOps.getVar r1 s1 with _ | ⟨x | ⟨_, _⟩⟩ <;>
    rcases hy : StackSemStateOps.getVar r2 s1 with _ | ⟨y | ⟨_, _⟩⟩ <;>
    simp only [hx, hy] at ev <;> try exact (err ev).elim
  have hcmp : wordSemWordCmp .lower (t1.regs r1) (regImm (.reg r2) t1) =
      some (wordCmpHOL .lower x y) := by
    simp [regImm, InstCorrect.regOfLookup rel hx, InstCorrect.regOfLookup rel hy,
      wordSemWordCmp]
  have clk := relClock rel
  by_cases hlow : wordCmpHOL .lower x y = true
  · rw [if_pos hlow] at ev
    rw [hlow] at hcmp
    split at ev
    · exact (err ev).elim
    rename_i prog hfind
    have hlook : sptLookup dest s1.code = some prog := by
      simpa [StackSemControl.findCode] using hfind
    obtain ⟨caP, pc', instP, entry⟩ := relCode rel hlook
    by_cases h0 : s1.clock = 0
    · rw [if_pos h0] at ev
      simp only [Prod.mk.injEq] at ev
      obtain ⟨rfl, rfl⟩ := ev
      refine ⟨0, t1, Nat.zero_le _, fun _ => by simp, rfl, rfl, rfl, rfl, rfl,
        List.prefix_refl _, ?_, ?_⟩
      · simp [StackSemStateOps.emptyEnv, relFfi rel]
      · omega
    · rw [if_neg h0] at ev
      rcases e2 : StackSemEvaluate.evaluate (prog, StackSemStateOps.decClock s1) with ⟨res, s'⟩
      rw [e2] at ev
      simp only at ev
      by_cases hbad : StackSemControl.badFunReturn res = true
      · rw [if_pos hbad] at ev; exact (err ev).elim
      rw [if_neg hbad] at ev
      simp only [Prod.mk.injEq] at ev
      obtain ⟨rfl, rfl⟩ := ev
      obtain ⟨x', rfl⟩ := notBadFunReturnImpSome _ hbad
      have rel' : stateRel (StackSemStateOps.decClock s1)
          { t1 with pc := pc', clock := t1.clock - 1 } := StateRel.stateRelDecClock rel
      have lt : MeasureLt prog (StackSemStateOps.decClock s1) (.jumpLower r1 r2 dest) s1 :=
        .inl (by simp [StackSemStateOps.decClock]; omega)
      have hq := hcb.1 dest prog hlook
      have ph := ih prog _ lt true (some x') s' dest (StackAlloc.nextLabHOL prog 2) [] []
        { t1 with pc := pc', clock := t1.clock - 1 }
        ⟨e2, nerr, rel', caP, instP, by simp [entry]⟩ (codeBounded_decClock hcb) hq
      have step := fun c => (jumpCmpStep (b := true) c fetch hcmp)
      simp only [if_true, entry] at step
      refine (flattenConclComposeSomeB (runEnter (by omega) step) rfl rfl rfl rfl rfl
        (List.prefix_refl _)
        (flattenConclResultB (p' := prog) (t' := true) (l' := 0) (h := ph) rfl
          (resultViewIndep hbad _ _ _ _ _ _))).mono ?_
      exact flatBound_enter (le_refl _) hq (by simp [StackSemStateOps.decClock]; omega)
        (evClock e2) (by decide)
  · have hlow' : wordCmpHOL .lower x y = false := by simpa using hlow
    rw [if_neg hlow] at ev
    rw [hlow'] at hcmp
    simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    have step := fun c => (jumpCmpStep (b := false) c fetch hcmp)
    simp only [Bool.false_eq_true, if_false] at step
    refine ⟨1, { t1 with pc := t1.pc + 1 }, le_flatBound_leaf (by decide), runToPc step, rfl,
      rfl, rfl, rfl, rfl, List.prefix_refl _, ?_, rel⟩
    simp [flattenHOL, appListAppendList, isLabelHOL]

/-- `RawCall` case. -/
theorem flattenCorrectRawCallB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (dest : Nat) (ih : FlattenIHB S (.rawCall dest) s1) : FlattenPropB S (.rawCall dest) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, -, inst, -⟩ hcb -
  rw [StackSemEvaluate.evaluate_rawCall] at ev
  have fetch : asmFetchAux t1.pc t1.code = some (.labAsm (.jump (.lab dest 1)) 0 [] 0) :=
    fetchSingle rfl (by simpa [flattenHOL, appListAppendList] using inst)
  have err : ∀ {x : StackSemStateFiniteExact width C F},
      (some StackSemResult.error, x) = (r, s2) → False := fun e => by
    simp only [Prod.mk.injEq] at e; exact nerr e.1.symm
  have clk := relClock rel
  rcases hlook : sptLookup dest s1.code with _ | prog
  · rw [hlook] at ev; exact (err ev).elim
  rw [hlook] at ev
  simp only at ev
  rcases prog with _ | _ | _ | _ | _ | _ | ⟨p1, body⟩ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ |
    _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _
  all_goals try (simp only [StackSemControl.destSeq] at ev; exact (err ev).elim)
  simp only [StackSemControl.destSeq] at ev
  have hq : psize body ≤ S := by
    have := hcb.1 dest _ hlook
    simp only [psize] at this
    omega
  obtain ⟨caP, pc', instP, entry⟩ := relCode rel hlook
  simp only [StackProps.callArgs] at caP
  rcases h1 : flattenHOL false p1 dest (StackAlloc.nextLabHOL (.seq p1 body) 2) [] [] with
    ⟨xs, nr1, l1⟩
  rcases h2 : flattenHOL false body dest l1 [] [] with ⟨ys, nr2, l2⟩
  have hflat : appListAppend (flattenHOL true (.seq p1 body) dest
      (StackAlloc.nextLabHOL (.seq p1 body) 2) [] []).1 =
      appListAppend xs ++ (.label dest 1 0 :: appListAppend ys) := by
    rw [flattenHOL]; simp [h1, h2, appListAppendAppend, appListAppendList]
  rw [hflat] at instP
  obtain ⟨-, instRest⟩ := codeInstalledAppendImp _ _ _ _ instP
  obtain ⟨loc1, instYs⟩ := labelAt instRest
  set lenXs := ((appListAppend xs).filter (fun x => !isLabelHOL x)).length with hLenXs
  by_cases h0 : s1.clock = 0
  · rw [if_pos h0] at ev
    simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    refine ⟨0, t1, Nat.zero_le _, fun _ => by simp, rfl, rfl, rfl, rfl, rfl, List.prefix_refl _,
      ?_, ?_⟩
    · simp [StackSemStateOps.emptyEnv, relFfi rel]
    · omega
  rw [if_neg h0] at ev
  rcases e2 : StackSemEvaluate.evaluate (body, StackSemStateOps.decClock s1) with ⟨res, s'⟩
  rw [e2] at ev
  simp only at ev
  by_cases hbad : StackSemControl.badFunReturn res = true
  · rw [if_pos hbad] at ev; exact (err ev).elim
  rw [if_neg hbad] at ev
  simp only [Prod.mk.injEq] at ev
  obtain ⟨rfl, rfl⟩ := ev
  obtain ⟨x', rfl⟩ := notBadFunReturnImpSome _ hbad
  have rel' : stateRel (StackSemStateOps.decClock s1)
      { t1 with pc := pc' + lenXs, clock := t1.clock - 1 } := StateRel.stateRelDecClock rel
  have lt : MeasureLt body (StackSemStateOps.decClock s1) (.rawCall dest) s1 :=
    .inl (by simp [StackSemStateOps.decClock]; omega)
  have ph := ih body _ lt false (some x') s' dest l1 [] []
    { t1 with pc := pc' + lenXs, clock := t1.clock - 1 }
    ⟨e2, nerr, rel', caP.2, by rw [h2]; exact instYs, by simp [entry]⟩
    (codeBounded_decClock hcb) hq
  have step := fun c => jumpStep c fetch loc1
  refine (flattenConclComposeSomeB (runEnter (by omega) step) rfl rfl rfl rfl rfl
    (List.prefix_refl _)
    (flattenConclResultB (p' := body) (t' := false) (l' := 0) (h := ph) rfl
      (resultViewIndep hbad _ _ _ _ _ _))).mono ?_
  exact flatBound_enter (le_refl _) hq (by simp [StackSemStateOps.decClock]; omega)
    (evClock e2) (by decide)

/-- `Call` case without a return handler (a tail call). -/
theorem flattenCorrectCallTailB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (dest : Nat ⊕ Nat) (handler : Option (HolProg width × Nat × Nat))
    (ih : FlattenIHB S (.call none dest handler) s1) :
    FlattenPropB S (.call none dest handler) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, -, inst, -⟩ hcb -
  rw [StackSemEvaluate.evaluate_call] at ev
  simp only at ev
  have fetch : asmFetchAux t1.pc t1.code = some (compileJumpHOL dest) :=
    fetchSingle (Prelude.notIsLabelCompileJump dest)
      (by simpa [flattenHOL, appListAppendList] using inst)
  have err : ∀ {x : StackSemStateFiniteExact width C F},
      (some StackSemResult.error, x) = (r, s2) → False := fun e => by
    simp only [Prod.mk.injEq] at e; exact nerr e.1.symm
  have clk := relClock rel
  rcases hfind : StackSemControl.findCode dest s1.regs s1.code with _ | prog
  · rw [hfind] at ev; exact (err ev).elim
  rw [hfind] at ev
  simp only at ev
  rcases handler with _ | hd
  swap; · exact (err ev).elim
  simp only at ev
  have hq := findCode_psize hcb hfind
  obtain ⟨d, pc', -, entry, caP, instP, step⟩ :=
    compileJumpEnter (fun r v h => InstCorrect.regOfLookup rel h) rel fetch hfind
  by_cases h0 : s1.clock = 0
  · rw [if_pos h0] at ev
    simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    refine ⟨0, t1, Nat.zero_le _, fun _ => by simp, rfl, rfl, rfl, rfl, rfl, List.prefix_refl _,
      ?_, ?_⟩
    · simp [StackSemStateOps.emptyEnv, relFfi rel]
    · omega
  rw [if_neg h0, StackSemEvaluateClock.fixClockEvaluate] at ev
  rcases e2 : StackSemEvaluate.evaluate (prog, StackSemStateOps.decClock s1) with ⟨res, s'⟩
  rw [e2] at ev
  simp only at ev
  by_cases hbad : StackSemControl.badFunReturn res = true
  · rw [if_pos hbad] at ev; exact (err ev).elim
  rw [if_neg hbad] at ev
  simp only [Prod.mk.injEq] at ev
  obtain ⟨rfl, rfl⟩ := ev
  obtain ⟨x', rfl⟩ := notBadFunReturnImpSome _ hbad
  have rel' : stateRel (StackSemStateOps.decClock s1)
      { t1 with pc := pc', clock := t1.clock - 1 } := StateRel.stateRelDecClock rel
  have lt : MeasureLt prog (StackSemStateOps.decClock s1) (.call none dest none) s1 :=
    .inl (by simp [StackSemStateOps.decClock]; omega)
  have ph := ih prog _ lt true (some x') s' d (StackAlloc.nextLabHOL prog 2) [] []
    { t1 with pc := pc', clock := t1.clock - 1 }
    ⟨e2, nerr, rel', caP, instP, by simp [entry]⟩ (codeBounded_decClock hcb) hq
  refine (flattenConclComposeSomeB (runEnter (by omega) step) rfl rfl rfl rfl rfl
    (List.prefix_refl _)
    (flattenConclResultB (p' := prog) (t' := true) (l' := 0) (h := ph) rfl
      (resultViewIndep hbad _ _ _ _ _ _))).mono ?_
  exact flatBound_enter (le_refl _) hq (by simp [StackSemStateOps.decClock]; omega)
    (evClock e2) (by decide)

/-- Result propagation through a returning call (bounded). -/
theorem callPropagateB {bnd : Nat} {p p' : HolProg width} {t : Bool} {x : StackSemResult width}
    {s2 : StackSemStateFiniteExact width C F} {d n l l' : Nat} {cs bs : List Nat}
    {t1 tE : Flapjack.Compiler.Backend.LabSem.State width C F}
    (run1 : ∀ ck1, evaluate { t1 with clock := t1.clock + 1 + ck1 } =
      evaluate { tE with clock := tE.clock + ck1 })
    (f1 : tE.lenReg = t1.lenReg) (f2 : tE.ptrReg = t1.ptrReg) (f3 : tE.len2Reg = t1.len2Reg)
    (f4 : tE.ptr2Reg = t1.ptr2Reg) (f5 : tE.linkReg = t1.linkReg) (fcode : tE.code = t1.code)
    (hind : ∀ cs bs cs' bs' : List Nat, ∀ m m', resultView x m cs bs = resultView x m' cs' bs')
    (ph : FlattenConclB bnd p true (some x) s2 d l' [] [] tE) :
    FlattenConclB (1 + bnd) p' t (some x) s2 n l cs bs t1 :=
  flattenConclComposeSomeB run1 f1 f2 f3 f4 f5 (by rw [fcode]; exact List.prefix_refl _)
    (flattenConclResultB (p' := p) (t' := true) (l' := 0) (h := ph) rfl (hind _ _ _ _ _ _))

/-- `Call` case with a return handler. -/
theorem flattenCorrectCallRetB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (rp : HolProg width) (link l1 l2 : Nat) (dest : Nat ⊕ Nat)
    (handler : Option (HolProg width × Nat × Nat))
    (ih : FlattenIHB S (.call (some (rp, link, l1, l2)) dest handler) s1) :
    FlattenPropB S (.call (some (rp, link, l1, l2)) dest handler) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, ca, inst, labs⟩ hcb hsz
  have hszR : psize rp + 1 ≤ psize (.call (some (rp, link, l1, l2)) dest handler) := by
    rcases handler with _ | ⟨hp, hs, hl⟩ <;> simp only [psize] <;> omega
  rw [StackSemEvaluate.evaluate_call] at ev
  simp only at ev
  have err : ∀ {x : StackSemStateFiniteExact width C F},
      (some StackSemResult.error, x) = (r, s2) → False := fun e => by
    simp only [Prod.mk.injEq] at e; exact nerr e.1.symm
  have clk := relClock rel
  unfold StackProps.callArgs at ca
  simp only at ca
  have caR := ca.1
  have caH := ca.2.2
  rcases h1 : flattenHOL false rp n l cs bs with ⟨xs, nr1, m1⟩
  obtain ⟨rest, hflat, hrest⟩ := callRetPrelude (t := t) (link := link) (l1 := l1) (l2 := l2)
    (dest := dest) (handler := handler) h1
  have inst0 := inst
  rw [hflat] at inst
  obtain ⟨fetchA, inst2⟩ := lineAt rfl inst
  obtain ⟨fetchB, inst3⟩ := lineAt (Prelude.notIsLabelCompileJump dest) inst2
  obtain ⟨locL, inst4⟩ := labelAt inst3
  obtain ⟨instXs, instRest⟩ := codeInstalledAppendImp _ _ _ _ inst4
  rcases hfind : StackSemControl.findCode dest (s1.regs.eraseEq link) s1.code with _ | prog
  · rw [hfind] at ev; exact (err ev).elim
  rw [hfind] at ev
  simp only at ev
  have hq := findCode_psize hcb hfind
  by_cases h0 : s1.clock = 0
  · rw [if_pos h0] at ev
    simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    refine ⟨0, t1, Nat.zero_le _, fun _ => by simp, rfl, rfl, rfl, rfl, rfl, List.prefix_refl _,
      ?_, ?_⟩
    · simp [StackSemStateOps.emptyEnv, relFfi rel]
    · omega
  rw [if_neg h0] at ev
  rcases e2 : StackSemEvaluate.evaluate (prog, StackSemStateOps.decClock
    (StackSemStateOps.setVar link (.loc l1 l2) s1)) with ⟨res0, s2'⟩
  have ev' := callRetEval e2 ev
  obtain ⟨d, pc', tE, run1, f1, f2, f3, f4, f5, fcode, fpc, relE, entry, caP, instP⟩ :=
    callEnter rel h0 fetchA fetchB (by simpa using locL) hfind
  have nerr0 : res0 ≠ some .error := by
    rintro rfl; exact err ev'
  have lt : MeasureLt prog (StackSemStateOps.decClock
      (StackSemStateOps.setVar link (.loc l1 l2) s1)) (.call (some (rp, link, l1, l2)) dest
        handler) s1 := .inl (setVarDecClockLt h0)
  have hcbE : CodeBounded S (StackSemStateOps.decClock
      (StackSemStateOps.setVar link (.loc l1 l2) s1)) :=
    codeBounded_decClock (codeBounded_setVar hcb)
  have ph := ih prog _ lt true res0 s2' d (StackAlloc.nextLabHOL prog 2) [] [] tE
    ⟨e2, nerr0, relE, by rw [f1, f2, f3, f4, f5]; exact caP, by rw [fcode, fpc]; exact instP,
      by simp [fcode, entry]⟩ hcbE hq
  have hs2clk : s2'.clock < s1.clock :=
    Nat.lt_of_le_of_lt (StackSemEvaluateClock.evaluateClock _ _ _ _ e2) (setVarDecClockLt h0)
  have hcb2 : CodeBounded S s2' := codeBounded_evaluate e2 hcbE
  have hca : (StackSemStateOps.decClock
      (StackSemStateOps.setVar link (.loc l1 l2) s1)).clock = s1.clock - 1 := rfl
  rw [hca] at ph
  have hab : s2'.clock ≤ s1.clock - 1 := evClock e2
  have ha : s1.clock = (s1.clock - 1) + 1 := by omega
  have prop : ∀ (x : StackSemResult width), (∀ cs bs cs' bs' : List Nat, ∀ m m',
      resultView x m cs bs = resultView x m' cs' bs') →
      FlattenConclB (flatBound S (s1.clock - 1 - s2'.clock) prog)
        prog true (some x) s2' d (StackAlloc.nextLabHOL prog 2) [] [] tE →
      FlattenConclB (flatBound S (s1.clock - s2'.clock)
          (.call (some (rp, link, l1, l2)) dest handler))
        (.call (some (rp, link, l1, l2)) dest handler) t (some x) s2' n l cs bs t1 :=
    fun x hind phx => (callPropagateB run1 f1 f2 f3 f4 f5 fcode hind phx).mono
      (flatBound_enter (le_refl _) hq ha hab (by decide))
  rcases res0 with _ | x
  · exact (err ev').elim
  rcases x with v | v | k | k | v | _ | o | _
  · -- the callee returned
    simp only at ev'
    by_cases hv : v = .loc l1 l2
    swap; · rw [if_pos hv] at ev'; exact (err ev').elim
    rw [if_neg (not_not.mpr hv)] at ev'
    subst hv
    obtain ⟨ck', t3, hck', run3, g1, g2, g3, g4, g5, pre3, hw⟩ :=
      flattenConclVlocB (n1 := l1) (n2 := l2) rfl rfl ph
    rw [fcode] at pre3
    obtain ⟨hpc3, rel3⟩ := hw (t1.pc + 1 + 1) (locToPcIsPrefix _ _ _ _ _ ⟨locL, pre3⟩)
    have rh := ih rp s2' (.inl hs2clk) false r s2 n l cs bs t3
      ⟨ev', nerr, rel3, by rw [g1, g2, g3, g4, g5, f1, f2, f3, f4, f5]; exact caR,
        by rw [← hpc3, h1]; exact codeInstalledIsPrefix _ _ _ _ ⟨instXs, pre3⟩,
        fun k hk => isSomeLocToPcPrefix ⟨labs k hk, pre3⟩⟩ hcb2 (by omega)
    have hbc := evClock ev'
    have run13 := chainRun run1 run3
    rcases handler with _ | ⟨hp, hs, hl⟩
    · rw [hrest rfl] at hflat
      refine (flattenConclComposeB run13 (by rw [g1, f1]) (by rw [g2, f2]) (by rw [g3, f3])
        (by rw [g4, f4]) (by rw [g5, f5]) pre3 ?_ rh).mono ?_
      · rw [hflat, ← hpc3, h1]
        cases dest <;> simp [isLabelHOL, compileJumpHOL] <;> omega
      · exact flatBound_enterThen (e := 1) hck' hq (le_refl _) ha hab hbc (by decide)
          (by omega)
    · obtain ⟨ys, m2, fetchJ, locH, instYs, locEnd, total, -⟩ := callHandlerCode h1 inst0
      cases r with
      | some x =>
        refine (flattenConclComposeSomeB run13 (by rw [g1, f1]) (by rw [g2, f2])
          (by rw [g3, f3]) (by rw [g4, f4]) (by rw [g5, f5]) pre3 rh).mono ?_
        exact flatBound_enterThen (e := 1) hck' hq (le_refl _) ha hab hbc (by decide)
          (by omega)
      | none =>
        obtain ⟨ck2, t4, hck2, run4, k1, k2, k3, k4, k5, pre4, hpc4, rel4⟩ :=
          flattenConclNoneB rh
        rw [h1] at hpc4
        have pre34 := pre3.trans pre4
        have fetchJ4 : asmFetchAux t4.pc t4.code =
            some (.labAsm (.jump (.lab n m2)) 0 [] 0) := by
          rw [hpc4, ← hpc3]; exact asmFetchAuxSomeIsPrefix _ _ _ _ ⟨fetchJ, pre34⟩
        have locEnd4 := locToPcIsPrefix _ _ _ _ _ ⟨locEnd, pre34⟩
        have hb := flatBound_enterThen (e := 2)
          (p := .call (some (rp, link, l1, l2)) dest (some (hp, hs, hl))) hck' hq hck2 ha hab hbc
          (by decide) (by omega)
        refine ⟨(1 + ck') + ck2 + 1, { t4 with pc := t1.pc + 1 + 1 +
            ((appListAppend xs).filter (fun x => !isLabelHOL x)).length + 1 +
            ((appListAppend ys).filter (fun x => !isLabelHOL x)).length }, by omega,
          fun ck1 => ?_,
          by rw [k1, g1, f1], by rw [k2, g2, f2], by rw [k3, g3, f3], by rw [k4, g4, f4],
          by rw [k5, g5, f5], pre34, ?_, rel4⟩
        · rw [show t1.clock + ((1 + ck') + ck2 + 1) + ck1 =
              t1.clock + ((1 + ck') + ck2) + (ck1 + 1) by omega, chainRun run13 run4,
            show t4.clock + (ck1 + 1) = (t4.clock + ck1) + 1 by omega,
            jumpStep (t4.clock + ck1) fetchJ4 locEnd4]
        · simp only [total]; omega
  · -- the callee raised
    rcases handler with _ | ⟨hp, hs, hl⟩
    · simp only at ev'
      simp only [Prod.mk.injEq] at ev'
      obtain ⟨rfl, rfl⟩ := ev'
      exact prop _ (fun _ _ _ _ _ _ => by cases v <;> rfl) ph
    · simp only at ev'
      by_cases hv : v = .loc hs hl
      swap; · rw [if_pos hv] at ev'; exact (err ev').elim
      rw [if_neg (not_not.mpr hv)] at ev'
      subst hv
      have hszH : psize hp + 1 ≤ psize (.call (some (rp, link, l1, l2)) dest
          (some (hp, hs, hl))) := by simp only [psize]; omega
      obtain ⟨ys, m2, -, locH, instYs, -, total, h2⟩ := callHandlerCode h1 inst0
      obtain ⟨ck', t3, hck', run3, g1, g2, g3, g4, g5, pre3, hw⟩ :=
        flattenConclVlocB (n1 := hs) (n2 := hl) rfl rfl ph
      rw [fcode] at pre3
      obtain ⟨hpc3, rel3⟩ := hw _ (locToPcIsPrefix _ _ _ _ _ ⟨locH, pre3⟩)
      simp only at caH
      have lt3 : MeasureLt hp s2' (.call (some (rp, link, l1, l2)) dest (some (hp, hs, hl)))
          s1 := .inl hs2clk
      have rh := ih hp s2' lt3 false r s2 n m1 cs bs t3
        ⟨ev', nerr, rel3, by rw [g1, g2, g3, g4, g5, f1, f2, f3, f4, f5]; exact caH,
          by rw [← hpc3, h2]; exact codeInstalledIsPrefix _ _ _ _ ⟨instYs, pre3⟩,
          fun k hk => isSomeLocToPcPrefix ⟨labs k hk, pre3⟩⟩ hcb2 (by omega)
      have hbc := evClock ev'
      refine (flattenConclComposeB (chainRun run1 run3) (by rw [g1, f1]) (by rw [g2, f2])
        (by rw [g3, f3]) (by rw [g4, f4]) (by rw [g5, f5]) pre3 ?_ rh).mono ?_
      · rw [total, ← hpc3, h2]
        omega
      · exact flatBound_enterThen (e := 1) hck' hq (le_refl _) ha hab hbc (by decide)
          (by omega)
  · exact (err ev').elim
  · exact (err ev').elim
  all_goals
    simp only [Prod.mk.injEq] at ev'
    obtain ⟨rfl, rfl⟩ := ev'
    exact prop _ (fun _ _ _ _ _ _ => rfl) ph

end

end InitECandidate.Solver.Compiler.Flatten
