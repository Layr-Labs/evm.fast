import InitECandidate.Solver.Compiler.CrepToLoop.Basic

/-!
# Straight-line loop code: a target-only clock bound

`straight p`: the loop program `p` contains no `Loop` and no `Call`. `slc p` counts its
clock-ticking nodes (`If`, which ticks in its final `cut_res`, and `Tick`).
`clock_le_straight`: a run of a straight program consumes at most `slc p` clock, whatever its
result. The crep → loop compiler emits straight code for every expression
(`compileExp_straight`: at most `esize e` ticks) and for every leaf statement
(`compile_leaf_straight`: at most `csize p` ticks).
-/

namespace InitECandidate.Solver.Compiler.CrepToLoop

open Flapjack Flapjack.LoopSemStateFiniteExact

set_option autoImplicit false

section Straight
variable {width : Nat} [NeZero width] {F : Type}

/-- No `Loop` and no `Call`. -/
def straight : HolLoopProg width → Bool
  | .seq a b => straight a && straight b
  | .ite _ _ _ a b _ => straight a && straight b
  | .mark p => straight p
  | .loop _ _ _ => false
  | .call _ _ _ _ => false
  | _ => true

/-- Number of clock-ticking nodes of straight code. -/
def slc : HolLoopProg width → Nat
  | .seq a b => slc a + slc b
  | .ite _ _ _ a b _ => slc a + slc b + 1
  | .mark p => slc p
  | .tick => 1
  | _ => 0

theorem cutRes_clock_ge (live : NumSet)
    (r : Option (LoopResultExact width) × LoopSemStateFiniteExact width F) :
    r.2.clock ≤ (cutRes live r).2.clock + 1 := by
  obtain ⟨res, s⟩ := r
  cases res with
  | some _ => simp [cutRes]
  | none =>
    simp only [cutRes]
    cases hc : cutState live s with
    | none => simp
    | some s1 =>
      simp only
      have := cutState_clock hc
      split <;> simp [decClock] <;> omega

/-- A run of straight code consumes at most `slc p` clock. -/
theorem clock_le_straight : ∀ (p : HolLoopProg width) (s : LoopSemStateFiniteExact width F),
    straight p = true → s.clock ≤ (evaluate p s).2.clock + slc p
  | .seq a b, s, h => by
      simp only [straight, Bool.and_eq_true] at h
      rw [evaluate_seq]
      have ha := clock_le_straight a s h.1
      rcases hA : evaluate a s with ⟨r, s1⟩
      rw [hA] at ha
      cases r with
      | none =>
        have hb := clock_le_straight b s1 h.2
        simp only [slc] at ha ⊢
        omega
      | some r =>
        simp only [slc] at ha ⊢
        omega
  | .ite cmp r1 ri a b live, s, h => by
      simp only [straight, Bool.and_eq_true] at h
      rw [evaluate]
      split
      · split
        · have ha := clock_le_straight a s h.1
          have hc := cutRes_clock_ge live (evaluate a s)
          simp only [slc]
          omega
        · have hb := clock_le_straight b s h.2
          have hc := cutRes_clock_ge live (evaluate b s)
          simp only [slc]
          omega
      · simp only [slc]; omega
  | .mark p, s, h => by
      simp only [straight] at h
      rw [evaluate]
      simpa [slc] using clock_le_straight p s h
  | .loop _ _ _, _, h => by simp [straight] at h
  | .call _ _ _ _, _, h => by simp [straight] at h
  | .tick, s, _ => by
      rw [evaluate]
      split <;> simp [slc, decClock] <;> omega
  | .skip, s, _ => by rw [evaluate]; simp
  | .fail, s, _ => by rw [evaluate]; simp
  | .assign _ _, s, _ => by
      rw [evaluate]; split <;> simp [setVar]
  | .primitive _ _ _, s, _ => by
      rw [evaluate]; repeat' split
      all_goals simp [setVars]
  | .arith _, s, _ => by
      rw [evaluate]; split
      · simp
      · rename_i h; simp [loopArith_clock h]
  | .store _ _, s, _ => by
      rw [evaluate]; repeat' split
      all_goals (try simp)
      all_goals (rename_i h; simp [memStore_clock h])
  | .setGlobal _ _, s, _ => by
      rw [evaluate]; split <;> simp [setGlobals]
  | .load32 _ _, s, _ => by
      rw [evaluate]; repeat' split
      all_goals simp [setVar]
  | .loadByte _ _, s, _ => by
      rw [evaluate]; repeat' split
      all_goals simp [setVar]
  | .store32 _ _, s, _ => by
      rw [evaluate]; repeat' split
      all_goals simp
  | .storeByte _ _, s, _ => by
      rw [evaluate]; repeat' split
      all_goals simp
  | .break _, s, _ => by rw [evaluate]; simp
  | .continue _, s, _ => by rw [evaluate]; simp
  | .raise _, s, _ => by
      rw [evaluate]; split <;> simp [LoopSemStateFiniteExact.callEnv]
  | .return _, s, _ => by
      rw [evaluate]; split <;> simp [LoopSemStateFiniteExact.callEnv]
  | .shMem _ _ _, s, _ => by
      rw [evaluate]; repeat' split
      all_goals simp [shMemOp_clock]
  | .locValue _ _, s, _ => by
      rw [evaluate]; split <;> simp [setVar]
  | .ffi _ _ _ _ _ _, s, _ => by
      rw [evaluate]; repeat' split
      all_goals (try simp only [Nat.le_add_right])
      all_goals (have hcs := cutState_clock ‹cutState _ _ = some _›
                 simp [LoopSemStateFiniteExact.callEnv, hcs])

