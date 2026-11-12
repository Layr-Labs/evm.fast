import InitECandidate.Solver.MemSafe.Frames.RunFramesCode

/-!
# `run_frames`: the conditional cost from abstract callee specifications

`run_frames_costP_gen`: the loop of `run_frames` costs at most `(M + 2) * (Bb + 1)` ticks from
every state satisfying `J s ∧ Φ s ≤ M`, given four callee specifications stated against an
arbitrary state predicate `J` and measure `Φ` (both blind to locals and the clock):

* `op_dispatch` from a *ready* frame (`CK_DONE(cur_cont) = 0`, `RUNNING(ev) ≠ 0`): a return
  keeps `J` and lowers `Φ`; an `EvmErr` keeps `J` and lowers `Φ` up to the active bit
  `act` of the new state (`Φ t + 1 ≤ Φ s + act t`);
* `frame_exception` (the handler): keeps `J` and lowers `Φ` by the active bit (`CK_DONE := 1`);
* `frame_epilogue`: keeps `J`, does not raise `Φ`;
* `finish_child` (current frame of kind `≠ 0`): like `op_dispatch`.

The measure of the loop is `μ = 0` once `go = 0`, else `Φ + 1`; the invariant is
`go ↦ g ∧ (g ≠ 0 → J ∧ Φ ≤ M)`. The concrete instance (`J = ∃ Γ, G ∧ Chain`, `Φ` = the
chain sum) is in `Frames/RunFrames.lean`.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

abbrev Locs := HolFiniteMapExact MlS (ValueHOL 64)

/-! ## Predicates blind to locals and the clock -/

/-- `P` ignores the locals and the clock. -/
def LocFree (P : State σ → Prop) : Prop :=
  ∀ (s : State σ) (l : Locs) (c : Nat), P { s with locals := l, clock := c } ↔ P s

/-- `f` ignores the locals and the clock. -/
def LocFreeN (f : State σ → Nat) : Prop :=
  ∀ (s : State σ) (l : Locs) (c : Nat), f { s with locals := l, clock := c } = f s

section locfree
variable {P : State σ → Prop} {f : State σ → Nat}

theorem LocFree.loc (h : LocFree P) (s : State σ) (l : Locs) :
    P { s with locals := l } ↔ P s := h s l s.clock
theorem LocFree.setVar (h : LocFree P) (s : State σ) (n : MlS) (v : ValueHOL 64) :
    P (setVarHOLFinite n v s) ↔ P s := h s _ s.clock
theorem LocFree.entry (h : LocFree P) (s : State σ) (callee : Locs) :
    P (callEntryStateHOLFinite s callee) ↔ P s := h s callee _
theorem LocFree.dec (h : LocFree P) (s : State σ) : P (decClockHOLFinite s) ↔ P s :=
  h s s.locals _
theorem LocFree.res (h : LocFree P) (s : State σ) (n : MlS) (o : Option (ValueHOL 64)) :
    P { s with locals := s.locals.resVarEq (n, o) } ↔ P s := h s _ s.clock

theorem LocFreeN.loc (h : LocFreeN f) (s : State σ) (l : Locs) :
    f { s with locals := l } = f s := h s l s.clock
theorem LocFreeN.setVar (h : LocFreeN f) (s : State σ) (n : MlS) (v : ValueHOL 64) :
    f (setVarHOLFinite n v s) = f s := h s _ s.clock
theorem LocFreeN.entry (h : LocFreeN f) (s : State σ) (callee : Locs) :
    f (callEntryStateHOLFinite s callee) = f s := h s callee _
theorem LocFreeN.dec (h : LocFreeN f) (s : State σ) : f (decClockHOLFinite s) = f s :=
  h s s.locals _
theorem LocFreeN.res (h : LocFreeN f) (s : State σ) (n : MlS) (o : Option (ValueHOL 64)) :
    f { s with locals := s.locals.resVarEq (n, o) } = f s := h s _ s.clock

end locfree

/-! ## The branch facts of an iteration -/

/-- `CK_DONE(cur_cont) = 0`. -/
def DoneZ (s : State σ) : Prop :=
  ∃ c, gword s nmCC = some c ∧ rd s.memory (c + BitVec.ofNat 64 32) = 0

/-- `RUNNING(ev) ≠ 0`. -/
def RunNZ (s : State σ) : Prop :=
  ∃ e, gword s nmEv = some e ∧ rd s.memory (e + BitVec.ofNat 64 104) ≠ 0

/-- The current frame is active: an opcode may run. -/
def Ready (s : State σ) : Prop := DoneZ s ∧ RunNZ s

/-- `CK_KIND(cur_cont) ≠ 0`: the current frame has a parent. -/
def KindNZ (s : State σ) : Prop :=
  ∃ c, gword s nmCC = some c ∧ rd s.memory (c + BitVec.ofNat 64 16) ≠ 0

