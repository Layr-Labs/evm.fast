import InitECandidate.Solver.MemSafe.Frames.RunFramesGen

/-!
# `run_frames`: the post-state from the abstract callee specifications

`run_frames_costP_gen` (`RunFramesGen.lean`) bounds the cost of the loop but says nothing about
the state it leaves: its invariant drops `J` at `go = 0`. The block driver needs `G` after
`process_message_call`, because the next transaction's call is conditional too.

**`run_frames_post_gen`**: from the same `RFHyps`, a return of `run_frames` ends in `Jx`, where
`RFExit` says that `J` at a kind-0 frame gives `Jx` after the exit's two global assignments
`ev = CK_PARENT; cur_cont = CK_PARENT_CONT`.

The step part is reused as is (`step_hoare`); the finish part and the iteration are twins of
`fin_hoare` / `iter_hoare_aux` that keep `Jx` on the exit branch.
-/

set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- **What the kind-0 exit must give.** `CK_KIND` is at offset 16, `CK_PARENT` at 0,
`CK_PARENT_CONT` at 8 of the current continuation record. -/
structure RFExit (J Jx : State σ → Prop) (Φ : State σ → Nat) (M : Nat) : Prop where
  hx : LocFree Jx
  exit : ∀ (s : State σ) (c : BitVec 64), J s → Φ s ≤ M → gword s nmCC = some c →
    rd s.memory (c + BitVec.ofNat 64 16) = 0 →
    Jx (setKvarHOLFinite .global nmCC (.val (.word (rd s.memory (c + BitVec.ofNat 64 8))))
      (setKvarHOLFinite .global nmEv (.val (.word (rd s.memory (c + BitVec.ofNat 64 0)))) s))

section proof
variable {J Jx : State σ → Prop} {Φ : State σ → Nat} {M Bop Bexc Bepi Bfin : Nat}

/-- The loop invariant with the exit state. -/
def rfIP (J Jx : State σ → Prop) (Φ : State σ → Nat) (M : Nat) (s : State σ) : Prop :=
  ∃ g, s.locals.lookup nmGo = some (.val (.word g)) ∧ (g ≠ 0 → J s ∧ Φ s ≤ M) ∧ (g = 0 → Jx s)

/-- The post of an iteration's finish part, keeping `Jx` at the exit. -/
def FinPostP (J Jx : State σ → Prop) (Φ : State σ → Nat) (K : Nat) (G : BitVec 64)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  r = none ∧ ((t.locals.lookup nmGo = some (.val (.word 0)) ∧ Jx t) ∨
    (t.locals.lookup nmGo = some (.val (.word G)) ∧ J t ∧ Φ t < K))

theorem finPostP_res (hJ : LocFree J) (hX : LocFree Jx) (hΦ : LocFreeN Φ) {K : Nat}
    {G : BitVec 64} {r : Option (PanSemResultExact 64)} {t : State σ} {x : MlS}
    {o : Option (ValueHOL 64)} (hgo : x ≠ nmGo) (h : FinPostP J Jx Φ K G r t) :
    FinPostP J Jx Φ K G r { t with locals := t.locals.resVarEq (x, o) } := by
  obtain ⟨h1, h2⟩ := h
  refine ⟨h1, ?_⟩
  show ((t.locals.resVarEq (x, o)).lookup nmGo = _ ∧ _) ∨
    ((t.locals.resVarEq (x, o)).lookup nmGo = _ ∧ _)
  rw [lookup_resVarEq_ne _ _ hgo, hΦ.res t x o, hJ.res t x o, hX.res t x o]
  exact h2

/-- `CK_KIND(cur_cont) = 0`, from the condition of the exit branch. -/
theorem kind0_of {s : State σ} {w : BitVec 64} (h : ev s condKind0 = some (.val (.word w)))
    (hw : w ≠ 0) : ∃ c, gword s nmCC = some c ∧ rd s.memory (c + BitVec.ofNat 64 16) = 0 := by
  obtain ⟨x, y, hx, hy, hv⟩ := ev_cmp_inv h
  obtain ⟨c, hc, hxv⟩ := ev_gLoad hx
  rw [ev_cw] at hy; cases hy
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxv hv
  subst hxv
  refine ⟨c, hc, ?_⟩
  split at hv
  · rename_i hc'
    simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hc'
  · exact absurd hv.symm (Ne.symm hw)