theorem straight_nestedSeq : ∀ ps : List (HolLoopProg width),
    straight (loopNestedSeqHOL ps) = ps.all straight
  | [] => by simp [loopNestedSeqHOL, straight]
  | p :: ps => by simp [loopNestedSeqHOL, straight, straight_nestedSeq ps]

theorem slc_nestedSeq : ∀ ps : List (HolLoopProg width),
    slc (loopNestedSeqHOL ps) = (ps.map slc).sum
  | [] => by simp [loopNestedSeqHOL, slc]
  | p :: ps => by simp [loopNestedSeqHOL, slc, slc_nestedSeq ps]

@[simp] theorem sum_zipWith_zero {α β : Type} :
    ∀ (xs : List α) (ys : List β), (List.zipWith (fun _ _ => (0 : Nat)) xs ys).sum = 0
  | [], _ => by simp
  | _ :: _, [] => by simp
  | _ :: xs, _ :: ys => by simp [sum_zipWith_zero xs ys]

theorem zipWith_assign_straight {α : Type} (f : α → Nat) :
    ∀ (xs : List α) (ys : List (HolLoopExp width)),
      (List.zipWith (fun x y => HolLoopProg.assign (f x) y) xs ys).all straight = true
  | [], _ => by simp
  | _ :: _, [] => by simp
  | x :: xs, y :: ys => by
      have := zipWith_assign_straight f xs ys
      simp [straight, this]

end Straight

section CompileStraight
variable {width : Nat} [NeZero width]

mutual
/-- Compiled crep expression code is straight with at most `esize e` ticks. -/
theorem compileExp_straight (ct : CrepToLoopContextExact) (tmp : Nat) (l : NumSet) :
    ∀ e : CrepExpHOL width,
      (compileExpHOLExact ct tmp l e).1.all straight = true ∧
      ((compileExpHOLExact ct tmp l e).1.map slc).sum ≤ esize e
  | .baseAddr | .topAddr | .const _ | .var _ | .loadGlob _ => by
      simp [compileExpHOLExact, esize]
  | .load a => by
      have ih := compileExp_straight ct tmp l a
      rcases hA : compileExpHOLExact ct tmp l a with ⟨c, v, m, o⟩
      rw [hA] at ih; simp only at ih
      simp only [compileExpHOLExact, hA, esize]; exact ⟨ih.1, by omega⟩
  | .load32 a => by
      have ih := compileExp_straight ct tmp l a
      rcases hA : compileExpHOLExact ct tmp l a with ⟨c, v, m, o⟩
      rw [hA] at ih; simp only at ih
      simp [compileExpHOLExact, hA, esize, straight, slc, ih.1]; omega
  | .loadByte a => by
      have ih := compileExp_straight ct tmp l a
      rcases hA : compileExpHOLExact ct tmp l a with ⟨c, v, m, o⟩
      rw [hA] at ih; simp only at ih
      simp [compileExpHOLExact, hA, esize, straight, slc, ih.1]; omega
  | .op o es => by
      have ih := compileExps_straight ct tmp l es
      rcases hA : compileExpsHOLExact ct tmp l es with ⟨c, vs, m, ol⟩
      rw [hA] at ih; simp only at ih
      simp only [compileExpHOLExact, hA, esize]; exact ⟨ih.1, by omega⟩
  | .crepOp o es => by
      have ih := compileExps_straight ct tmp l es
      rcases hA : compileExpsHOLExact ct tmp l es with ⟨c, vs, m, ol⟩
      rw [hA] at ih; simp only at ih
      have hz := zipWith_assign_straight (width := width) (fun x => m + x)
        (List.range vs.length) vs
      simp only [compileExpHOLExact, hA, esize]
      cases o
      simp only [compileCrepopHOLExact]
      split
      · simp [straight, slc, ih.1, hz]; omega
      · simp [straight, slc, ih.1, hz]; omega
  | .cmp o a b => by
      have iha := compileExp_straight ct tmp l a
      rcases hA : compileExpHOLExact ct tmp l a with ⟨c, v, m, ol⟩
      rw [hA] at iha; simp only at iha
      have ihb := compileExp_straight ct m ol b
      rcases hB : compileExpHOLExact ct m ol b with ⟨c', v', m', ol'⟩
      rw [hB] at ihb; simp only at ihb
      simp [compileExpHOLExact, hA, hB, progIfHOLExact, esize, straight, slc, iha.1, ihb.1]
      omega
  | .shift o a b => by
      have iha := compileExp_straight ct tmp l a
      rcases hA : compileExpHOLExact ct tmp l a with ⟨c, v, m, ol⟩
      rw [hA] at iha; simp only at iha
      have ihb := compileExp_straight ct m ol b
      rcases hB : compileExpHOLExact ct m ol b with ⟨c', v', m', ol'⟩
      rw [hB] at ihb; simp only at ihb
      simp [compileExpHOLExact, hA, hB, esize, iha.1, ihb.1]
      omega
