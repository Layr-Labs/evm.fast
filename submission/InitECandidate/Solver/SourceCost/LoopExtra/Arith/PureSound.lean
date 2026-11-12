import InitECandidate.Solver.SourceCost.LoopExtra.Arith.Pure

/-! # Soundness of the purity-and-frame checker `pfB` -/

namespace InitECandidate.Solver.SourceCost.Arith
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {C : CodeMap width}

theorem good_error {st : PanSemStateFiniteExact width σ} :
    ¬ Good ((some .error, st) : Option (PanSemResultExact width) × _).1 := by simp [Good]
theorem good_timeOut {st : PanSemStateFiniteExact width σ} :
    ¬ Good ((some .timeOut, st) : Option (PanSemResultExact width) × _).1 := by simp [Good]

theorem pf_skip (Γ A Sh) (s : PanSemStateFiniteExact width σ) : PFat C Γ A Sh (.skip : ProgHOL width) s := by
  intro _ _ _
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  exact ⟨nonLoc_refl s, fun _ => frameSh_refl _ _ s⟩
theorem pf_break (Γ A Sh) (s : PanSemStateFiniteExact width σ) : PFat C Γ A Sh (.break : ProgHOL width) s := by
  intro _ _ _
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  exact ⟨nonLoc_refl s, fun _ => frameSh_refl _ _ s⟩
theorem pf_continue (Γ A Sh) (s : PanSemStateFiniteExact width σ) :
    PFat C Γ A Sh (.continue : ProgHOL width) s := by
  intro _ _ _
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  exact ⟨nonLoc_refl s, fun _ => frameSh_refl _ _ s⟩
theorem pf_annot (Γ A Sh) (a b : MlS) (s : PanSemStateFiniteExact width σ) :
    PFat C Γ A Sh (.annot a b : ProgHOL width) s := by
  intro _ _ _
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  exact ⟨nonLoc_refl s, fun _ => frameSh_refl _ _ s⟩
theorem pf_tick (Γ A Sh) (s : PanSemStateFiniteExact width σ) : PFat C Γ A Sh (.tick : ProgHOL width) s := by
  intro _ _ hg
  revert hg
  rw [evaluateHOLFiniteState_tick]
  split
  · intro hg; exact absurd hg good_timeOut
  · intro _
    exact ⟨⟨s.locals, s.clock - 1, rfl⟩, fun _ => frameSh_of_locals rfl⟩

theorem pf_raise (Γ A Sh) (x : MlS) (e : ExpHOL width) (s : PanSemStateFiniteExact width σ) :
    PFat C Γ A Sh (.raise x e) s := by
  intro _ _ hg
  revert hg
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · split
    · intro _
      exact ⟨nonLoc_empty (nonLoc_refl s), fun h => by simp [LoopExit] at h⟩
    · intro hg; exact absurd hg good_error
  · intro hg; exact absurd hg good_error

theorem pf_return (Γ A Sh) (e : ExpHOL width) (s : PanSemStateFiniteExact width σ) :
    PFat C Γ A Sh (.return e) s := by
  intro _ _ hg
  revert hg
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · intro hg; exact absurd hg good_error
  · split
    · intro _
      exact ⟨nonLoc_empty (nonLoc_refl s), fun h => by simp [LoopExit] at h⟩
    · intro hg; exact absurd hg good_error