open Classical in
/-- The active bit of the current frame. -/
noncomputable def act (s : State σ) : Nat := if Ready s then 1 else 0

theorem act_le (s : State σ) : act s ≤ 1 := by
  unfold act; split <;> omega

theorem ready_locFree : LocFree (σ := σ) Ready := fun _ _ _ => Iff.rfl
theorem kindNZ_locFree : LocFree (σ := σ) KindNZ := fun _ _ _ => Iff.rfl
theorem act_locFree : LocFreeN (σ := σ) act := fun _ _ _ => rfl

/-! ## Expression evaluation -/

theorem mem_rd (m : Mem) (a : BitVec 64) : m a = .word (rd m a) := by
  unfold rd
  split
  rename_i w h
  exact h

theorem ev_gLoad {s : State σ} {g : String} {k : Nat} {v : ValueHOL 64}
    (h : ev s (gLoad g k) = some v) :
    ∃ G, gword s (nm g) = some G ∧ v = .val (.word (rd s.memory (G + BitVec.ofNat 64 k))) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one h
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hw
  rw [ev_cw] at hz
  cases hz
  refine ⟨y, ?_, by rw [← mem_rd]⟩
  have : s.globals.lookup (nm g) = some (.val (.word y)) := hy
  unfold gword
  rw [this]

theorem ev_lv_eq {s : State σ} {x : MlS} {w : BitVec 64}
    (h : s.locals.lookup x = some (.val (.word w))) : ev s (lv x) = some (.val (.word w)) := h

theorem wcmp_ne_true {x : BitVec 64} :
    Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notEqual x 0 = true ↔ x ≠ 0 := by
  simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL]

theorem wcmp_eq_true {x : BitVec 64} :
    Flapjack.Compiler.Encoders.Asm.wordCmpHOL .equal x 0 = true ↔ x = 0 := by
  simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL]

/-- The value of a `≠ 0` / `== 0` test of a word. -/
theorem ev_cmp0 {s : State σ} {o : Cmp} {a : ExpHOL 64} {x w : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (h : ev s (.cmp o a (cw 0)) = some (.val (.word w))) :
    w = if Flapjack.Compiler.Encoders.Asm.wordCmpHOL o x 0 then 1 else 0 := by
  rw [ev_cmp ha (ev_cw s 0)] at h
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
  exact h.symm

theorem doneZ_of {s : State σ} (h : ev s condDone = some (.val (.word 0))) : DoneZ s := by
  obtain ⟨x, y, hx, hy, hv⟩ := ev_cmp_inv h
  obtain ⟨c, hc, hxv⟩ := ev_gLoad hx
  rw [ev_cw] at hy; cases hy
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxv hv
  subst hxv
  refine ⟨c, hc, ?_⟩
  split at hv
  · exact absurd hv (by decide)
  · rename_i hc'
    simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hc'

theorem runNZ_of {s : State σ} (h : ev s condStop = some (.val (.word 0))) : RunNZ s := by
  obtain ⟨x, y, hx, hy, hv⟩ := ev_cmp_inv h
  obtain ⟨e, he, hxv⟩ := ev_gLoad hx
  rw [ev_cw] at hy; cases hy
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxv hv
  subst hxv
  refine ⟨e, he, fun h0 => ?_⟩
  split at hv
  · exact absurd hv (by decide)
  · rename_i hc'
    simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, h0] at hc'

theorem kindNZ_of {s : State σ} (h : ev s condKind0 = some (.val (.word 0))) : KindNZ s := by
  obtain ⟨x, y, hx, hy, hv⟩ := ev_cmp_inv h
  obtain ⟨c, hc, hxv⟩ := ev_gLoad hx
  rw [ev_cw] at hy; cases hy
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxv hv
  subst hxv
  refine ⟨c, hc, fun h0 => ?_⟩
  split at hv
  · exact absurd hv (by decide)
  · rename_i hc'
    simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, h0] at hc'