termination_by e => sizeOf e

/-- List version of `compileExp_straight`. -/
theorem compileExps_straight (ct : CrepToLoopContextExact) (tmp : Nat) (l : NumSet) :
    ∀ es : List (CrepExpHOL width),
      (compileExpsHOLExact ct tmp l es).1.all straight = true ∧
      ((compileExpsHOLExact ct tmp l es).1.map slc).sum ≤ esizeL es
  | [] => by simp [compileExpsHOLExact, esizeL]
  | e :: es => by
      have iha := compileExp_straight ct tmp l e
      rcases hA : compileExpHOLExact ct tmp l e with ⟨c, v, m, ol⟩
      rw [hA] at iha; simp only at iha
      have ihb := compileExps_straight ct m ol es
      rcases hB : compileExpsHOLExact ct m ol es with ⟨c', vs', m', ol'⟩
      rw [hB] at ihb; simp only at ihb
      simp [compileExpsHOLExact, hA, hB, esizeL, iha.1, ihb.1]
      omega
termination_by es => sizeOf es
end

/-- The compiled code of an expression, as a nested sequence. -/
theorem compileExp_nested_straight (ct : CrepToLoopContextExact) (tmp : Nat) (l : NumSet)
    (e : CrepExpHOL width) (p : List (HolLoopProg width)) (le : HolLoopExp width) (n : Nat)
    (nl : NumSet) (h : compileExpHOLExact ct tmp l e = (p, le, n, nl)) :
    straight (loopNestedSeqHOL p) = true ∧ slc (loopNestedSeqHOL p) ≤ esize e := by
  have := compileExp_straight ct tmp l e
  rw [h] at this
  rw [straight_nestedSeq, slc_nestedSeq]
  exact this

theorem compileExps_nested_straight (ct : CrepToLoopContextExact) (tmp : Nat) (l : NumSet)
    (es : List (CrepExpHOL width)) (p : List (HolLoopProg width)) (les : List (HolLoopExp width))
    (n : Nat) (nl : NumSet) (h : compileExpsHOLExact ct tmp l es = (p, les, n, nl)) :
    straight (loopNestedSeqHOL p) = true ∧ slc (loopNestedSeqHOL p) ≤ esizeL es := by
  have := compileExps_straight ct tmp l es
  rw [h] at this
  rw [straight_nestedSeq, slc_nestedSeq]
  exact this

/-- The leaf statements: no sub-program. -/
def IsLeaf : CrepProgHOL width → Prop
  | .dec _ _ _ | .seq _ _ | .ite _ _ _ | .while _ _ | .call _ _ _ => False
  | _ => True