theorem pf_assign {Γ : List (MlS × ShapeHOL)} {A : MlS → Bool} {Sh : List (MlS × ShapeHOL)}
    {y : MlS} {e : ExpHOL width} (hb : (A y && shOk Sh y (expShape Γ e)) = true)
    (s : PanSemStateFiniteExact width σ) : PFat C Γ A Sh (.assign .local y e) s := by
  intro _ hΓ hg
  simp only [Bool.and_eq_true] at hb
  revert hg
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.assign .local y e)]
  dsimp only
  split
  · intro hg; exact absurd hg good_error
  · rename_i v hv
    split
    · rename_i hval
      intro _
      obtain ⟨ex, hex, hsh⟩ := isValidF_shape hval
      refine ⟨nonLoc_setVar (nonLoc_refl s) y v, fun _ => frameSh_setVar rfl hb.1 hex hsh ?_⟩
      intro sh hsh'
      exact @expShape_sound width _ σ Γ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) hΓ e sh v (shOk_some hb.2 hsh') hv
    · intro hg; exact absurd hg good_error

theorem pf_primitive {Γ : List (MlS × ShapeHOL)} {A : MlS → Bool} {Sh : List (MlS × ShapeHOL)}
    {y : MlS} {o : PrimOp} {args : List (ExpHOL width)}
    (hb : (A y && shOk Sh y (some (.comb [.one, .one]))) = true)
    (s : PanSemStateFiniteExact width σ) : PFat C Γ A Sh (.primitive y o args) s := by
  intro _ _ hg
  simp only [Bool.and_eq_true] at hb
  revert hg
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.primitive y o args)]
  dsimp only
  split
  · intro hg; exact absurd hg good_error
  · split
    · intro hg; exact absurd hg good_error
    · rename_i v hv
      split
      · rename_i hval
        intro _
        obtain ⟨ex, hex, hsh⟩ := isValidF_shape hval
        refine ⟨nonLoc_setVar (nonLoc_refl s) y v, fun _ => frameSh_setVar rfl hb.1 hex hsh ?_⟩
        intro sh hsh'
        have := shOk_some hb.2 hsh'
        simp only [Option.some.injEq] at this
        rw [← this]; exact primop_shape hv
      · intro hg; exact absurd hg good_error

theorem pf_seq {Γ : List (MlS × ShapeHOL)} {A : MlS → Bool} {Sh : List (MlS × ShapeHOL)}
    {a b : ProgHOL width} {k : Nat}
    (ha : ∀ s : PanSemStateFiniteExact width σ, s.clock ≤ k → PFat C Γ A Sh a s)
    (hb : ∀ s : PanSemStateFiniteExact width σ, s.clock ≤ k → PFat C Γ A Sh b s)
    (s : PanSemStateFiniteExact width σ) (hk : s.clock ≤ k) : PFat C Γ A Sh (.seq a b) s := by
  intro hc hΓ hg
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)] at hg ⊢
  dsimp only at hg ⊢
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      simp only [h1] at hg ⊢
      obtain ⟨n1, f1⟩ := ha s hk hc hΓ (by rw [h1]; exact good_none)
      have f1 := f1 (Or.inl h1)
      have hc' : (evaluateHOLFiniteState s a).2.code = C := (code_preserved s a).trans hc
      have hk' := Nat.le_trans (evaluateHOLFiniteState_clock_le s a) hk
      obtain ⟨n2, f2⟩ := hb _ hk' hc' (gsat_of_shapes hΓ f1.2.1) hg
      exact ⟨nonLoc_trans n1 n2, fun h => frameSh_trans f1 (f2 h)⟩
  | some r =>
      simp only [h1] at hg ⊢
      have := ha s hk hc hΓ (by rw [h1]; exact hg)
      rw [h1] at this
      exact this

theorem pf_ite {Γ : List (MlS × ShapeHOL)} {A : MlS → Bool} {Sh : List (MlS × ShapeHOL)}
    {c : ExpHOL width} {a b : ProgHOL width} {k : Nat}
    (ha : ∀ s : PanSemStateFiniteExact width σ, s.clock ≤ k → PFat C Γ A Sh a s)
    (hb : ∀ s : PanSemStateFiniteExact width σ, s.clock ≤ k → PFat C Γ A Sh b s)
    (s : PanSemStateFiniteExact width σ) (hk : s.clock ≤ k) : PFat C Γ A Sh (.ite c a b) s := by
  intro hc hΓ hg
  revert hg
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
  dsimp only
  split
  · split
    · exact hb s hk hc hΓ
    · exact ha s hk hc hΓ
  · intro hg; exact absurd hg good_error