theorem evs_one {s : State σ} {e : ExpHOL 64} {vs : List (ValueHOL 64)} (h : evs s [e] = some vs) :
    vs.length = 1 := by
  obtain ⟨v, vs', rfl, -, h'⟩ := evs_cons_inv h
  have : vs' = [] := by
    have h0 : evs s ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at h'
    exact (Option.some.inj h').symm
  subst this
  rfl

theorem evs_zero {s : State σ} {vs : List (ValueHOL 64)} (h : evs s ([] : List (ExpHOL 64)) = some vs) :
    vs = [] := by
  have h0 : evs s ([] : List (ExpHOL 64)) = some [] := evs_nil
  rw [h0] at h
  exact (Option.some.inj h).symm

/-! ## The hypotheses -/

/-- The callee specifications `run_frames` consumes, against a state predicate `J` and a
measure `Φ` (both blind to locals and the clock), with `Φ ≤ M` as part of the invariant. -/
structure RFHyps (σ : Type) (X : Ctx 64) (J : State σ → Prop) (Φ : State σ → Nat)
    (M Bop Bexc Bepi Bfin : Nat) : Prop where
  code : X.code.lookup (nm "run_frames") = some ([], rfBody, .one)
  hJ : LocFree J
  hΦ : LocFreeN Φ
  opC : Spec.Inv.CalleeCostP σ X (nm "op_dispatch")
    (fun vs s => vs.length = 1 ∧ J s ∧ Φ s ≤ M ∧ Ready s) Bop
  opS : FunSpec σ X (nm "op_dispatch") (fun vs s r t => Good (some r) → vs.length = 1 →
    J s → Φ s ≤ M → Ready s →
      (∀ v, r = .returned v → J t ∧ Φ t < Φ s) ∧
      (∀ v, r = .exception nmEvmErr v → J t ∧ Φ t + 1 ≤ Φ s + act t))
  excC : CalleeCost σ X (nm "frame_exception") Bexc
  excS : FunSpec σ X (nm "frame_exception") (fun vs s r t => Good (some r) → vs.length = 1 →
    J s → Φ s ≤ M → ∀ v, r = .returned v → J t ∧ Φ t + act s ≤ Φ s)
  epiC : Spec.Inv.CalleeCostP σ X (nm "frame_epilogue")
    (fun vs s => vs = [] ∧ J s ∧ Φ s ≤ M) Bepi
  epiS : FunSpec σ X (nm "frame_epilogue") (fun vs s r t => Good (some r) → vs = [] →
    J s → Φ s ≤ M → ∀ v, r = .returned v → J t ∧ Φ t ≤ Φ s)
  finC : Spec.Inv.CalleeCostP σ X (nm "finish_child")
    (fun vs s => vs = [] ∧ J s ∧ Φ s ≤ M ∧ KindNZ s) Bfin
  finS : FunSpec σ X (nm "finish_child") (fun vs s r t => Good (some r) → vs = [] →
    J s → Φ s ≤ M → KindNZ s →
      (∀ v, r = .returned v → J t ∧ Φ t < Φ s) ∧
      (∀ v, r = .exception nmEvmErr v → J t ∧ Φ t + 1 ≤ Φ s + act t))

/-- The per-iteration bound. -/
def rfIterB (Bop Bexc Bepi Bfin : Nat) : Nat := (Bop + Bexc + 2) + (Bepi + Bfin + Bexc + 3)

/-- The bound of `run_frames`. -/
def rfB (M Bop Bexc Bepi Bfin : Nat) : Nat := (M + 2) * (rfIterB Bop Bexc Bepi Bfin + 1)

section proof
variable {J : State σ → Prop} {Φ : State σ → Nat} {M Bop Bexc Bepi Bfin : Nat}

/-- The loop invariant. -/
def rfI (J : State σ → Prop) (Φ : State σ → Nat) (M : Nat) (s : State σ) : Prop :=
  ∃ g, s.locals.lookup nmGo = some (.val (.word g)) ∧ (g ≠ 0 → J s ∧ Φ s ≤ M)

open Classical in
/-- The loop measure. -/
noncomputable def rfμ (Φ : State σ → Nat) (s : State σ) : Nat :=
  if s.locals.lookup nmGo = some (.val (.word 0)) then 0 else Φ s + 1

theorem condTrue_go {s : State σ} {g : BitVec 64}
    (hg : s.locals.lookup nmGo = some (.val (.word g))) (hc : CondTrue s rfCond) : g ≠ 0 := by
  obtain ⟨w, hw, hw0⟩ := condTrue_iff.mp hc
  have := ev_cmp0 (ev_lv_eq hg) hw
  rw [this] at hw0
  intro h0
  subst h0
  exact hw0 (by decide)

theorem rfμ_of_ne {s : State σ} {g : BitVec 64}
    (hg : s.locals.lookup nmGo = some (.val (.word g))) (h0 : g ≠ 0) : rfμ Φ s = Φ s + 1 := by
  unfold rfμ
  rw [if_neg]
  rw [hg]
  intro h
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
  exact h0 h

theorem rfμ_of_zero {s : State σ} (hg : s.locals.lookup nmGo = some (.val (.word 0))) :
    rfμ Φ s = 0 := by
  unfold rfμ
  rw [if_pos hg]

/-- The post of the step part, from an iteration start with `Φ = K`, `go = G`. -/
def StepPost (J : State σ → Prop) (Φ : State σ → Nat) (K : Nat) (G : BitVec 64)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  r = none ∧ t.locals.lookup nmGo = some (.val (.word G)) ∧ J t ∧
    ((t.locals.lookup nmDone = some (.val (.word 0)) ∧ Φ t < K) ∨
      (t.locals.lookup nmDone = some (.val (.word 1)) ∧ Φ t ≤ K))

/-- The post of an iteration's finish part. -/
def FinPost (J : State σ → Prop) (Φ : State σ → Nat) (K : Nat) (G : BitVec 64)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  r = none ∧ (t.locals.lookup nmGo = some (.val (.word 0)) ∨
    (t.locals.lookup nmGo = some (.val (.word G)) ∧ J t ∧ Φ t < K))

theorem stepPost_res (hJ : LocFree J) (hΦ : LocFreeN Φ) {K : Nat} {G : BitVec 64}
    {r : Option (PanSemResultExact 64)} {t : State σ} {x : MlS} {o : Option (ValueHOL 64)}
    (hgo : x ≠ nmGo) (hdo : x ≠ nmDone) (h : StepPost J Φ K G r t) :
    StepPost J Φ K G r { t with locals := t.locals.resVarEq (x, o) } := by
  obtain ⟨h1, h2, h3, h4⟩ := h
  refine ⟨h1, ?_, (hJ.res t x o).mpr h3, ?_⟩
  · show (t.locals.resVarEq (x, o)).lookup nmGo = _
    rw [lookup_resVarEq_ne _ _ hgo]; exact h2
  · show ((t.locals.resVarEq (x, o)).lookup nmDone = _ ∧ _) ∨ _
    rw [lookup_resVarEq_ne _ _ hdo, hΦ.res t x o]; exact h4

theorem finPost_res (hJ : LocFree J) (hΦ : LocFreeN Φ) {K : Nat} {G : BitVec 64}
    {r : Option (PanSemResultExact 64)} {t : State σ} {x : MlS} {o : Option (ValueHOL 64)}
    (hgo : x ≠ nmGo) (h : FinPost J Φ K G r t) :
    FinPost J Φ K G r { t with locals := t.locals.resVarEq (x, o) } := by
  obtain ⟨h1, h2⟩ := h
  refine ⟨h1, ?_⟩
  show (t.locals.resVarEq (x, o)).lookup nmGo = _ ∨
    ((t.locals.resVarEq (x, o)).lookup nmGo = _ ∧ _)
  rw [lookup_resVarEq_ne _ _ hgo, hΦ.res t x o, hJ.res t x o]
  exact h2

/-! ### The handler -/

/-- `frame_exception(x)` after an `EvmErr` from a callee that ended in `st` with
`J st ∧ Φ st + 1 ≤ Φ s + act st`: back in the caller's locals `ls`, `J` holds and `Φ`
dropped below `Φ s`. -/
theorem excH_hoare (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) {x : MlS} {ls : Locs}
    {v : ValueHOL 64} {st : State σ} {K : Nat} (hJ : J st) (hΦ : Φ st + 1 ≤ K + act st)
    (hK : K ≤ M) :
    Hoare σ X (fun t => t = setVarHOLFinite x v { st with locals := ls }) (excH x)
      (fun r t => r = none ∧ t.locals = (setVarHOLFinite x v { st with locals := ls }).locals ∧
        J t ∧ Φ t < K) := by
  refine hoare_callD H.excS ?_
  intro s _ hs vs hvs callee v' st' hR _
  subst hs
  have hJs : J (callEntryStateHOLFinite (setVarHOLFinite x v { st with locals := ls }) callee) :=
    (H.hJ.entry _ _).mpr ((H.hJ.setVar _ _ _).mpr ((H.hJ.loc _ _).mpr hJ))
  have hΦs : Φ (callEntryStateHOLFinite (setVarHOLFinite x v { st with locals := ls }) callee) =
      Φ st := by rw [H.hΦ.entry, H.hΦ.setVar, H.hΦ.loc]
  have hacts : act (callEntryStateHOLFinite (setVarHOLFinite x v { st with locals := ls }) callee) =
      act st := rfl
  have hle := act_le st
  obtain ⟨hJ', hΦ'⟩ := hR (by simp [Good]) (evs_one hvs) hJs (by rw [hΦs]; omega) v' rfl
  rw [hΦs, hacts] at hΦ'
  refine ⟨rfl, rfl, (H.hJ.loc _ _).mpr hJ', ?_⟩
  rw [H.hΦ.loc]
  omega

/-! ### The step part -/

theorem opCall_hoare (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) {K : Nat} {G : BitVec 64}
    (hK : K ≤ M) :
    Hoare σ X (fun s => J s ∧ Φ s = K ∧ Ready s ∧ s.locals.lookup nmGo = some (.val (.word G)) ∧
        s.locals.lookup nmDone = some (.val (.word 0)))
      opCall (StepPost J Φ K G) := by
  refine hoare_callH (R := _) H.opS ?_ ?_
  · rintro s - ⟨hJs, hΦs, hrd, hgo, hdo⟩ vs hvs callee v st hR _
    have hR' := (hR (by simp [Good]) (evs_one hvs) ((H.hJ.entry _ _).mpr hJs)
      (by rw [H.hΦ.entry]; omega) (by exact hrd)).1 v rfl
    rw [H.hΦ.entry] at hR'
    refine ⟨fun _ => ⟨rfl, hgo, (H.hJ.loc _ _).mpr hR'.1, Or.inl ⟨hdo, ?_⟩⟩, ?_⟩
    · rw [H.hΦ.loc]; omega
    · intro k x h; cases h
  · rintro s - ⟨hJs, hΦs, hrd, hgo, hdo⟩ vs hvs callee v st hR _
    have hR' := (hR (by simp [Good]) (evs_one hvs) ((H.hJ.entry _ _).mpr hJs)
      (by rw [H.hΦ.entry]; omega) (by exact hrd)).2 v rfl
    rw [H.hΦ.entry, hΦs] at hR'
    refine hoare_post (excH_hoare H hR'.1 hR'.2 hK) ?_
    intro r t _ _ ⟨hr, hloc, hJt, hΦt⟩
    refine ⟨hr, ?_, hJt, Or.inl ⟨?_, hΦt⟩⟩
    · show t.locals.lookup nmGo = _
      rw [hloc, lk_set_ne _ _ (by decide)]; exact hgo
    · show t.locals.lookup nmDone = _
      rw [hloc, lk_set_ne _ _ (by decide)]; exact hdo