/-- Every leaf statement compiles to straight code with at most `csize p` ticks. -/
theorem compile_leaf_straight (ct : CrepToLoopContextExact) (l : NumSet) :
    ∀ p : CrepProgHOL width, IsLeaf p →
      straight (compileHOLExact ct l p) = true ∧ slc (compileHOLExact ct l p) ≤ csize p
  | .dec _ _ _, h | .seq _ _, h | .ite _ _ _, h | .while _ _, h | .call _ _ _, h => by
      simp [IsLeaf] at h
  | .skip, _ | .break _, _ | .continue _, _ | .tick, _ => by
      simp [compileHOLExact, straight, slc, csize]
  | .raise _, _ => by simp [compileHOLExact, straight, slc, csize]
  | .primitive ds o as, _ => by
      simp only [compileHOLExact]
      split <;> simp [straight, slc, csize]
  | .extCall f a b c d, _ => by
      simp only [compileHOLExact]
      split <;> simp [straight, slc, csize]
  | .assign n e, _ => by
      simp only [compileHOLExact]
      split
      · simp [straight, slc, csize]
      · rcases hA : compileExpHOLExact ct (ct.vmax + 1) l e with ⟨c, v, m, o⟩
        have := compileExp_straight ct (ct.vmax + 1) l e
        rw [hA] at this; simp only at this
        simp only [straight_nestedSeq, slc_nestedSeq, List.all_append, List.map_append,
          List.sum_append, this.1]
        simp [straight, slc, csize]; omega
  | .shMem op n e, _ => by
      simp only [compileHOLExact]
      split
      · simp [straight, slc, csize]
      · rcases hA : compileExpHOLExact ct (ct.vmax + 1) l e with ⟨c, v, m, o⟩
        have := compileExp_straight ct (ct.vmax + 1) l e
        rw [hA] at this; simp only at this
        simp only [straight_nestedSeq, slc_nestedSeq, List.all_append, List.map_append,
          List.sum_append, this.1]
        simp [straight, slc, csize]; omega
  | .storeGlob a e, _ => by
      simp only [compileHOLExact]
      rcases hA : compileExpHOLExact ct (ct.vmax + 1) l e with ⟨c, v, m, o⟩
      have := compileExp_straight ct (ct.vmax + 1) l e
      rw [hA] at this; simp only at this
      simp only [straight_nestedSeq, slc_nestedSeq, List.all_append, List.map_append,
        List.sum_append, this.1]
      simp [straight, slc, csize]; omega
  | .return es, _ => by
      simp only [compileHOLExact]
      rcases hA : compileExpsHOLExact ct (ct.vmax + 1) l es with ⟨c, vs, m, o⟩
      have := compileExps_straight ct (ct.vmax + 1) l es
      rw [hA] at this; simp only at this
      have hz := zipWith_assign_straight (width := width) (fun x => x) (genTemps m vs.length) vs
      simp only [straight_nestedSeq, slc_nestedSeq, List.all_append, List.map_append,
        List.sum_append, this.1]
      simp [straight, slc, csize, hz]; omega
  | .store a v, _ => by
      simp only [compileHOLExact]
      rcases hA : compileExpHOLExact ct (ct.vmax + 1) l a with ⟨c, x, m, o⟩
      rcases hB : compileExpHOLExact ct m o v with ⟨c', x', m', o'⟩
      have ha := compileExp_straight ct (ct.vmax + 1) l a
      have hb := compileExp_straight ct m o v
      rw [hA] at ha; rw [hB] at hb; simp only at ha hb
      simp only [straight_nestedSeq, slc_nestedSeq, List.all_append, List.map_append,
        List.sum_append, ha.1, hb.1]
      simp [straight, slc, csize]; omega
  | .store32 a v, _ => by
      simp only [compileHOLExact]
      rcases hA : compileExpHOLExact ct (ct.vmax + 1) l a with ⟨c, x, m, o⟩
      rcases hB : compileExpHOLExact ct m o v with ⟨c', x', m', o'⟩
      have ha := compileExp_straight ct (ct.vmax + 1) l a
      have hb := compileExp_straight ct m o v
      rw [hA] at ha; rw [hB] at hb; simp only at ha hb
      simp only [straight_nestedSeq, slc_nestedSeq, List.all_append, List.map_append,
        List.sum_append, ha.1, hb.1]
      simp [straight, slc, csize]; omega
  | .storeByte a v, _ => by
      simp only [compileHOLExact]
      rcases hA : compileExpHOLExact ct (ct.vmax + 1) l a with ⟨c, x, m, o⟩
      rcases hB : compileExpHOLExact ct m o v with ⟨c', x', m', o'⟩
      have ha := compileExp_straight ct (ct.vmax + 1) l a
      have hb := compileExp_straight ct m o v
      rw [hA] at ha; rw [hB] at hb; simp only at ha hb
      simp only [straight_nestedSeq, slc_nestedSeq, List.all_append, List.map_append,
        List.sum_append, ha.1, hb.1]
      simp [straight, slc, csize]; omega

end CompileStraight

end InitECandidate.Solver.Compiler.CrepToLoop