/-- The exit: `ev = PARENT; cur_cont = PARENT_CONT; go = 0`. -/
theorem exit_hoare (E : RFExit J Jx Φ M) {K : Nat} {G : BitVec 64} (hK : K ≤ M) :
    Hoare σ X (fun s => (J s ∧ Φ s ≤ K ∧ s.locals.lookup nmGo = some (.val (.word G))) ∧
        ∃ w, ev s condKind0 = some (.val (.word w)) ∧ w ≠ 0)
      rfExit (FinPostP J Jx Φ K G) := by
  refine hoare_seq (R := fun r t => r = none ∧ ∃ (s : State σ) (c : BitVec 64), J s ∧ Φ s ≤ M ∧
      gword s nmCC = some c ∧ rd s.memory (c + BitVec.ofNat 64 16) = 0 ∧
      t = setKvarHOLFinite .global nmEv (.val (.word (rd s.memory (c + BitVec.ofNat 64 0)))) s) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assignK fun s _ ⟨⟨hJs, hΦs, _⟩, w, hw, hw0⟩ v hv _ => ?_
    obtain ⟨c, hc, h0⟩ := kind0_of hw hw0
    obtain ⟨c', hc', rfl⟩ := ev_gLoad hv
    rw [show gword s (nm "cur_cont") = gword s nmCC from rfl, hc] at hc'
    cases hc'
    exact ⟨rfl, s, c, hJs, by omega, hc, h0, rfl⟩
  refine hoare_seq (R := fun r t => r = none ∧ Jx t) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assignK fun t _ ⟨_, s, c, hJs, hΦs, hc, h0, ht⟩ v hv _ => ?_
    subst ht
    obtain ⟨c', hc', rfl⟩ := ev_gLoad hv
    have hgw : gword (setKvarHOLFinite .global nmEv
        (.val (.word (rd s.memory (c + BitVec.ofNat 64 0)))) s) (nm "cur_cont") = some c := by
      have hl : (setKvarHOLFinite .global nmEv
          (.val (.word (rd s.memory (c + BitVec.ofNat 64 0)))) s).globals.lookup (nm "cur_cont") =
          s.globals.lookup (nm "cur_cont") := lookup_update_ne _ _ (by decide)
      rw [← hc]
      show gword _ nmCC = gword s nmCC
      unfold gword
      rw [hl]
    rw [hgw] at hc'
    cases hc'
    exact ⟨rfl, E.exit s c hJs hΦs hc h0⟩
  refine hoare_assign fun s _ ⟨_, hX⟩ v hv _ => ?_
  rw [ev_cw] at hv; cases hv
  exact ⟨rfl, Or.inl ⟨lk_set_self _ _ _, (E.hx.setVar _ _ _).mpr hX⟩⟩