theorem setDone_hoare {K : Nat} {G : BitVec 64} (hJ : LocFree J) (hΦ : LocFreeN Φ) :
    Hoare σ X (fun s => J s ∧ Φ s ≤ K ∧ s.locals.lookup nmGo = some (.val (.word G)))
      setDone (StepPost J Φ K G) := by
  refine hoare_assign fun s _ ⟨hJs, hΦs, hgo⟩ v hv _ => ?_
  rw [ev_cw] at hv; cases hv
  refine ⟨rfl, by rw [lk_set_ne _ _ (by decide)]; exact hgo, (hJ.setVar _ _ _).mpr hJs,
    Or.inr ⟨lk_set_self _ _ _, by rw [hΦ.setVar]; exact hΦs⟩⟩

theorem step_hoare (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) {K : Nat} {G : BitVec 64}
    (hK : K ≤ M) :
    Hoare σ X (fun s => J s ∧ Φ s = K ∧ s.locals.lookup nmGo = some (.val (.word G)) ∧
        s.locals.lookup nmDone = some (.val (.word 0)))
      rfStep (StepPost J Φ K G) := by
  refine hoare_ite ?_ ?_
  · exact hoare_pre (setDone_hoare H.hJ H.hΦ) fun s _ ⟨⟨h1, h2, h3, _⟩, _⟩ => ⟨h1, by omega, h3⟩
  refine hoare_ite ?_ ?_
  · exact hoare_pre (setDone_hoare H.hJ H.hΦ) fun s _ ⟨⟨⟨h1, h2, h3, _⟩, _⟩, _⟩ =>
      ⟨h1, by omega, h3⟩
  refine hoare_dec fun s _ ⟨⟨⟨hJs, hΦs, hgo, hdo⟩, hd0⟩, hs0⟩ v _ _ => ?_
  have hrdy : Ready s := ⟨doneZ_of hd0, runNZ_of hs0⟩
  refine hoare_post (Q := StepPost J Φ K G) ?_ fun r t _ _ h => stepPost_res H.hJ H.hΦ
    (by decide) (by decide) h
  refine hoare_ite ?_ ?_
  · refine hoare_pre (setDone_hoare H.hJ H.hΦ) fun t _ ⟨ht, _⟩ => ?_
    subst ht
    exact ⟨(H.hJ.setVar _ _ _).mpr hJs, by rw [H.hΦ.setVar]; omega,
      by rw [lk_set_ne _ _ (by decide)]; exact hgo⟩
  refine hoare_dec fun t _ ⟨ht, _⟩ v' hv' _ => ?_
  subst ht
  refine hoare_post (Q := StepPost J Φ K G) ?_ fun r u _ _ h => stepPost_res H.hJ H.hΦ
    (by decide) (by decide) h
  refine hoare_pre (opCall_hoare H hK) fun u _ hu => ?_
  subst hu
  refine ⟨(H.hJ.setVar _ _ _).mpr ((H.hJ.setVar _ _ _).mpr hJs),
    by rw [H.hΦ.setVar, H.hΦ.setVar]; exact hΦs, hrdy, ?_, ?_⟩
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hgo
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hdo

