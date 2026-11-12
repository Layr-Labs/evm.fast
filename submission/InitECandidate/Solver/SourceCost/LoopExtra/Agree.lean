import InitECandidate.Solver.SourceCost.LoopExtra.PureOrbit

/-!
# Non-interference for clock-free loop bodies

`Agree ok s t`: `t` is `s` with another clock and other locals, where the locals
accepted by `ok` are equal and every local keeps its shape. Bodies built from
`skip`, `break`, local assignments, `ite`, `seq` and `dec`, whose expressions read
only `ok` locals, behave the same from agreeing states (`niB_sound`), and on normal
exit they change only the locals they assign, keeping shapes (`assignsB_sound`).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-! ## Expressions reading only accepted locals -/

mutual
def rdOk (ok : MlS → Bool) : ExpHOL width → Bool
  | .var .local y => ok y
  | .rstruct fs => rdOkList ok fs
  | .rfield _ v => rdOk ok v
  | .nstruct _ fs => rdOkFields ok fs
  | .nfield _ v => rdOk ok v
  | .load _ a => rdOk ok a
  | .load32 a => rdOk ok a
  | .loadByte a => rdOk ok a
  | .op _ as => rdOkList ok as
  | .panop _ as => rdOkList ok as
  | .cmp _ a b => rdOk ok a && rdOk ok b
  | .shift _ a b => rdOk ok a && rdOk ok b
  | _ => true
def rdOkList (ok : MlS → Bool) : List (ExpHOL width) → Bool
  | [] => true
  | e :: es => rdOk ok e && rdOkList ok es
def rdOkFields (ok : MlS → Bool) : List (MlS × ExpHOL width) → Bool
  | [] => true
  | (_, e) :: es => rdOk ok e && rdOkFields ok es
end

theorem evalHOLExact_locals_ok (s : PanSemStateExact width σ) [DecidablePred s.memaddrs]
    (ok : MlS → Bool) (L : MlS → Option (ValueHOL width))
    (hL : ∀ y, ok y = true → L y = s.locals y) (e : ExpHOL width) :
    rdOk ok e = true → evalHOLExact { s with locals := L } e = evalHOLExact s e := by
  induction e using evalHOLExact.induct (state := s)
    (motive_2 := fun fs => rdOkFields ok fs = true →
      evalListFieldsHOLExact { s with locals := L } fs = evalListFieldsHOLExact s fs)
    (motive_3 := fun es => rdOkList ok es = true →
      evalListHOLExact { s with locals := L } es = evalListHOLExact s es)
  all_goals (first | intro hr | rename_i hr)
  all_goals (try simp only [rdOk, rdOkList, rdOkFields, Bool.and_eq_true] at hr)
  all_goals (try simp only [evalHOLExact, evalListHOLExact, evalListFieldsHOLExact])
  all_goals (try rfl)
  all_goals simp_all

theorem eval_agree {s : PanSemStateFiniteExact width σ} {L : HolFiniteMapExact MlS (ValueHOL width)}
    {c : Nat} {ok : MlS → Bool} (hL : ∀ y, ok y = true → L.lookup y = s.locals.lookup y)
    {e : ExpHOL width} (hr : rdOk ok e = true) :
    @evalHOLExact width σ _ ({ s with locals := L, clock := c } : PanSemStateFiniteExact width σ).toExact
        (fun a => Classical.propDecidable (s.memaddrs a)) e =
      @evalHOLExact width σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e := by
  have h1 := @evalHOLExact_upd_clock_eq width σ _
    ({ s with locals := L } : PanSemStateFiniteExact width σ).toExact
    (fun a => Classical.propDecidable (s.memaddrs a)) e c
  have h2 := @evalHOLExact_locals_ok width _ σ s.toExact
    (fun a => Classical.propDecidable (s.memaddrs a)) ok L.lookup hL e hr
  exact h1.trans h2

/-! ## Agreement -/

