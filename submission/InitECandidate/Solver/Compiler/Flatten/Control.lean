import InitECandidate.Solver.Compiler.Flatten.Leaves

/-!
# Bounded `flatten_correct`: `Seq`, `If`, `Loop`

Bounded copies of Flapjack's `StackToLab/Proofs/FlattenCorrect/{Control,If,Loop}.lean`.
Witnesses: `Seq` sums its parts; `If` adds at most `2` (the conditional jump and the join
jump) to its branch; a `Loop` iteration adds nothing (its back jump is paid by the loop's
StackSem tick), and the iteration's body cost `2 * psize body ≤ 2 * S` is paid by that tick.
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

/-- A loop iteration followed by a re-entry: the body cost is paid by the loop's tick. -/
theorem flatBound_loop {S a b b' c ck1 ck2 : Nat} {body p : HolProg width}
    (h1 : ck1 ≤ flatBound S (a - b) body) (h2 : ck2 ≤ flatBound S (b' - c) p)
    (hb : b = b' + 1) (hab : b ≤ a) (hbc : c ≤ b') (hsz : psize body + 1 ≤ psize p)
    (hpS : psize p ≤ S) : ck1 + ck2 ≤ flatBound S (a - c) p := by
  unfold flatBound at *
  rw [show a - c = (a - b) + 1 + (b' - c) by omega, Nat.mul_add, Nat.mul_add]
  omega

/-- `Seq` case. -/
theorem flattenCorrectSeqB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (c1 c2 : HolProg width) (ih : FlattenIHB S (.seq c1 c2) s1) :
    FlattenPropB S (.seq c1 c2) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, ca, inst, labs⟩ hcb hsz
  have hsz1 : psize c1 ≤ S := by simp only [psize] at hsz; omega
  have hsz2 : psize c2 ≤ S := by simp only [psize] at hsz; omega
  rw [StackSemEvaluate.evaluate_seq, StackSemEvaluateClock.fixClockEvaluate] at ev
  simp only [StackProps.callArgs] at ca
  rcases h1 : flattenHOL false c1 n l cs bs with ⟨xs, nr1, l1⟩
  rcases h2 : flattenHOL false c2 n l1 cs bs with ⟨ys, nr2, l2⟩
  have hflat : appListAppend (flattenHOL t (.seq c1 c2) n l cs bs).1 =
      appListAppend xs ++ ((if t then [.label n 1 0] else []) ++ appListAppend ys) := by
    rw [flattenHOL]
    cases t <;> simp [h1, h2, appListAppendAppend, appListAppendList]
  rw [hflat] at inst
  obtain ⟨instXs, instRest⟩ := codeInstalledAppendImp _ _ _ _ inst
  have instYs : codeInstalled (t1.pc + ((appListAppend xs).filter
      (fun x => !isLabelHOL x)).length) (appListAppend ys) t1.code := by
    cases t
    · simpa using instRest
    · simp only [if_true, List.singleton_append, codeInstalled_cons, isLabelHOL] at instRest
      exact instRest.2
  have lenFlat : ((appListAppend (flattenHOL t (.seq c1 c2) n l cs bs).1).filter
      (fun x => !isLabelHOL x)).length =
      ((appListAppend xs).filter (fun x => !isLabelHOL x)).length +
        ((appListAppend ys).filter (fun x => !isLabelHOL x)).length := by
    rw [hflat]; cases t <;> simp [List.filter_append, isLabelHOL]
  rcases e1 : StackSemEvaluate.evaluate (c1, s1) with ⟨r1, s1'⟩
  rw [e1] at ev
  have lt1 : MeasureLt c1 s1 (.seq c1 c2) s1 :=
    .inr ⟨rfl, StackSemMeasure.seq_first_size_lt c1 c2⟩
  cases r1 with
  | some x =>
    simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    have := ih c1 s1 lt1 false (some x) s1' n l cs bs t1
      ⟨e1, nerr, rel, ca.1, by rw [h1]; exact instXs, labs⟩ hcb hsz1
    refine (flattenConclSomeB this).mono ?_
    unfold flatBound; simp only [psize]; omega
  | none =>
    simp only at ev
    have c1h := ih c1 s1 lt1 false none s1' n l cs bs t1
      ⟨e1, by simp, rel, ca.1, by rw [h1]; exact instXs, labs⟩ hcb hsz1
    obtain ⟨ck, t2, hck, run, f1, f2, f3, f4, f5, pre, hpc, rel2⟩ := flattenConclNoneB c1h
    rw [h1] at hpc
    have lt2 : MeasureLt c2 s1' (.seq c1 c2) s1 :=
      measureLtOfClockLe (StackSemEvaluateClock.evaluateClock _ _ _ _ e1)
        (StackSemMeasure.seq_second_size_lt c1 c2)
    have c2h := ih c2 s1' lt2 false r s2 n l1 cs bs t2
      (flattenHypsMid ev nerr rel2 ca.2 f1 f2 f3 f4 f5 pre
        (by rw [h2, hpc]; exact instYs) labs) (codeBounded_evaluate e1 hcb) hsz2
    refine (flattenConclComposeB run f1 f2 f3 f4 f5 pre ?_ c2h).mono ?_
    · simp only [lenFlat, hpc, h2]
      omega
    · have := flatBound_two (e := 0) (p1 := c1) (p2 := c2) (p := .seq c1 c2) hck (le_refl _)
        (evClock e1) (evClock ev) (by simp only [psize]; omega)
      omega

/-- `If` case. -/
theorem flattenCorrectIfB (S : Nat) (s1 : StackSemStateFiniteExact width C F) (cmp : HolCmp)
    (reg : Nat) (ri : HolRegImm width) (c1 c2 : HolProg width)
    (ih : FlattenIHB S (.ite cmp reg ri c1 c2) s1) :
    FlattenPropB S (.ite cmp reg ri c1 c2) s1 := by
  rintro t res s2 n l cs bs t1 ⟨ev, nerr, rel, ca, inst, labs⟩ hcb hsz
  have hsz1 : psize c1 ≤ S := by simp only [psize] at hsz; omega
  have hsz2 : psize c2 ≤ S := by simp only [psize] at hsz; omega
  have hp1 : 2 + 2 * psize c1 ≤ 2 * psize (.ite cmp reg ri c1 c2 : HolProg width) := by
    simp only [psize]; omega
  have hp2 : 2 + 2 * psize c2 ≤ 2 * psize (.ite cmp reg ri c1 c2 : HolProg width) := by
    simp only [psize]; omega
  rw [StackSemEvaluate.evaluate_ite] at ev
  simp only [StackProps.callArgs] at ca
  have err : ∀ {x : StackSemStateFiniteExact width C F},
      (some StackSemResult.error, x) = (res, s2) → False := fun e => by
    simp only [Prod.mk.injEq] at e; exact nerr e.1.symm
  split at ev
  swap; · exact (err ev).elim
  rename_i x y hx hy
  have rx : t1.regs reg = x := InstCorrect.regOfLookup rel hx
  have ry : regImm ri t1 = y := StateRel.stateRelGetVarImm ⟨rel, hy⟩
  rcases hc : wordSemWordCmp cmp x y with _ | b
  · rw [hc] at ev; exact (err ev).elim
  have hcmp : wordSemWordCmp cmp (t1.regs reg) (regImm ri t1) = some b := by rw [rx, ry, hc]
  have hneg : wordSemWordCmp (negateHOL cmp) (t1.regs reg) (regImm ri t1) = some (!b) := by
    rw [Prelude.wordCmpNegate, hcmp]; rfl
  have lt1 : MeasureLt c1 s1 (.ite cmp reg ri c1 c2) s1 :=
    .inr ⟨rfl, StackSemMeasure.if_first_size_lt cmp reg ri c1 c2⟩
  have lt2 : MeasureLt c2 s1 (.ite cmp reg ri c1 c2) s1 :=
    .inr ⟨rfl, StackSemMeasure.if_second_size_lt cmp reg ri c1 c2⟩
  have evb : StackSemEvaluate.evaluate (if b then c1 else c2, s1) = (res, s2) := by
    rw [hc] at ev; cases b <;> exact ev
  rcases h1 : flattenHOL false c1 n l cs bs with ⟨xs, nr1, l1⟩
  rcases h2 : flattenHOL false c2 n l1 cs bs with ⟨ys, nr2, l2⟩
  have unfold := (show flattenHOL t (.ite cmp reg ri c1 c2) n l cs bs =
      flattenHOL t (.ite cmp reg ri c1 c2) n l cs bs from rfl)
  conv at unfold => rhs; rw [flattenHOL]
  simp only [h1, h2] at unfold
  have nolab : ∀ (a : AsmWithLab HolCmp (HolRegImm width) Basis.Pure.MlString.MlString),
      isLabelHOL (Line.labAsm a 0 [] 0 : LabLineHOL width) = false := fun _ => rfl
  have hlenOf : ∀ (L : List (LabLineHOL width)),
      appListAppend (flattenHOL t (.ite cmp reg ri c1 c2) n l cs bs).1 = L →
      ((appListAppend (flattenHOL t (.ite cmp reg ri c1 c2) n l cs bs).1).filter
        (fun x => !isLabelHOL x)).length = (L.filter (fun x => !isLabelHOL x)).length :=
    fun L h => by rw [h]
  split_ifs at unfold with k1 k2 k3 k4 k5
  · -- both branches `Skip`
    simp only [Bool.and_eq_true] at k1
    rw [isSkipEq k1.1, isSkipEq k1.2] at evb
    have : (if b then (StackLang.Prog.skip : HolProg width) else .skip) = .skip := by
      cases b <;> rfl
    rw [this, StackSemEvaluate.evaluate_skip] at evb
    simp only [Prod.mk.injEq] at evb
    obtain ⟨rfl, rfl⟩ := evb
    exact flattenConclStayB rel (by rw [unfold]; simp [appListAppendList])
  · -- then-branch `Skip`
    have hflat : appListAppend (flattenHOL t (.ite cmp reg ri c1 c2) n l cs bs).1 =
        .labAsm (.jumpCmp cmp reg ri (.lab n l2)) 0 [] 0 :: (appListAppend ys ++
          [.label n l2 0]) := by
      rw [unfold]; simp [appListAppendAppend, appListAppendList]
    rw [hflat] at inst
    obtain ⟨fetch0, instRest⟩ := lineAt (nolab _) inst
    obtain ⟨instYs, instLab⟩ := codeInstalledAppendImp _ _ _ _ instRest
    obtain ⟨locL, -⟩ := labelAt instLab
    cases b
    · -- condition false: run the else-branch after the fall-through
      have step := fun c => (jumpCmpStep (b := false) c fetch0 hcmp)
      simp only [Bool.false_eq_true, if_false] at step
      refine (flattenConclComposeB (runToPc step) rfl rfl rfl rfl rfl (List.prefix_refl _) ?_
        (ih c2 s1 lt2 false res s2 n l1 cs bs { t1 with pc := t1.pc + 1 }
          ⟨evb, nerr, rel, ca.2, by rw [h2]; exact instYs, labs⟩ hcb hsz2)).mono ?_
      · rw [hlenOf _ hflat, h2]
        simp [List.filter_append, isLabelHOL]
        omega
      · unfold flatBound; simp only [psize]; omega
    · -- condition true: jump over the else-branch
      simp only [if_true] at evb
      rw [isSkipEq k2, StackSemEvaluate.evaluate_skip] at evb
      simp only [Prod.mk.injEq] at evb
      obtain ⟨rfl, rfl⟩ := evb
      have step := fun c => (jumpCmpStep (b := true) c fetch0 hcmp)
      simp only [if_true, locL] at step
      refine ⟨1, { t1 with pc := t1.pc + 1 + ((appListAppend ys).filter
          (fun x => !isLabelHOL x)).length }, le_flatBound_leaf (by decide), runToPc step, rfl,
        rfl, rfl, rfl, rfl, List.prefix_refl _, ?_, rel⟩
      rw [hlenOf _ hflat]
      simp [List.filter_append, isLabelHOL]
      omega
  · -- else-branch `Skip`
    have hflat : appListAppend (flattenHOL t (.ite cmp reg ri c1 c2) n l cs bs).1 =
        .labAsm (.jumpCmp (negateHOL cmp) reg ri (.lab n l2)) 0 [] 0 :: (appListAppend xs ++
          [.label n l2 0]) := by
      rw [unfold]; simp [appListAppendAppend, appListAppendList]
    rw [hflat] at inst
    obtain ⟨fetch0, instRest⟩ := lineAt (nolab _) inst
    obtain ⟨instXs, instLab⟩ := codeInstalledAppendImp _ _ _ _ instRest
    obtain ⟨locL, -⟩ := labelAt instLab
    cases b
    · -- condition false: the negated test jumps over the then-branch
      simp only [Bool.false_eq_true, if_false] at evb
      rw [isSkipEq k3, StackSemEvaluate.evaluate_skip] at evb
      simp only [Prod.mk.injEq] at evb
      obtain ⟨rfl, rfl⟩ := evb
      have step := fun c => (jumpCmpStep (b := true) c fetch0 hneg)
      simp only [if_true, locL] at step
      refine ⟨1, { t1 with pc := t1.pc + 1 + ((appListAppend xs).filter
          (fun x => !isLabelHOL x)).length }, le_flatBound_leaf (by decide), runToPc step, rfl,
        rfl, rfl, rfl, rfl, List.prefix_refl _, ?_, rel⟩
      rw [hlenOf _ hflat]
      simp [List.filter_append, isLabelHOL]
      omega
    · -- condition true: fall through into the then-branch
      have step := fun c => (jumpCmpStep (b := false) c fetch0 hneg)
      simp only [Bool.false_eq_true, if_false] at step
      refine (flattenConclComposeB (runToPc step) rfl rfl rfl rfl rfl (List.prefix_refl _) ?_
        (ih c1 s1 lt1 false res s2 n l cs bs { t1 with pc := t1.pc + 1 }
          ⟨evb, nerr, rel, ca.1, by rw [h1]; exact instXs, labs⟩ hcb hsz1)).mono ?_
      · rw [hlenOf _ hflat, h1]
        simp [List.filter_append, isLabelHOL]
        omega
      · unfold flatBound; simp only [psize]; omega
  · -- then-branch never returns: placed first
    have hflat : appListAppend (flattenHOL t (.ite cmp reg ri c1 c2) n l cs bs).1 =
        .labAsm (.jumpCmp (negateHOL cmp) reg ri (.lab n l2)) 0 [] 0 :: (appListAppend xs ++
          (.label n l2 0 :: appListAppend ys)) := by
      rw [unfold]; simp [appListAppendAppend, appListAppendList]
    rw [hflat] at inst
    obtain ⟨fetch0, instRest⟩ := lineAt (nolab _) inst
    obtain ⟨instXs, instLab⟩ := codeInstalledAppendImp _ _ _ _ instRest
    obtain ⟨locL, instYs⟩ := labelAt instLab
    cases b
    · -- condition false: jump to the else-branch
      have step := fun c => (jumpCmpStep (b := true) c fetch0 hneg)
      simp only [if_true, locL] at step
      refine (flattenConclComposeB (runToPc step) rfl rfl rfl rfl rfl (List.prefix_refl _) ?_
        (ih c2 s1 lt2 false res s2 n l1 cs bs _
          ⟨evb, nerr, rel, ca.2, by rw [h2]; exact instYs, labs⟩ hcb hsz2)).mono ?_
      · rw [hlenOf _ hflat, h2]
        simp [List.filter_append, isLabelHOL]
        omega
      · unfold flatBound; simp only [psize]; omega
    · -- condition true: the then-branch produces a result
      have some_ := FlattenHelpers.noRetCorrect false c1 n l cs bs (by rw [h1]; exact k4) s1
      simp only [if_true] at evb
      rw [evb] at some_
      obtain ⟨x, rfl⟩ := Option.isSome_iff_exists.mp some_
      have step := fun c => (jumpCmpStep (b := false) c fetch0 hneg)
      simp only [Bool.false_eq_true, if_false] at step
      refine (flattenConclComposeSomeB (runToPc step) rfl rfl rfl rfl rfl (List.prefix_refl _)
        (ih c1 s1 lt1 false (some x) s2 n l cs bs { t1 with pc := t1.pc + 1 }
          ⟨evb, nerr, rel, ca.1, by rw [h1]; exact instXs, labs⟩ hcb hsz1)).mono ?_
      unfold flatBound; simp only [psize]; omega
  · -- else-branch never returns: placed first
    have hflat : appListAppend (flattenHOL t (.ite cmp reg ri c1 c2) n l cs bs).1 =
        .labAsm (.jumpCmp cmp reg ri (.lab n l2)) 0 [] 0 :: (appListAppend ys ++
          (.label n l2 0 :: appListAppend xs)) := by
      rw [unfold]; simp [appListAppendAppend, appListAppendList]
    rw [hflat] at inst
    obtain ⟨fetch0, instRest⟩ := lineAt (nolab _) inst
    obtain ⟨instYs, instLab⟩ := codeInstalledAppendImp _ _ _ _ instRest
    obtain ⟨locL, instXs⟩ := labelAt instLab
    cases b
    · -- condition false: the else-branch produces a result
      have some_ := FlattenHelpers.noRetCorrect false c2 n l1 cs bs (by rw [h2]; exact k5) s1
      simp only [Bool.false_eq_true, if_false] at evb
      rw [evb] at some_
      obtain ⟨x, rfl⟩ := Option.isSome_iff_exists.mp some_
      have step := fun c => (jumpCmpStep (b := false) c fetch0 hcmp)
      simp only [Bool.false_eq_true, if_false] at step
      refine (flattenConclComposeSomeB (runToPc step) rfl rfl rfl rfl rfl (List.prefix_refl _)
        (ih c2 s1 lt2 false (some x) s2 n l1 cs bs { t1 with pc := t1.pc + 1 }
          ⟨evb, nerr, rel, ca.2, by rw [h2]; exact instYs, labs⟩ hcb hsz2)).mono ?_
      unfold flatBound; simp only [psize]; omega
    · -- condition true: jump to the then-branch
      have step := fun c => (jumpCmpStep (b := true) c fetch0 hcmp)
      simp only [if_true, locL] at step
      refine (flattenConclComposeB (runToPc step) rfl rfl rfl rfl rfl (List.prefix_refl _) ?_
        (ih c1 s1 lt1 false res s2 n l cs bs _
          ⟨evb, nerr, rel, ca.1, by rw [h1]; exact instXs, labs⟩ hcb hsz1)).mono ?_
      · rw [hlenOf _ hflat, h1]
        simp [List.filter_append, isLabelHOL]
        omega
      · unfold flatBound; simp only [psize]; omega
  · -- general shape with a join jump
    have hflat : appListAppend (flattenHOL t (.ite cmp reg ri c1 c2) n l cs bs).1 =
        .labAsm (.jumpCmp cmp reg ri (.lab n l2)) 0 [] 0 :: (appListAppend ys ++
          (.labAsm (.jump (.lab n (l2 + 1))) 0 [] 0 :: .label n l2 0 ::
            (appListAppend xs ++ [.label n (l2 + 1) 0]))) := by
      rw [unfold]; simp [appListAppendAppend, appListAppendList]
    rw [hflat] at inst
    obtain ⟨fetch0, instRest⟩ := lineAt (nolab _) inst
    obtain ⟨instYs, instRest2⟩ := codeInstalledAppendImp _ _ _ _ instRest
    obtain ⟨fetchJ, instRest3⟩ := lineAt (nolab _) instRest2
    obtain ⟨locL, instRest4⟩ := labelAt instRest3
    obtain ⟨instXs, instLab2⟩ := codeInstalledAppendImp _ _ _ _ instRest4
    obtain ⟨locL2, -⟩ := labelAt instLab2
    have total : ((appListAppend (flattenHOL t (.ite cmp reg ri c1 c2) n l cs bs).1).filter
        (fun x => !isLabelHOL x)).length =
        ((appListAppend ys).filter (fun x => !isLabelHOL x)).length +
          ((appListAppend xs).filter (fun x => !isLabelHOL x)).length + 2 := by
      rw [hflat]; simp [List.filter_append, isLabelHOL]; omega
    cases b
    · -- condition false: the else-branch, then the join jump
      simp only [Bool.false_eq_true, if_false] at evb
      have step := fun c => (jumpCmpStep (b := false) c fetch0 hcmp)
      simp only [Bool.false_eq_true, if_false] at step
      have c2h := ih c2 s1 lt2 false res s2 n l1 cs bs { t1 with pc := t1.pc + 1 }
        ⟨evb, nerr, rel, ca.2, by rw [h2]; exact instYs, labs⟩ hcb hsz2
      cases res with
      | some x =>
        refine (flattenConclComposeSomeB (runToPc step) rfl rfl rfl rfl rfl
          (List.prefix_refl _) c2h).mono ?_
        unfold flatBound; simp only [psize]; omega
      | none =>
        obtain ⟨ck2, t3, hck2, run2, f1, f2, f3, f4, f5, pre2, hpc2, rel3⟩ :=
          flattenConclNoneB c2h
        rw [h2] at hpc2
        simp only at hpc2 f1 f2 f3 f4 f5 pre2
        have fetchJ3 : asmFetchAux t3.pc t3.code =
            some (.labAsm (.jump (.lab n (l2 + 1))) 0 [] 0) := by
          rw [hpc2]; exact asmFetchAuxSomeIsPrefix _ _ _ _ ⟨fetchJ, pre2⟩
        have locL23 := locToPcIsPrefix _ _ _ _ _ ⟨locL2, pre2⟩
        have hb := flatBound_one hck2 hp2
        refine ⟨1 + ck2 + 1, { t3 with pc := t1.pc + 1 +
            ((appListAppend ys).filter (fun x => !isLabelHOL x)).length + 1 +
            ((appListAppend xs).filter (fun x => !isLabelHOL x)).length }, by omega,
          fun ck1 => ?_, f1, f2, f3, f4, f5, pre2, ?_, rel3⟩
        · rw [show t1.clock + (1 + ck2 + 1) + ck1 = t1.clock + 1 + (ck2 + (ck1 + 1)) by omega,
            runToPc step,
            show t1.clock + (ck2 + (ck1 + 1)) = t1.clock + ck2 + (ck1 + 1) by omega,
            run2, show t3.clock + (ck1 + 1) = (t3.clock + ck1) + 1 by omega,
            jumpStep (t3.clock + ck1) fetchJ3 locL23]
        · simp only [total]; omega
    · -- condition true: jump to the then-branch
      simp only [if_true] at evb
      have step := fun c => (jumpCmpStep (b := true) c fetch0 hcmp)
      simp only [if_true, locL] at step
      refine (flattenConclComposeB (runToPc step) rfl rfl rfl rfl rfl (List.prefix_refl _) ?_
        (ih c1 s1 lt1 false res s2 n l cs bs _
          ⟨evb, nerr, rel, ca.1, by rw [h1]; exact instXs, labs⟩ hcb hsz1)).mono ?_
      · rw [total, h1]
        simp
        omega
      · unfold flatBound; simp only [psize]; omega

/-- The body's continuation reaches the back jump with the state relation (bounded). -/
theorem loopReentryB {bnd : Nat} {body : HolProg width}
    {s1' : StackSemStateFiniteExact width C F}
    {res : Option (StackSemResult width)} {n l l1 : Nat} {cs bs : List Nat}
    {t1 : Flapjack.Compiler.Backend.LabSem.State width C F}
    {xs : AppList (LabLineHOL width)} {nr : Bool}
    (h1 : flattenHOL false body n (l + 2) (l :: cs) ((l + 1) :: bs) = (xs, nr, l1))
    (fetchJ : asmFetchAux (t1.pc + ((appListAppend xs).filter (fun x => !isLabelHOL x)).length)
      t1.code = some (.labAsm (.jump (.lab n l)) 0 [] 0))
    (hc : StackSemControl.contLoop res = true)
    (bh : FlattenConclB bnd body false res s1' n (l + 2) (l :: cs) ((l + 1) :: bs) t1) :
    ∃ (ck : Nat) (t2 : Flapjack.Compiler.Backend.LabSem.State width C F), ck ≤ bnd ∧
      (∀ ck1, evaluate { t1 with clock := t1.clock + ck + ck1 } =
        evaluate { t2 with clock := t2.clock + ck1 }) ∧
      t2.lenReg = t1.lenReg ∧ t2.ptrReg = t1.ptrReg ∧ t2.len2Reg = t1.len2Reg ∧
      t2.ptr2Reg = t1.ptr2Reg ∧ t2.linkReg = t1.linkReg ∧ t1.code <+: t2.code ∧
      stateRel s1' t2 ∧
      asmFetchAux t2.pc t2.code = some (.labAsm (.jump (.lab n l)) 0 [] 0) := by
  cases res with
  | none =>
    obtain ⟨ck, t2, hck, run, f1, f2, f3, f4, f5, pre, hpc, rel2⟩ := flattenConclNoneB bh
    rw [h1] at hpc
    exact ⟨ck, t2, hck, run, f1, f2, f3, f4, f5, pre, rel2, by
      rw [hpc]; exact asmFetchAuxSomeIsPrefix _ _ _ _ ⟨fetchJ, pre⟩⟩
  | some x =>
    rcases x with _ | _ | _ | k | _ | _ | _ | _
    case «continue» =>
      simp only [StackSemControl.contLoop, decide_eq_true_eq] at hc
      subst hc
      obtain ⟨ck, t2, hck, h⟩ := bh
      simp only [haltView, Option.map_some, resultView, findLabHOL,
        List.getElem?_cons_zero, Option.getD_some] at h
      obtain ⟨run, f1, f2, f3, f4, f5, pre, rel2, inst2⟩ := h
      exact ⟨ck, t2, hck, run, f1, f2, f3, f4, f5, pre, rel2, fetchSingle rfl inst2⟩
    all_goals simp [StackSemControl.contLoop] at hc

/-- `Loop` case. -/
theorem flattenCorrectLoopB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (body : HolProg width) (ih : FlattenIHB S (.loop body) s1) :
    FlattenPropB S (.loop body) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, ca, inst, labs⟩ hcb hsz
  have hszb : psize body ≤ S := by simp only [psize] at hsz; omega
  have hpb : 0 + 2 * psize body ≤ 2 * psize (.loop body : HolProg width) := by
    simp only [psize]; omega
  rw [StackSemEvaluate.evaluate_loop, StackSemEvaluateClock.fixClockEvaluate] at ev
  simp only [StackProps.callArgs] at ca
  have tf : flattenHOL t (.loop body) n l cs bs = flattenHOL false (.loop body) n l cs bs := by
    cases t
    · rfl
    · exact flattenTF (by simp [isSeqHOL])
  rcases h1 : flattenHOL false body n (l + 2) (l :: cs) ((l + 1) :: bs) with ⟨xs, nr1, l1⟩
  have hflat : appListAppend (flattenHOL t (.loop body) n l cs bs).1 =
      .label n l 0 :: (appListAppend xs ++
        [.labAsm (.jump (.lab n l)) 0 [] 0, .label n (l + 1) 0]) := by
    rw [tf, flattenHOL]; simp [h1, appListAppendAppend, appListAppendList]
  have total : ((appListAppend (flattenHOL t (.loop body) n l cs bs).1).filter
      (fun x => !isLabelHOL x)).length =
      ((appListAppend xs).filter (fun x => !isLabelHOL x)).length + 1 := by
    rw [hflat]; simp [List.filter_append, isLabelHOL]
  have inst0 := inst
  rw [hflat] at inst
  obtain ⟨locL, inst1⟩ := labelAt inst
  obtain ⟨instXs, instRest⟩ := codeInstalledAppendImp _ _ _ _ inst1
  obtain ⟨fetchJ, instRest2⟩ := lineAt rfl instRest
  obtain ⟨locL1, -⟩ := labelAt instRest2
  rcases e1 : StackSemEvaluate.evaluate (body, s1) with ⟨res, s1'⟩
  rw [e1] at ev
  simp only at ev
  have lt1 : MeasureLt body s1 (.loop body) s1 :=
    .inr ⟨rfl, StackSemMeasure.loop_body_size_lt body⟩
  have labs' : ∀ k ∈ (l :: cs) ++ ((l + 1) :: bs) ++ [0], (locToPc n k t1.code).isSome := by
    intro k hk
    by_cases e : k = l
    · subst e; simp [locL]
    by_cases e' : k = l + 1
    · subst e'; simp [locL1]
    apply labs k
    simp only [List.cons_append, List.mem_cons, List.mem_append] at hk ⊢
    tauto
  have nerrBody : res ≠ some .error := by
    rintro rfl
    simp [StackSemControl.contLoop, StackSemControl.exitLoop] at ev
    exact nerr ev.1.symm
  have bh := ih body s1 lt1 false res s1' n (l + 2) (l :: cs) ((l + 1) :: bs) t1
    ⟨e1, nerrBody, rel, ca, by rw [h1]; exact instXs, labs'⟩ hcb hszb
  have bnd1 := flatBound_one (le_refl (flatBound S (s1.clock - s1'.clock) body)) hpb
  rw [Nat.zero_add] at bnd1
  by_cases hc : StackSemControl.contLoop res = true
  · rw [if_pos hc] at ev
    obtain ⟨ck, t2, hck, run, f1, f2, f3, f4, f5, pre, rel2, fetch2⟩ :=
      loopReentryB h1 fetchJ hc bh
    split_ifs at ev with hz
    · simp only [Prod.mk.injEq] at ev
      obtain ⟨rfl, rfl⟩ := ev
      refine ⟨ck, t2, ?_, run, f1, f2, f3, f4, f5, pre, ?_, ?_⟩
      · simp only [StackSemStateOps.emptyEnv]; omega
      · simp [StackSemStateOps.emptyEnv, relFfi rel2]
      · rw [relClock rel2]; exact hz
    · have clk2 : t2.clock ≠ 0 := by rw [relClock rel2]; exact hz
      have lt2 : MeasureLt (.loop body) (StackSemStateOps.decClock s1') (.loop body) s1 := by
        left
        have := StackSemEvaluateClock.evaluateClock _ _ _ _ e1
        simp only [StackSemStateOps.decClock]
        omega
      have locL2 := locToPcIsPrefix _ _ _ _ _ ⟨locL, pre⟩
      have rel3 : stateRel (StackSemStateOps.decClock s1')
          { t2 with pc := t1.pc, clock := t2.clock - 1 } := StateRel.stateRelDecClock rel2
      have lh := ih (.loop body) (StackSemStateOps.decClock s1') lt2 t r s2 n l cs bs
        { t2 with pc := t1.pc, clock := t2.clock - 1 }
        ⟨ev, nerr, rel3, by rw [f1, f2, f3, f4, f5]; exact ca,
          codeInstalledIsPrefix _ _ _ _ ⟨inst0, pre⟩,
          fun k hk => isSomeLocToPcPrefix ⟨labs k hk, pre⟩⟩
        (codeBounded_decClock (codeBounded_evaluate e1 hcb)) hsz
      refine (flattenConclComposeB (ck := ck)
        (t2 := { t2 with pc := t1.pc, clock := t2.clock - 1 })
        (fun ck1 => ?_) f1 f2 f3 f4 f5 pre rfl lh).mono ?_
      · rw [run, show t2.clock + ck1 = (t2.clock - 1 + ck1) + 1 by omega,
          jumpStep (t2.clock - 1 + ck1) fetch2 locL2]
      · have hdc : (StackSemStateOps.decClock s1').clock = s1'.clock - 1 := rfl
        have := evClock ev
        rw [hdc] at this ⊢
        exact flatBound_loop (b := s1'.clock) hck (le_refl _) (by omega) (evClock e1) this
          (by simp only [psize]; omega) hsz
  · rw [if_neg hc] at ev
    simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    rcases res with _ | x
    · simp [StackSemControl.contLoop] at hc
    refine FlattenConclB.mono ?_ bnd1
    rcases x with v | v | k | k | v | _ | o | _
    · exact flattenConclResultB (h := bh) rfl (by cases v <;> rfl)
    · exact flattenConclResultB (h := bh) rfl (by cases v <;> rfl)
    · -- `Break k`
      rcases k with _ | k
      · -- `Break 0` leaves the loop after the break label
        simp only [StackSemControl.exitLoop, if_true]
        obtain ⟨ck, t2, hck, h⟩ := bh
        simp only [haltView, Option.map_some, resultView, findLabHOL,
          List.getElem?_cons_zero, Option.getD_some] at h
        obtain ⟨run, f1, f2, f3, f4, f5, pre, -, hw⟩ := h
        obtain ⟨hpc, rel2⟩ := hw _ (locToPcIsPrefix _ _ _ _ _ ⟨locL1, pre⟩)
        refine ⟨ck, t2, hck, run, f1, f2, f3, f4, f5, pre, ?_, rel2⟩
        rw [← hpc, total]
        omega
      · simp only [StackSemControl.exitLoop, Nat.add_one_ne_zero, if_false, Nat.add_sub_cancel]
        refine flattenConclResultB (h := bh) (by simp [haltView]) ?_
        simp [resultView, findLabHOL]
    · -- `Continue k`, `k ≠ 0`
      rcases k with _ | k
      · simp [StackSemControl.contLoop] at hc
      · simp only [StackSemControl.exitLoop, Nat.add_sub_cancel]
        refine flattenConclResultB (h := bh) (by simp [haltView]) ?_
        simp [resultView, findLabHOL]
    all_goals exact flattenConclResultB (h := bh) rfl (by simp [resultView])

end

end InitECandidate.Solver.Compiler.Flatten