/-! ### The finish part -/

theorem finCall_hoare (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) {K : Nat} {G : BitVec 64}
    (hK : K ≤ M) :
    Hoare σ X (fun s => J s ∧ Φ s ≤ K ∧ KindNZ s ∧ s.locals.lookup nmGo = some (.val (.word G)))
      finCall (FinPost J Φ K G) := by
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

theorem fin_hoare (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) {K : Nat} {G : BitVec 64}
    (hK : K ≤ M) :
    Hoare σ X (StepPost J Φ K G none) rfFin (FinPost J Φ K G) := by
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
      refine hoare_seq (R := fun r t => r = none) ?_ (fun r t _ hr _ h => absurd h hr) ?_
      · exact hoare_assignK fun _ _ _ _ _ _ => rfl
      refine hoare_seq (R := fun r t => r = none) ?_ (fun r t _ hr _ h => absurd h hr) ?_
      · exact hoare_assignK fun _ _ _ _ _ _ => rfl
      refine hoare_assign fun s _ _ v hv _ => ?_
      rw [ev_cw] at hv; cases hv
      exact ⟨rfl, Or.inl (lk_set_self _ _ _)⟩
    · refine hoare_dec fun s _ ⟨⟨_, hJs, hΦs, hgo⟩, hk⟩ v _ _ => ?_
      refine hoare_post (Q := FinPost J Φ K G) ?_ fun r u _ _ h => finPost_res H.hJ H.hΦ
        (by decide) h
      refine hoare_pre (finCall_hoare H hK) fun u _ hu => ?_
      subst hu
      exact ⟨(H.hJ.setVar _ _ _).mpr hJs, by rw [H.hΦ.setVar]; exact hΦs, kindNZ_of hk,
        by rw [lk_set_ne _ _ (by decide)]; exact hgo⟩
  · -- `done = 0`: the opcode ran.
    refine hoare_skip fun s _ ⟨⟨_, hgo, hJs, hdone⟩, hw⟩ => ⟨rfl, Or.inr ⟨hgo, hJs, ?_⟩⟩
    rcases hdone with ⟨-, h⟩ | ⟨hd, -⟩
    · exact h
    · have := ev_cmp0 (ev_lv_eq hd) hw
      exact absurd this (by decide)