def Agree (ok : MlS → Bool) (s t : PanSemStateFiniteExact width σ) : Prop :=
  ∃ (L : HolFiniteMapExact MlS (ValueHOL width)) (c : Nat),
    t = { s with locals := L, clock := c } ∧
    (∀ y, ok y = true → L.lookup y = s.locals.lookup y) ∧
    (∀ y, (L.lookup y).map shapeOfHOLExact = (s.locals.lookup y).map shapeOfHOLExact)

theorem agree_refl (ok : MlS → Bool) (s : PanSemStateFiniteExact width σ) (c : Nat) :
    Agree ok s { s with clock := c } :=
  ⟨s.locals, c, rfl, fun _ _ => rfl, fun _ => rfl⟩

theorem agree_setVar {ok : MlS → Bool} {s t : PanSemStateFiniteExact width σ} (h : Agree ok s t)
    (y : MlS) (v : ValueHOL width) :
    Agree ok (setVarHOLFinite y v s) (setVarHOLFinite y v t) := by
  obtain ⟨L, c, rfl, hok, hsh⟩ := h
  refine ⟨L.update (y, v), c, rfl, ?_, ?_⟩
  · intro z hz
    by_cases hzy : y = z
    · subst hzy; simp [setVarHOLFinite, FUPDATE]
    · simp [setVarHOLFinite, FUPDATE, hzy, hok z hz]
  · intro z
    by_cases hzy : y = z
    · subst hzy; simp [setVarHOLFinite, FUPDATE]
    · simp [setVarHOLFinite, FUPDATE, hzy, hsh z]

theorem isValid_agree {s : PanSemStateFiniteExact width σ} {L : HolFiniteMapExact MlS (ValueHOL width)}
    {c : Nat} {y : MlS} {v : ValueHOL width}
    (h : (L.lookup y).map shapeOfHOLExact = (s.locals.lookup y).map shapeOfHOLExact) :
    isValidValueHOLFinite ({ s with locals := L, clock := c } : PanSemStateFiniteExact width σ)
        .local y v = isValidValueHOLFinite s .local y v := by
  unfold isValidValueHOLFinite lookupKvarHOLFinite
  dsimp only
  cases h1 : L.lookup y <;> cases h2 : s.locals.lookup y <;> simp_all

/-! ## The program class -/

/-- Normal-exit and result non-interference. -/
def NI (σ : Type) (ok : MlS → Bool) (p : ProgHOL width) : Prop :=
  ∀ s t : PanSemStateFiniteExact width σ, Agree ok s t →
    (evaluateHOLFiniteState s p).1 = (evaluateHOLFiniteState t p).1 ∧
    ((evaluateHOLFiniteState s p).1 = none →
      Agree ok (evaluateHOLFiniteState s p).2 (evaluateHOLFiniteState t p).2)

def niB (ok : MlS → Bool) : ProgHOL width → Bool
  | .skip | .break | .annot _ _ => true
  | .assign .local _ e => rdOk ok e
  | .ite c a b => rdOk ok c && niB ok a && niB ok b
  | .seq a b => niB ok a && niB ok b
  | .dec y _ e b => ok y && rdOk ok e && niB ok b
  | _ => false

theorem ni_skip (ok : MlS → Bool) : NI σ ok (.skip : ProgHOL width) := by
  intro s t hst
  rw [evaluateHOLFiniteState_eq_evaluate_def s, evaluateHOLFiniteState_eq_evaluate_def t]
  exact ⟨rfl, fun _ => hst⟩

theorem ni_break (ok : MlS → Bool) : NI σ ok (.break : ProgHOL width) := by
  intro s t _
  rw [evaluateHOLFiniteState_eq_evaluate_def s, evaluateHOLFiniteState_eq_evaluate_def t]
  exact ⟨rfl, fun h => by cases h⟩

theorem ni_annot (ok : MlS → Bool) (a b : MlS) : NI σ ok (.annot a b : ProgHOL width) := by
  intro s t hst
  rw [evaluateHOLFiniteState_eq_evaluate_def s, evaluateHOLFiniteState_eq_evaluate_def t]
  exact ⟨rfl, fun _ => hst⟩