theorem pf_dec {Γ : List (MlS × ShapeHOL)} {A : MlS → Bool} {Sh : List (MlS × ShapeHOL)}
    {z : MlS} {sh : ShapeHOL} {e : ExpHOL width} {b : ProgHOL width} {k : Nat}
    (hb : ∀ s : PanSemStateFiniteExact width σ, s.clock ≤ k →
      PFat C ((z, sh) :: Γ) (addA A z) (eraseSh Sh z) b s)
    (s : PanSemStateFiniteExact width σ) (hk : s.clock ≤ k) : PFat C Γ A Sh (.dec z sh e b) s := by
  intro hc hΓ hg
  revert hg
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec z sh e b)]
  dsimp only
  split
  · intro hg; exact absurd hg good_error
  · rename_i v hv
    split
    · rename_i hsh
      intro hg
      have hsh' : shapeOfHOLExact v = sh := ((shapeEqHOL_eq_true _ _).mp hsh).symm
      obtain ⟨n1, f1⟩ := hb (setVarHOLFinite z v s) hk hc (gsat_cons_setVar hΓ z sh v hsh') hg
      refine ⟨nonLoc_locals (nonLoc_trans (nonLoc_setVar (nonLoc_refl s) z v) n1) _, fun h => ?_⟩
      exact frameSh_restore rfl (f1 h)
    · intro hg; exact absurd hg good_error

theorem pf_while {Γ : List (MlS × ShapeHOL)} {A : MlS → Bool} {Sh : List (MlS × ShapeHOL)}
    {c : ExpHOL width} {b : ProgHOL width} {k : Nat}
    (hb : ∀ s : PanSemStateFiniteExact width σ, s.clock < k → PFat C Γ A Sh b s)
    (hw : ∀ s : PanSemStateFiniteExact width σ, s.clock < k → PFat C Γ A Sh (.while c b) s)
    (s : PanSemStateFiniteExact width σ) (hk : s.clock ≤ k) : PFat C Γ A Sh (.while c b) s := by
  intro hc hΓ hg
  revert hg
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c b)]
  dsimp only
  split
  · split
    · split
      · intro hg; exact absurd hg good_timeOut
      · rename_i hclock
        have hd : (decClockHOLFinite s).clock < k := by
          simp only [decClockHOLFinite]; omega
        have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) b).2.clock < k :=
          Nat.lt_of_le_of_lt (evaluateHOLFiniteState_clock_le _ b) hd
        have hcd : (decClockHOLFinite s).code = C := hc
        have hc' : (evaluateHOLFiniteState (decClockHOLFinite s) b).2.code = C :=
          (code_preserved _ b).trans hcd
        have n0 : NonLoc s (decClockHOLFinite s) := ⟨s.locals, s.clock - 1, rfl⟩
        have f0 : FrameSh A Sh s (decClockHOLFinite s) := frameSh_of_locals rfl
        have hbody := hb (decClockHOLFinite s) hd hcd hΓ
        cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) b).1 with
        | none =>
            simp only []
            intro hg
            obtain ⟨n1, f1⟩ := hbody (by rw [ho]; exact good_none)
            have f1 := frameSh_trans f0 (f1 (Or.inl ho))
            obtain ⟨n2, f2⟩ := hw _ hlt hc' (gsat_of_shapes hΓ f1.2.1) hg
            exact ⟨nonLoc_trans (nonLoc_trans n0 n1) n2, fun h => frameSh_trans f1 (f2 h)⟩
        | some r =>
            cases r with
            | «continue» =>
                simp only []
                intro hg
                obtain ⟨n1, f1⟩ := hbody (by rw [ho]; simp [Good])
                have f1 := frameSh_trans f0 (f1 (Or.inr (Or.inl ho)))
                obtain ⟨n2, f2⟩ := hw _ hlt hc' (gsat_of_shapes hΓ f1.2.1) hg
                exact ⟨nonLoc_trans (nonLoc_trans n0 n1) n2, fun h => frameSh_trans f1 (f2 h)⟩
            | «break» =>
                simp only []
                intro _
                obtain ⟨n1, f1⟩ := hbody (by rw [ho]; simp [Good])
                exact ⟨nonLoc_trans n0 n1, fun _ => frameSh_trans f0 (f1 (Or.inr (Or.inr ho)))⟩
            | _ =>
                simp only []
                intro hg
                obtain ⟨n1, _⟩ := hbody (by rw [ho]; exact hg)
                exact ⟨nonLoc_trans n0 n1, fun h => by simp [LoopExit] at h⟩
    · intro _; exact ⟨nonLoc_refl s, fun _ => frameSh_refl _ _ s⟩
  · intro hg; exact absurd hg good_error