/-! ### One iteration -/

theorem iter_hoare_aux (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) {K : Nat} {G : BitVec 64}
    (hK : K ≤ M) :
    Hoare σ X (fun s => J s ∧ Φ s = K ∧ s.locals.lookup nmGo = some (.val (.word G))) rfLoopBody
      (fun r t => r = none ∧ rfI J Φ M t ∧ rfμ Φ t < K + 1) := by
  refine hoare_dec fun s _ ⟨hJs, hΦs, hgo⟩ v hv _ => ?_
  rw [ev_cw] at hv; cases hv
  refine hoare_seq (R := StepPost J Φ K G) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_pre (step_hoare H hK) fun t _ ht => ?_
    subst ht
    exact ⟨(H.hJ.setVar _ _ _).mpr hJs, by rw [H.hΦ.setVar]; exact hΦs,
      by rw [lk_set_ne _ _ (by decide)]; exact hgo, lk_set_self _ _ _⟩
  refine hoare_post (fin_hoare H hK) fun r t _ _ h => ?_
  obtain ⟨hr, h2⟩ := finPost_res (x := nmDone) (o := s.locals.lookup nmDone) H.hJ H.hΦ
    (by decide) h
  refine ⟨hr, ?_⟩
  rcases h2 with h0 | ⟨hg, hJt, hΦt⟩
  · exact ⟨⟨0, h0, fun h => absurd rfl h⟩, by rw [rfμ_of_zero h0]; omega⟩
  · by_cases hG : G = 0
    · subst hG
      exact ⟨⟨0, hg, fun h => absurd rfl h⟩, by rw [rfμ_of_zero hg]; omega⟩
    · exact ⟨⟨G, hg, fun _ => ⟨hJt, by omega⟩⟩, by rw [rfμ_of_ne hg hG]; omega⟩

theorem iter_hoare (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) (k : Nat) :
    Hoare σ X (fun s => rfI J Φ M s ∧ CondTrue s rfCond ∧ rfμ Φ s = k) rfLoopBody
      (fun r t => r = none ∧ rfI J Φ M t ∧ rfμ Φ t < k) := by
  intro s hs ⟨⟨g, hg, hinv⟩, hc, hk⟩ ht
  have hg0 := condTrue_go hg hc
  obtain ⟨hJ0, hΦ0⟩ := hinv hg0
  rw [rfμ_of_ne hg hg0] at hk
  subst hk
  exact iter_hoare_aux H hΦ0 s hs ⟨hJ0, rfl, hg⟩ ht

/-! ### Costs -/

theorem excH_cost (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) (x : MlS) :
    Cost σ X (excH x) (1 + Bexc + 0) :=
  cost_call H.excC (fun _ _ _ _ h => by cases h)