theorem ni_assign {ok : MlS → Bool} {y : MlS} {e : ExpHOL width} (hr : rdOk ok e = true) :
    NI σ ok (.assign .local y e) := by
  rintro s _ ⟨L, c, rfl, hok, hsh⟩
  have hag : Agree ok s ({ s with locals := L, clock := c } : PanSemStateFiniteExact width σ) :=
    ⟨L, c, rfl, hok, hsh⟩
  rw [evaluateHOLFiniteState_eq_evaluate_def s,
    evaluateHOLFiniteState_eq_evaluate_def { s with locals := L, clock := c }]
  dsimp only
  rw [eval_agree hok hr]
  cases hv : @evalHOLExact width σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e with
  | none => exact ⟨rfl, fun h => by cases h⟩
  | some v =>
    dsimp only
    rw [isValid_agree (hsh y)]
    split
    · exact ⟨rfl, fun _ => agree_setVar hag y v⟩
    · exact ⟨rfl, fun h => by cases h⟩

theorem ni_seq {ok : MlS → Bool} {a b : ProgHOL width} (ha : NI σ ok a) (hb : NI σ ok b) :
    NI σ ok (.seq a b) := by
  intro s t hst
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b),
    evaluateHOLFiniteState_eq_evaluate_def t (.seq a b)]
  dsimp only
  obtain ⟨h1, h2⟩ := ha s t hst
  rw [← h1]
  cases hs : (evaluateHOLFiniteState s a).1 with
  | none =>
      dsimp only
      exact hb _ _ (h2 hs)
  | some r =>
      dsimp only
      rw [hs, h1.symm.trans hs]
      exact ⟨rfl, fun h => by cases h⟩