/-- A good run of a pure callee changes only locals and the clock. -/
theorem callee_nonLoc {pt : List (MlS × ShapeHOL)} (hpt : PureTbl σ C pt) {f : MlS} {sh : ShapeHOL}
    (hf : pt.lookup f = some sh) {s : PanSemStateFiniteExact width σ} (hc : s.code = C)
    {vs : List (ValueHOL width)} {body : ProgHOL width} {callee : HolFiniteMapExact MlS (ValueHOL width)}
    {rs : ShapeHOL} (hl : lookupCodeHOLFinite s.code.lookup f vs = some (body, callee, rs))
    {r : Option (PanSemResultExact width)} {st : PanSemStateFiniteExact width σ}
    (he : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = (r, st)) (hr : Good r) :
    rs = sh ∧ ∃ (L : HolFiniteMapExact MlS (ValueHOL width)) (k : Nat),
      st = { s with locals := L, clock := k } := by
  obtain ⟨hrs, hpf⟩ := hpt f sh hf vs body callee rs (by rw [← hc]; exact hl)
  have := hpf (callEntryStateHOLFinite s callee) (by simp [callEntryStateHOLFinite, hc])
    (gsat_nil _) (by rw [he]; exact hr)
  rw [he] at this
  dsimp only at this
  obtain ⟨⟨L, k, hst⟩, _⟩ := this
  exact ⟨hrs, L, k, by rw [hst]; rfl⟩

theorem pf_call_none {pt : List (MlS × ShapeHOL)} (hpt : PureTbl σ C pt)
    {Γ : List (MlS × ShapeHOL)} {A : MlS → Bool} {Sh : List (MlS × ShapeHOL)}
    {f : MlS} {args : List (ExpHOL width)} {sh : ShapeHOL} (hf : pt.lookup f = some sh)
    (s : PanSemStateFiniteExact width σ) : PFat C Γ A Sh (.call none f args) s := by
  intro hc _ hg
  revert hg
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call none f args)]
  dsimp only
  split
  · intro hg; exact absurd hg good_error
  · rename_i vs _
    split
    · intro hg; exact absurd hg good_error
    · rename_i body callee rs hl
      split
      · intro hg; exact absurd hg good_timeOut
      · generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
        obtain ⟨r, st⟩ := E
        rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals (try (intro hg; simp [Good] at hg; done))
        all_goals (try (intro hg; simp [Good] at hg; done))
        all_goals (try split)
        all_goals (try (intro hg; simp [Good] at hg; done))
        all_goals intro hg
        all_goals first
          | (obtain ⟨-, L, k, rfl⟩ := callee_nonLoc hpt hf hc hl hE (by simp [Good])
             exact ⟨⟨_, k, rfl⟩, fun h => by simp [LoopExit] at h⟩)