theorem step_cost (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) :
    Spec.Inv.CostP σ X (fun s => J s ∧ Φ s ≤ M) rfStep (Bop + Bexc + 2) := by
  have hA : Spec.Inv.CostP σ X (fun s => (J s ∧ Φ s ≤ M) ∧ ev s condDone = some (.val (.word 0)))
      (.ite condStop setDone
        (.dec nmPc .one (gLoad "ev" 0) (.ite condEnd setDone (.dec nmErr .one (cw 0) opCall))))
      (max 0 (max 0 (1 + Bop + (1 + Bexc + 0)))) := by
    refine Spec.Inv.costP_ite (Spec.Inv.costP_of_cost (cost_assign _ _ _)) ?_
    refine Spec.Inv.costP_dec fun s _ ⟨⟨⟨hJs, hΦs⟩, hd0⟩, hs0⟩ v _ _ => ?_
    have hrdy : Ready s := ⟨doneZ_of hd0, runNZ_of hs0⟩
    refine Spec.Inv.costP_ite (Spec.Inv.costP_of_cost (cost_assign _ _ _)) ?_
    refine Spec.Inv.costP_dec fun t _ ⟨ht, _⟩ v' _ _ => ?_
    subst ht
    refine Spec.Inv.costP_call H.opC ?_ ?_
    · intro u _ hu vs hvs callee
      subst hu
      refine ⟨evs_one hvs, ?_, ?_, ?_⟩
      · exact (H.hJ.entry _ _).mpr ((H.hJ.setVar _ _ _).mpr ((H.hJ.setVar _ _ _).mpr hJs))
      · rw [H.hΦ.entry, H.hΦ.setVar, H.hΦ.setVar]; exact hΦs
      · exact hrdy
    · intro r hid hv hp h
      simp only [opCall, Option.some.injEq, Prod.mk.injEq] at h
      obtain ⟨-, rfl, rfl, rfl⟩ := h
      exact excH_cost H _
  refine (Spec.Inv.costP_ite (Spec.Inv.costP_of_cost (cost_assign _ _ _)) hA).mono ?_
  simp only [Nat.zero_max, Nat.add_zero]
  omega

theorem fin_cost (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) {K : Nat} {G : BitVec 64}
    (hK : K ≤ M) :
    Spec.Inv.CostP σ X (StepPost J Φ K G none) rfFin (Bepi + Bfin + Bexc + 3) := by
  have hrest : Spec.Inv.CostP σ X (fun s => J s ∧ Φ s ≤ M)
      (.ite condKind0 rfExit (.dec nmErr2 .one (cw 0) finCall))
      (max (0 + (0 + 0)) (1 + Bfin + (1 + Bexc + 0))) := by
    refine Spec.Inv.costP_ite
      (Spec.Inv.costP_of_cost (cost_seq (cost_assign _ _ _) (cost_seq (cost_assign _ _ _)
        (cost_assign _ _ _)))) ?_
    refine Spec.Inv.costP_dec fun s _ ⟨⟨hJs, hΦs⟩, hk⟩ v _ _ => ?_
    refine Spec.Inv.costP_call H.finC ?_ ?_
    · intro u _ hu vs hvs callee
      subst hu
      refine ⟨evs_zero hvs, ?_, ?_, ?_⟩
      · exact (H.hJ.entry _ _).mpr ((H.hJ.setVar _ _ _).mpr hJs)
      · rw [H.hΦ.entry, H.hΦ.setVar]; exact hΦs
      · exact kindNZ_of hk
    · intro r hid hv hp h
      simp only [finCall, Option.some.injEq, Prod.mk.injEq] at h
      obtain ⟨-, rfl, rfl, rfl⟩ := h
      exact excH_cost H _
  have hepi : Spec.Inv.CostP σ X (fun s => J s ∧ Φ s ≤ M)
      (.seq (callD (nm "frame_epilogue") []) (.ite condKind0 rfExit (.dec nmErr2 .one (cw 0) finCall)))
      ((1 + Bepi + 0) + max (0 + (0 + 0)) (1 + Bfin + (1 + Bexc + 0))) := by
    refine Spec.Inv.costP_seq (R := fun s => J s ∧ Φ s ≤ M) ?_ ?_ hrest
    · refine Spec.Inv.costP_callD H.epiC ?_
      intro s _ ⟨hJs, hΦs⟩ vs hvs callee
      exact ⟨evs_zero hvs, (H.hJ.entry _ _).mpr hJs, by rw [H.hΦ.entry]; exact hΦs⟩
    · refine hoare_callD H.epiS fun s _ ⟨hJs, hΦs⟩ vs hvs callee v st hR _ => fun _ => ?_
      have hR' := hR (by simp [Good]) (evs_zero hvs) ((H.hJ.entry _ _).mpr hJs)
        (by rw [H.hΦ.entry]; omega) v rfl
      rw [H.hΦ.entry] at hR'
      exact ⟨(H.hJ.loc _ _).mpr hR'.1, by rw [H.hΦ.loc]; omega⟩
  have hA : Spec.Inv.CostP σ X (fun s => J s ∧ Φ s ≤ M)
      (.seq .skip (.seq (callD (nm "frame_epilogue") [])
        (.ite condKind0 rfExit (.dec nmErr2 .one (cw 0) finCall))))
      (0 + ((1 + Bepi + 0) + max (0 + (0 + 0)) (1 + Bfin + (1 + Bexc + 0)))) :=
    Spec.Inv.costP_seq (R := fun s => J s ∧ Φ s ≤ M) (Spec.Inv.costP_of_cost cost_skip)
      (hoare_skip fun s _ h _ => h) hepi
  refine (Spec.Inv.costP_ite (hA.pre ?_) (Spec.Inv.costP_of_cost cost_skip)).mono ?_
  · rintro s - ⟨⟨-, hgo, hJs, hdone⟩, w, hw, hw0⟩
    refine ⟨hJs, ?_⟩
    rcases hdone with ⟨hd, -⟩ | ⟨-, h⟩
    · have := ev_cmp0 (ev_lv_eq hd) hw
      rw [this] at hw0
      exact absurd (by decide) hw0
    · omega
  · simp only [Nat.zero_max, Nat.add_zero, Nat.zero_add, Nat.max_zero]
    omega