theorem ni_ite {ok : MlS → Bool} {c : ExpHOL width} {a b : ProgHOL width} (hr : rdOk ok c = true)
    (ha : NI σ ok a) (hb : NI σ ok b) : NI σ ok (.ite c a b) := by
  rintro s _ ⟨L, c', rfl, hok, hsh⟩
  have hag : Agree ok s ({ s with locals := L, clock := c' } : PanSemStateFiniteExact width σ) :=
    ⟨L, c', rfl, hok, hsh⟩
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b),
    evaluateHOLFiniteState_eq_evaluate_def { s with locals := L, clock := c' } (.ite c a b)]
  dsimp only
  rw [eval_agree hok hr]
  generalize @evalHOLExact width σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) c = X
  rcases X with _ | ⟨⟨w⟩⟩ | _ | _
  · exact ⟨rfl, fun h => by cases h⟩
  · dsimp only
    split
    · exact hb _ _ hag
    · exact ha _ _ hag
  · exact ⟨rfl, fun h => by cases h⟩
  · exact ⟨rfl, fun h => by cases h⟩

theorem ni_dec {ok : MlS → Bool} {y : MlS} {sh : ShapeHOL} {e : ExpHOL width} {b : ProgHOL width}
    (hy : ok y = true) (hr : rdOk ok e = true) (hb : NI σ ok b) : NI σ ok (.dec y sh e b) := by
  rintro s _ ⟨L, c', rfl, hok, hsh⟩
  have hag : Agree ok s ({ s with locals := L, clock := c' } : PanSemStateFiniteExact width σ) :=
    ⟨L, c', rfl, hok, hsh⟩
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec y sh e b),
    evaluateHOLFiniteState_eq_evaluate_def { s with locals := L, clock := c' } (.dec y sh e b)]
  dsimp only
  rw [eval_agree hok hr]
  generalize @evalHOLExact width σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e = X
  rcases X with _ | v
  · exact ⟨rfl, fun h => by cases h⟩
  · dsimp only
    split
    · obtain ⟨h1, h2⟩ := hb _ _ (agree_setVar hag y v)
      refine ⟨h1, fun hn => ?_⟩
      obtain ⟨L2, c2, he, hok2, hsh2⟩ := h2 hn
      rw [he]
      refine ⟨(L2.resVarEq (y, L.lookup y)), c2, ?_, ?_, ?_⟩
      · rw [hok y hy]
      · intro z hz
        simp only [lookup_resVarEq_restore]
        split
        · rename_i hzy; subst hzy; rw [hok z hy]
        · exact hok2 z hz
      · intro z
        simp only [lookup_resVarEq_restore]
        split
        · rename_i hzy; subst hzy; exact hsh z
        · exact hsh2 z
    · exact ⟨rfl, fun h => by cases h⟩

theorem niB_sound (ok : MlS → Bool) : ∀ p : ProgHOL width, niB ok p = true → NI σ ok p
  | .skip, _ => ni_skip ok
  | .break, _ => ni_break ok
  | .annot _ _, _ => ni_annot ok _ _
  | .assign .local _ e, h => ni_assign (by simpa [niB] using h)
  | .ite _ a b, h => by
      simp only [niB, Bool.and_eq_true] at h
      exact ni_ite h.1.1 (niB_sound ok a h.1.2) (niB_sound ok b h.2)
  | .seq a b, h => by
      simp only [niB, Bool.and_eq_true] at h
      exact ni_seq (niB_sound ok a h.1) (niB_sound ok b h.2)
  | .dec _ _ _ b, h => by
      simp only [niB, Bool.and_eq_true] at h
      exact ni_dec h.1.1 h.1.2 (niB_sound ok b h.2)
  | .assign .global _ _, h | .continue, h | .tick, h | .while _ _, h => by simp [niB] at h
  | .primitive _ _ _, h | .store _ _, h | .store32 _ _, h | .storeByte _ _, h => by
      simp [niB] at h
  | .call _ _ _, h | .decCall _ _ _ _ _, h | .extCall _ _ _ _ _, h | .raise _ _, h => by
      simp [niB] at h
  | .return _, h | .shMemLoad _ _ _ _, h | .shMemStore _ _ _, h => by simp [niB] at h

/-! ## Frame -/

/-- On normal exit only locals accepted by `A` change, shapes are kept, and every other
field (the clock included) is unchanged. -/
def FrameOk (A : MlS → Bool) (s t : PanSemStateFiniteExact width σ) : Prop :=
  ∃ L : HolFiniteMapExact MlS (ValueHOL width),
    t = { s with locals := L } ∧
    (∀ y, A y = false → L.lookup y = s.locals.lookup y) ∧
    (∀ y, (L.lookup y).map shapeOfHOLExact = (s.locals.lookup y).map shapeOfHOLExact)

def Frame (σ : Type) (A : MlS → Bool) (p : ProgHOL width) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, (evaluateHOLFiniteState s p).1 = none →
    FrameOk A s (evaluateHOLFiniteState s p).2

def assignsB (A : MlS → Bool) : ProgHOL width → Bool
  | .skip | .break | .annot _ _ => true
  | .assign .local y _ => A y
  | .ite _ a b => assignsB A a && assignsB A b
  | .seq a b => assignsB A a && assignsB A b
  | .dec _ _ _ b => assignsB A b
  | _ => false

theorem frameOk_refl (A : MlS → Bool) (s : PanSemStateFiniteExact width σ) : FrameOk A s s :=
  ⟨s.locals, rfl, fun _ _ => rfl, fun _ => rfl⟩

theorem frameOk_trans {A : MlS → Bool} {s t u : PanSemStateFiniteExact width σ}
    (h1 : FrameOk A s t) (h2 : FrameOk A t u) : FrameOk A s u := by
  obtain ⟨L1, rfl, hk1, hs1⟩ := h1
  obtain ⟨L2, rfl, hk2, hs2⟩ := h2
  exact ⟨L2, rfl, fun y hy => (hk2 y hy).trans (hk1 y hy), fun y => (hs2 y).trans (hs1 y)⟩

theorem shapeEqHOL_eq {a b : ShapeHOL} (h : shapeEqHOL a b = true) : a = b :=
  (shapeEqHOL_eq_true a b).mp h

theorem frame_leaf {A : MlS → Bool} {p : ProgHOL width}
    (h : ∀ s : PanSemStateFiniteExact width σ, (evaluateHOLFiniteState s p).1 = none →
      (evaluateHOLFiniteState s p).2 = s) : Frame σ A p := by
  intro s hn
  rw [h s hn]
  exact frameOk_refl A s

theorem frame_assign {A : MlS → Bool} {y : MlS} {e : ExpHOL width} (hy : A y = true) :
    Frame σ A (.assign .local y e) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s]
  dsimp only
  split
  · intro h; cases h
  · rename_i v _
    split
    · rename_i hval
      intro _
      refine ⟨s.locals.update (y, v), rfl, ?_, ?_⟩
      · intro z hz
        have : y ≠ z := fun h => by subst h; rw [hy] at hz; cases hz
        simp [FUPDATE, this]
      · intro z
        by_cases hzy : y = z
        · subst hzy
          unfold isValidValueHOLFinite lookupKvarHOLFinite at hval
          dsimp only at hval
          split at hval
          · rename_i ex hex
            simp [FUPDATE, hex, shapeEqHOL_eq hval]
          · cases hval
        · simp [FUPDATE, hzy]
    · intro h; cases h

theorem frame_seq {A : MlS → Bool} {a b : ProgHOL width} (ha : Frame σ A a) (hb : Frame σ A b) :
    Frame σ A (.seq a b) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      intro h2
      exact frameOk_trans (ha s h1) (hb _ h2)
  | some r => intro h2; simp [h1] at h2

theorem frame_ite {A : MlS → Bool} {c : ExpHOL width} {a b : ProgHOL width} (ha : Frame σ A a)
    (hb : Frame σ A b) : Frame σ A (.ite c a b) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
  dsimp only
  split
  · split
    · exact hb s
    · exact ha s
  · intro h; cases h

theorem frame_dec {A : MlS → Bool} {y : MlS} {sh : ShapeHOL} {e : ExpHOL width} {b : ProgHOL width}
    (hb : Frame σ A b) : Frame σ A (.dec y sh e b) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec y sh e b)]
  dsimp only
  split
  · intro h; cases h
  · rename_i v _
    split
    · intro hn
      obtain ⟨L, he, hk, hs⟩ := hb _ hn
      rw [he]
      refine ⟨L.resVarEq (y, s.locals.lookup y), rfl, ?_, ?_⟩
      · intro z hz
        simp only [lookup_resVarEq_restore]
        split
        · rename_i hzy; subst hzy; rfl
        · rename_i hzy
          rw [hk z hz]
          simp [setVarHOLFinite, FUPDATE, Ne.symm hzy]
      · intro z
        simp only [lookup_resVarEq_restore]
        split
        · rename_i hzy; subst hzy; rfl
        · rename_i hzy
          rw [hs z]
          simp [setVarHOLFinite, FUPDATE, Ne.symm hzy]
    · intro h; cases h