theorem pf_call_some_none {pt : List (MlS × ShapeHOL)} (hpt : PureTbl σ C pt)
    {Γ : List (MlS × ShapeHOL)} {A : MlS → Bool} {Sh : List (MlS × ShapeHOL)}
    {f : MlS} {args : List (ExpHOL width)} {sh : ShapeHOL} (hf : pt.lookup f = some sh)
    (s : PanSemStateFiniteExact width σ) : PFat C Γ A Sh (.call (some (none, none)) f args) s := by
  intro hc _ hg
  revert hg
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call (some (none, none)) f args)]
  dsimp only
  split
  · intro hg; exact absurd hg good_error
  · rename_i vs _
    split
    · intro hg; exact absurd hg good_error
    · rename_i body callee rs hl
      split
      · intro hg; exact absurd hg good_timeOut
      · generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
        obtain ⟨r, st⟩ := E
        rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals (try (intro hg; simp [Good] at hg; done))
        all_goals (try (intro hg; simp [Good] at hg; done))
        all_goals (try split)
        all_goals (try (intro hg; simp [Good] at hg; done))
        all_goals intro hg
        all_goals first
          | (obtain ⟨-, L, k, rfl⟩ := callee_nonLoc hpt hf hc hl hE (by simp [Good])
             exact ⟨⟨_, k, rfl⟩, fun _ => frameSh_of_locals rfl⟩)
          | (obtain ⟨-, L, k, rfl⟩ := callee_nonLoc hpt hf hc hl hE (by simp [Good])
             exact ⟨⟨_, k, rfl⟩, fun h => by simp [LoopExit] at h⟩)

theorem pf_call_local {pt : List (MlS × ShapeHOL)} (hpt : PureTbl σ C pt)
    {Γ : List (MlS × ShapeHOL)} {A : MlS → Bool} {Sh : List (MlS × ShapeHOL)}
    {f y : MlS} {args : List (ExpHOL width)} {sh : ShapeHOL} (hf : pt.lookup f = some sh)
    (hA : A y = true) (hSh : shOk Sh y (pt.lookup f) = true)
    (s : PanSemStateFiniteExact width σ) :
    PFat C Γ A Sh (.call (some (some (.local, y), none)) f args) s := by
  intro hc _ hg
  revert hg
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call (some (some (.local, y), none)) f args)]
  dsimp only
  split
  · intro hg; exact absurd hg good_error
  · rename_i vs _
    split
    · intro hg; exact absurd hg good_error
    · rename_i body callee rs hl
      split
      · intro hg; exact absurd hg good_timeOut
      · generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
        obtain ⟨r, st⟩ := E
        rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals (try (intro hg; simp [Good] at hg; done))
        all_goals (try (intro hg; simp [Good] at hg; done))
        · -- returned
          split
          · rename_i hrs
            split
            · rename_i hval
              intro _
              obtain ⟨hrs', L, k, rfl⟩ := callee_nonLoc hpt hf hc hl hE (by simp [Good])
              obtain ⟨ex, hex, hsh⟩ := isValid_shape hval
              refine ⟨nonLoc_setVar ⟨_, k, rfl⟩ y v, fun _ => frameSh_setVar rfl hA hex hsh ?_⟩
              intro sh0 hsh0
              have := shOk_some hSh hsh0
              rw [hf, Option.some.injEq] at this
              subst this
              rw [← hrs']
              exact (shapeEqHOL_eq_true _ _).mp hrs
            · intro hg; exact absurd hg good_error
          · intro hg; exact absurd hg good_error
        · intro _
          obtain ⟨-, L, k, rfl⟩ := callee_nonLoc hpt hf hc hl hE (by simp [Good])
          exact ⟨⟨_, k, rfl⟩, fun h => by simp [LoopExit] at h⟩
        · intro _
          obtain ⟨-, L, k, rfl⟩ := callee_nonLoc hpt hf hc hl hE (by simp [Good])
          exact ⟨⟨_, k, rfl⟩, fun h => by simp [LoopExit] at h⟩

theorem pf_decCall {pt : List (MlS × ShapeHOL)} (hpt : PureTbl σ C pt)
    {Γ : List (MlS × ShapeHOL)} {A : MlS → Bool} {Sh : List (MlS × ShapeHOL)}
    {rn f : MlS} {dsh : ShapeHOL} {args : List (ExpHOL width)} {kp : ProgHOL width}
    {sh : ShapeHOL} (hf : pt.lookup f = some sh) {k : Nat}
    (hk' : ∀ s : PanSemStateFiniteExact width σ, s.clock < k →
      PFat C ((rn, dsh) :: Γ) (addA A rn) (eraseSh Sh rn) kp s)
    (s : PanSemStateFiniteExact width σ) (hk : s.clock ≤ k) :
    PFat C Γ A Sh (.decCall rn dsh f args kp) s := by
  intro hc hΓ hg
  revert hg
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn dsh f args kp)]
  dsimp only
  split
  · intro hg; simp [Good] at hg
  · rename_i vs _
    split
    · intro hg; simp [Good] at hg
    · rename_i body callee rs hl
      split
      · intro hg; simp [Good] at hg
      · rename_i hclock
        have hcl := evaluateHOLFiniteState_clock_le (callEntryStateHOLFinite s callee) body
        generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E at hcl
        obtain ⟨r, st⟩ := E
        simp only [callEntryStateHOLFinite] at hcl
        rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals (try (intro hg; simp [Good] at hg; done))
        · -- returned
          split
          · rename_i hsh
            intro hg
            simp only [Bool.and_eq_true] at hsh
            obtain ⟨-, L, k1, rfl⟩ := callee_nonLoc hpt hf hc hl hE (by simp [Good])
            have hvsh : shapeOfHOLExact v = dsh := (shapeEqHOL_eq_true _ _).mp hsh.1
            have hlt : k1 < k := by simp only at hcl; omega
            let t : PanSemStateFiniteExact width σ :=
              { ({ s with locals := L, clock := k1 } : PanSemStateFiniteExact width σ) with
                locals := s.locals }
            have ht : t.locals = s.locals := rfl
            have hΓt : GSat Γ t := hΓ
            obtain ⟨n1, f1⟩ := hk' (setVarHOLFinite rn v t) hlt hc
              (gsat_cons_setVar hΓt rn dsh v hvsh) hg
            refine ⟨nonLoc_locals (nonLoc_trans (nonLoc_setVar ⟨_, k1, rfl⟩ rn v) n1) _, fun h => ?_⟩
            exact frameSh_restore ht (f1 h)
          · intro hg; simp [Good] at hg
        · intro _
          obtain ⟨-, L, k1, rfl⟩ := callee_nonLoc hpt hf hc hl hE (by simp [Good])
          exact ⟨⟨_, k1, rfl⟩, fun h => by simp [LoopExit] at h⟩
        · intro _
          obtain ⟨-, L, k1, rfl⟩ := callee_nonLoc hpt hf hc hl hE (by simp [Good])
          exact ⟨⟨_, k1, rfl⟩, fun h => by simp [LoopExit] at h⟩