theorem loopBody_cost (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) :
    Spec.Inv.CostP σ X (fun s => J s ∧ Φ s ≤ M ∧ ∃ G, s.locals.lookup nmGo = some (.val (.word G)))
      rfLoopBody (rfIterB Bop Bexc Bepi Bfin) := by
  refine Spec.Inv.costP_dec fun s _ ⟨hJs, hΦs, G, hgo⟩ v hv _ => ?_
  rw [ev_cw] at hv; cases hv
  refine Spec.Inv.costP_seq (R := StepPost J Φ (Φ s) G none) ?_ ?_ (fin_cost H hΦs)
  · refine (step_cost H).pre fun t _ ht => ?_
    subst ht
    exact ⟨(H.hJ.setVar _ _ _).mpr hJs, by rw [H.hΦ.setVar]; exact hΦs⟩
  · refine hoare_conseq (step_hoare H (K := Φ s) (G := G) hΦs) ?_ ?_
    · intro t _ ht
      subst ht
      exact ⟨(H.hJ.setVar _ _ _).mpr hJs, by rw [H.hΦ.setVar],
        by rw [lk_set_ne _ _ (by decide)]; exact hgo, lk_set_self _ _ _⟩
    · intro r t _ _ h hr; subst hr; exact h

/-! ### The loop and the function -/

theorem loop_cost (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) :
    Spec.Inv.CostP σ X (rfI J Φ M) (.while rfCond rfLoopBody)
      ((M + 1 + 1) * (rfIterB Bop Bexc Bepi Bfin + 1)) := by
  refine Spec.Inv.costP_while (rfμ Φ) (M + 1) ?_ ?_ ?_ ?_ ?_ ?_
  · intro s ⟨g, hg, h⟩
    exact ⟨g, hg, fun h0 => ⟨(H.hJ.dec s).mpr (h h0).1, by rw [H.hΦ.dec]; exact (h h0).2⟩⟩
  · intro s
    unfold rfμ
    rw [H.hΦ.dec]
    rfl
  · refine (loopBody_cost H).pre fun s _ ⟨⟨g, hg, h⟩, hc⟩ => ?_
    obtain ⟨hJs, hΦs⟩ := h (condTrue_go hg hc)
    exact ⟨hJs, hΦs, g, hg⟩
  · intro s hs hp ht hr
    exact (iter_hoare H (rfμ Φ s) s hs ⟨hp.1, hp.2, rfl⟩ ht).2.1
  · intro s _ ⟨g, hg, h⟩ hc
    have hg0 := condTrue_go hg hc
    rw [rfμ_of_ne hg hg0]
    have := (h hg0).2
    omega
  · intro k s hs hp ht hr
    exact (iter_hoare H k s hs hp ht).2.2

/-- **The conditional cost of `run_frames`** from the abstract callee specifications. -/
theorem run_frames_costP_gen (H : RFHyps σ X J Φ M Bop Bexc Bepi Bfin) :
    Spec.Inv.CalleeCostP σ X (nm "run_frames") (fun _ s => J s ∧ Φ s ≤ M)
      (rfB M Bop Bexc Bepi Bfin) := by
  intro vs body callee rs hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero H.code hl
  refine Spec.Inv.costP_dec fun s _ ⟨_, hJs, hΦs⟩ v hv _ => ?_
  rw [ev_cw] at hv; cases hv
  refine (Spec.Inv.costP_seq (R := fun _ => True) ((loop_cost H).pre fun t _ ht => ?_)
    (fun _ _ _ _ _ => trivial) (Spec.Inv.costP_of_cost (cost_return _))).mono ?_
  · subst ht
    exact ⟨1, lk_set_self _ _ _, fun _ => ⟨(H.hJ.setVar _ _ _).mpr hJs,
      by rw [H.hΦ.setVar]; exact hΦs⟩⟩
  · unfold rfB; rw [show M + 1 + 1 = M + 2 by omega]; omega

end proof

end InitECandidate.Solver.MemSafe.Frames