theorem assignsB_sound (A : MlS → Bool) : ∀ p : ProgHOL width, assignsB A p = true → Frame σ A p
  | .skip, _ => frame_leaf fun s _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .break, _ => frame_leaf fun s h => by
      rw [evaluateHOLFiniteState_eq_evaluate_def] at h; cases h
  | .annot _ _, _ => frame_leaf fun s _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .assign .local _ _, h => frame_assign (by simpa [assignsB] using h)
  | .ite _ a b, h => by
      simp only [assignsB, Bool.and_eq_true] at h
      exact frame_ite (assignsB_sound A a h.1) (assignsB_sound A b h.2)
  | .seq a b, h => by
      simp only [assignsB, Bool.and_eq_true] at h
      exact frame_seq (assignsB_sound A a h.1) (assignsB_sound A b h.2)
  | .dec _ _ _ b, h => frame_dec (assignsB_sound A b h)
  | .assign .global _ _, h | .continue, h | .tick, h | .while _ _, h => by simp [assignsB] at h
  | .primitive _ _ _, h | .store _ _, h | .store32 _ _, h | .storeByte _ _, h => by
      simp [assignsB] at h
  | .call _ _ _, h | .decCall _ _ _ _ _, h | .extCall _ _ _ _ _, h | .raise _ _, h => by
      simp [assignsB] at h
  | .return _, h | .shMemLoad _ _ _ _, h | .shMemStore _ _ _, h => by simp [assignsB] at h

end InitECandidate.Solver.SourceCost