/-- One clock level of `pfB_sound`. -/
theorem pf_level {pt : List (MlS × ShapeHOL)} (hpt : PureTbl σ C pt) (k : Nat)
    (ih : ∀ m < k, ∀ (p : ProgHOL width) Γ A Sh (s : PanSemStateFiniteExact width σ),
      pfB pt Γ A Sh p = true → s.clock ≤ m → PFat C Γ A Sh p s) :
    ∀ (p : ProgHOL width) Γ A Sh (s : PanSemStateFiniteExact width σ),
      pfB pt Γ A Sh p = true → s.clock ≤ k → PFat C Γ A Sh p s
  | .skip, Γ, A, Sh, s, _, _ => pf_skip Γ A Sh s
  | .break, Γ, A, Sh, s, _, _ => pf_break Γ A Sh s
  | .continue, Γ, A, Sh, s, _, _ => pf_continue Γ A Sh s
  | .annot _ _, Γ, A, Sh, s, _, _ => pf_annot Γ A Sh _ _ s
  | .tick, Γ, A, Sh, s, _, _ => pf_tick Γ A Sh s
  | .raise _ _, Γ, A, Sh, s, _, _ => pf_raise Γ A Sh _ _ s
  | .return _, Γ, A, Sh, s, _, _ => pf_return Γ A Sh _ s
  | .assign .local _ _, Γ, A, Sh, s, h, _ => pf_assign (by simpa [pfB] using h) s
  | .primitive _ _ _, Γ, A, Sh, s, h, _ => pf_primitive (by simpa [pfB] using h) s
  | .seq a b, Γ, A, Sh, s, h, hk => by
      simp only [pfB, Bool.and_eq_true] at h
      exact pf_seq (fun t ht => pf_level hpt k ih a Γ A Sh t h.1 ht)
        (fun t ht => pf_level hpt k ih b Γ A Sh t h.2 ht) s hk
  | .ite _ a b, Γ, A, Sh, s, h, hk => by
      simp only [pfB, Bool.and_eq_true] at h
      exact pf_ite (fun t ht => pf_level hpt k ih a Γ A Sh t h.1 ht)
        (fun t ht => pf_level hpt k ih b Γ A Sh t h.2 ht) s hk
  | .dec z sh _ b, Γ, A, Sh, s, h, hk => by
      simp only [pfB] at h
      exact pf_dec (fun t ht => pf_level hpt k ih b _ _ _ t h ht) s hk
  | .while c b, Γ, A, Sh, s, h, hk => by
      have h' : pfB pt Γ A Sh b = true := by simpa [pfB] using h
      exact pf_while (fun t ht => ih (k - 1) (by omega) b Γ A Sh t h' (by omega))
        (fun t ht => ih (k - 1) (by omega) (.while c b) Γ A Sh t h (by omega)) s hk
  | .call none f _, Γ, A, Sh, s, h, _ => by
      simp only [pfB, Option.isSome_iff_exists] at h
      obtain ⟨sh, hf⟩ := h
      exact pf_call_none hpt hf s
  | .call (some (none, none)) f _, Γ, A, Sh, s, h, _ => by
      simp only [pfB, Option.isSome_iff_exists] at h
      obtain ⟨sh, hf⟩ := h
      exact pf_call_some_none hpt hf s
  | .call (some (some (.local, y), none)) f _, Γ, A, Sh, s, h, _ => by
      simp only [pfB, Bool.and_eq_true, Option.isSome_iff_exists] at h
      obtain ⟨⟨⟨sh, hf⟩, hA⟩, hSh⟩ := h
      exact pf_call_local hpt hf hA hSh s
  | .decCall rn dsh f _ kp, Γ, A, Sh, s, h, hk => by
      simp only [pfB, Bool.and_eq_true, Option.isSome_iff_exists] at h
      obtain ⟨⟨sh, hf⟩, hkp⟩ := h
      exact pf_decCall hpt hf (fun t ht => ih (k - 1) (by omega) kp _ _ _ t hkp (by omega)) s hk
  | .assign .global _ _, _, _, _, _, h, _ | .store _ _, _, _, _, _, h, _
  | .store32 _ _, _, _, _, _, h, _ | .storeByte _ _, _, _, _, _, h, _
  | .extCall _ _ _ _ _, _, _, _, _, h, _ | .shMemLoad _ _ _ _, _, _, _, _, h, _
  | .shMemStore _ _ _, _, _, _, _, h, _ => by simp [pfB] at h
  | .call (some (some (.global, _), _)) _ _, _, _, _, _, h, _ => by simp [pfB] at h
  | .call (some (_, some _)) _ _, _, _, _, _, h, _ => by simp [pfB] at h

theorem pfB_sound {pt : List (MlS × ShapeHOL)} (hpt : PureTbl σ C pt)
    {Γ : List (MlS × ShapeHOL)} {A : MlS → Bool} {Sh : List (MlS × ShapeHOL)} {p : ProgHOL width}
    (h : pfB pt Γ A Sh p = true) : PF σ C Γ A Sh p := by
  intro s
  suffices H : ∀ k (p : ProgHOL width) Γ A Sh (s : PanSemStateFiniteExact width σ),
      pfB pt Γ A Sh p = true → s.clock ≤ k → PFat C Γ A Sh p s from H _ p Γ A Sh s h (Nat.le_refl _)
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih => exact pf_level hpt k ih

end InitECandidate.Solver.SourceCost.Arith