theorem finCall_hoareP (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) {K : Nat} {G : BitVec 64}
    (hK : K ≤ M) :
    Hoare σ X (fun s => J s ∧ Φ s ≤ K ∧ KindNZ s ∧ s.locals.lookup nmGo = some (.val (.word G)))
      finCall (FinPostP J Jx Φ K G) := by
  refine hoare_callH (R := _) H.finS ?_ ?_
  · rintro s - ⟨hJs, hΦs, hkd, hgo⟩ vs hvs callee v st hR _
    have hR' := (hR (by simp [Good]) (evs_zero hvs) ((H.hJ.entry _ _).mpr hJs)
      (by rw [H.hΦ.entry]; omega) (by exact hkd)).1 v rfl
    rw [H.hΦ.entry] at hR'
    refine ⟨fun _ => ⟨rfl, Or.inr ⟨hgo, (H.hJ.loc _ _).mpr hR'.1, ?_⟩⟩, ?_⟩
    · rw [H.hΦ.loc]; omega
    · intro k x h; cases h
  · rintro s - ⟨hJs, hΦs, hkd, hgo⟩ vs hvs callee v st hR _
    have hR' := (hR (by simp [Good]) (evs_zero hvs) ((H.hJ.entry _ _).mpr hJs)
      (by rw [H.hΦ.entry]; omega) (by exact hkd)).2 v rfl
    rw [H.hΦ.entry] at hR'
    have hle := act_le st
    refine hoare_post (excH_hoare H (K := K) hR'.1 (by omega) hK) ?_
    intro r t _ _ ⟨hr, hloc, hJt, hΦt⟩
    refine ⟨hr, Or.inr ⟨?_, hJt, hΦt⟩⟩
    rw [hloc, lk_set_ne _ _ (by decide)]; exact hgo

theorem fin_hoareP (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) (E : RFExit J Jx Φ M) {K : Nat}
    {G : BitVec 64} (hK : K ≤ M) :
    Hoare σ X (StepPost J Φ K G none) rfFin (FinPostP J Jx Φ K G) := by
  refine hoare_ite ?_ ?_
  · -- `done ≠ 0`: the frame is finished.
    refine hoare_pre (P := fun s => J s ∧ Φ s ≤ K ∧ s.locals.lookup nmGo = some (.val (.word G)))
      ?_ ?_
    rotate_left
    · rintro s0 - ⟨⟨-, hgo, hJs, hdone⟩, w, hw, hw0⟩
      refine ⟨hJs, ?_, hgo⟩
      rcases hdone with ⟨hd, -⟩ | ⟨-, h⟩
      · have := ev_cmp0 (ev_lv_eq hd) hw
        rw [this] at hw0
        exact absurd (by decide) hw0
      · exact h
    refine hoare_seq (R := fun r t => r = none ∧ J t ∧ Φ t ≤ K ∧
        t.locals.lookup nmGo = some (.val (.word G))) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
    · exact hoare_skip fun s _ ⟨hJs, hΦs, hgo⟩ => ⟨rfl, hJs, hΦs, hgo⟩
    refine hoare_seq (R := fun r t => r = none ∧ J t ∧ Φ t ≤ K ∧
        t.locals.lookup nmGo = some (.val (.word G))) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_callD H.epiS fun s _ ⟨_, hJs, hΦs, hgo⟩ vs hvs callee v st hR _ => ?_
      have hR' := hR (by simp [Good]) (evs_zero hvs) ((H.hJ.entry _ _).mpr hJs)
        (by rw [H.hΦ.entry]; omega) v rfl
      rw [H.hΦ.entry] at hR'
      exact ⟨rfl, (H.hJ.loc _ _).mpr hR'.1, by rw [H.hΦ.loc]; omega, hgo⟩
    refine hoare_ite ?_ ?_
    · -- kind 0: leave the loop.
      exact hoare_pre (exit_hoare E hK) fun s _ ⟨⟨_, hJs, hΦs, hgo⟩, hk⟩ => ⟨⟨hJs, hΦs, hgo⟩, hk⟩
    · refine hoare_dec fun s _ ⟨⟨_, hJs, hΦs, hgo⟩, hk⟩ v _ _ => ?_
      refine hoare_post (Q := FinPostP J Jx Φ K G) ?_ fun r u _ _ h =>
        finPostP_res H.hJ E.hx H.hΦ (by decide) h
      refine hoare_pre (finCall_hoareP H hK) fun u _ hu => ?_
      subst hu
      exact ⟨(H.hJ.setVar _ _ _).mpr hJs, by rw [H.hΦ.setVar]; exact hΦs, kindNZ_of hk,
        by rw [lk_set_ne _ _ (by decide)]; exact hgo⟩
  · -- `done = 0`: the opcode ran.
    refine hoare_skip fun s _ ⟨⟨_, hgo, hJs, hdone⟩, hw⟩ => ⟨rfl, Or.inr ⟨hgo, hJs, ?_⟩⟩
    rcases hdone with ⟨-, h⟩ | ⟨hd, -⟩
    · exact h
    · have := ev_cmp0 (ev_lv_eq hd) hw
      exact absurd this (by decide)

/-- One iteration keeps the invariant. -/
theorem iter_hoareP (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) (E : RFExit J Jx Φ M) :
    Hoare σ X (fun s => rfIP J Jx Φ M s ∧ CondTrue s rfCond) rfLoopBody
      (fun r t => r = none ∧ rfIP J Jx Φ M t) := by
  rintro s hs ⟨⟨g, hg, hinv, -⟩, hc⟩ ht
  have hg0 := condTrue_go hg hc
  obtain ⟨hJ0, hΦ0⟩ := hinv hg0
  have A : Hoare σ X (fun s' => s' = s) rfLoopBody (fun r t => r = none ∧ rfIP J Jx Φ M t) := by
    refine hoare_dec fun s' _ hs' v hv _ => ?_
    subst hs'
    rw [ev_cw] at hv; cases hv
    refine hoare_seq (R := StepPost J Φ (Φ s') g) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_pre (step_hoare H hΦ0) fun t _ ht => ?_
      subst ht
      exact ⟨(H.hJ.setVar _ _ _).mpr hJ0, by rw [H.hΦ.setVar],
        by rw [lk_set_ne _ _ (by decide)]; exact hg, lk_set_self _ _ _⟩
    refine hoare_post (fin_hoareP H E hΦ0) fun r t _ _ h => ?_
    obtain ⟨hr, h2⟩ := finPostP_res (x := nmDone) (o := s'.locals.lookup nmDone) H.hJ E.hx H.hΦ
      (by decide) h
    refine ⟨hr, ?_⟩
    rcases h2 with ⟨h0, hX⟩ | ⟨hgt, hJt, hΦt⟩
    · exact ⟨0, h0, fun h => absurd rfl h, fun _ => hX⟩
    · exact ⟨g, hgt, fun _ => ⟨hJt, by omega⟩, fun h => absurd h hg0⟩
  exact A s hs rfl ht

/-- **The loop.** -/
theorem loop_hoareP (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) (E : RFExit J Jx Φ M) :
    Hoare σ X (rfIP J Jx Φ M) (.while rfCond rfLoopBody) (fun r t => r = none ∧ Jx t) := by
  refine hoare_while (I := rfIP J Jx Φ M) ?_ ?_ ?_
  · rintro s ⟨g, hg, h1, h2⟩
    exact ⟨g, hg, fun h0 => ⟨(H.hJ.dec s).mpr (h1 h0).1, by rw [H.hΦ.dec]; exact (h1 h0).2⟩,
      fun h0 => (E.hx.dec s).mpr (h2 h0)⟩
  · refine hoare_post (iter_hoareP H E) fun r t _ _ ⟨hr, hI⟩ => ⟨fun _ => hI, ?_, ?_, ?_⟩
    · intro h; rw [hr] at h; cases h
    · intro h; rw [hr] at h; cases h
    · intro v h; rw [hr] at h; cases h
  · rintro s _ ⟨g, hg, -, h2⟩ hc
    have := ev_cmp0 (ev_lv_eq hg) hc
    refine ⟨rfl, h2 ?_⟩
    by_contra hne
    simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at this
    exact hne this

/-- **The post-state of `run_frames`** from the abstract callee specifications: a return from a
state with `J` and `Φ ≤ M` ends in `Jx`. -/
theorem run_frames_post_gen (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) (E : RFExit J Jx Φ M) :
    FunSpec σ X (nm "run_frames") (fun _ s r t => J s → Φ s ≤ M → ∀ v, r = .returned v → Jx t) := by
  intro vs body callee rs hl s hs _ r hr hJs hΦs v hv
  obtain ⟨rfl, -, -⟩ := lookupCode_zero H.code hl
  have B : Hoare σ X (fun s' => s' = s) rfBody (fun r t => ∀ v, r = some (.returned v) → Jx t) := by
    refine hoare_dec fun s' _ hs' w hw _ => ?_
    subst hs'
    rw [ev_cw] at hw; cases hw
    refine hoare_seq (R := fun r t => r = none ∧ Jx t) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_pre (loop_hoareP H E) fun t _ ht => ?_
      subst ht
      refine ⟨1, lk_set_self _ _ _, fun _ => ⟨(H.hJ.setVar _ _ _).mpr hJs, ?_⟩, ?_⟩
      · rw [H.hΦ.setVar]; exact hΦs
      · intro h; exact absurd h (by decide)
    · refine hoare_return fun t _ ⟨_, hX⟩ u _ v' _ => ?_
      exact (E.hx.loc _ _).mpr ((E.hx.loc t _).mpr hX)
  have := B s hs rfl (by rw [hr]; subst hv; simp)
  rw [hr] at this
  subst hv
  exact this v rfl

end proof

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.run_frames_post_gen
