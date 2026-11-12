import InitECandidate.Solver.MemSafe.CallSound2

/-!
# Soundness of the loop rule (M1)

The checker finds a loop environment `I` (at most three join rounds) with `wjoin I o = I` for
the body's output `o`. `while_post`: from any environment `A` below `I`, the loop ends in
`SPost (loopOut I o)`; the loop invariant is "`IG` of `I` for some later ghosts".
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- `IG` of `I` up to a longer temporary list. -/
def IGup (a : Act σ) (I : AEnv) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) (s : State σ) : Prop :=
  ∃ Θ', Θ <+: Θ' ∧ IG a I Γ Θ' s

theorem lookup_mapSnd {L : List (MlS × AV)} {f : AV → AV} {x : MlS} :
    (L.map (fun q => (q.1, f q.2))).lookup x = (L.lookup x).map f := by
  induction L with
  | nil => rfl
  | cons q L ih =>
      obtain ⟨y, v⟩ := q
      simp only [List.map_cons, List.lookup]
      split <;> simp_all

theorem avok_indep {Γ : Gam} {Θ Θ' : List (BitVec 64 × Nat)} {av : AV} {w : BitVec 64}
    (hne : ∀ k o, av ≠ .tmp k o) (h : AVok Γ Θ av w) : AVok Γ Θ' av w := by
  cases av with
  | tmp k o => exact absurd rfl (hne k o)
  | _ => exact h

/-- Cutting the temporaries keeps the invariant. -/
theorem ig_trunc {a : Act σ} {A : AEnv} {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {s : State σ}
    (h : IG a A Γ Θ s) (n : Nat) : IG a (truncE n A) Γ (Θ.take n) s := by
  obtain ⟨p, hh, ⟨hlen, ht⟩, hl⟩ := h
  refine ⟨p, hh, ⟨by simp [truncE, hlen], fun k td hk => ?_⟩, fun x av hx => ?_⟩
  · simp only [truncE, List.getElem?_take] at hk
    split at hk
    · rename_i hkn
      obtain ⟨q, hq, hok⟩ := ht k td hk
      refine ⟨q, ?_, hok⟩
      rw [List.getElem?_take, if_pos hkn]
      exact hq
    · cases hk
  · simp only [truncE, lookup_mapSnd] at hx
    obtain ⟨av0, hx0, rfl⟩ := Option.map_eq_some_iff.mp hx
    obtain ⟨v, hv, hok⟩ := hl x av0 hx0
    refine ⟨v, hv, ?_⟩
    cases av0 with
    | tmp k o =>
        obtain ⟨w, hw, q, m, hq, hwq⟩ := hok
        by_cases hkn : k < n
        · rw [show cutAV n (.tmp k o) = .tmp k o by simp [cutAV, hkn]]
          refine ⟨w, hw, q, m, ?_, hwq⟩
          rw [List.getElem?_take, if_pos hkn]
          exact hq
        · rw [show cutAV n (.tmp k o) = .top by simp [cutAV, hkn]]
          exact ⟨w, hw, trivial⟩
    | unk => trivial
    | wide n' => exact hok
    | _ =>
        obtain ⟨w, hw, h1⟩ := hok
        exact ⟨w, hw, avok_indep (by intro k o h; cases h) h1⟩

theorem prefix_take_of {Θ0 Θ : List (BitVec 64 × Nat)} (hp : Θ0 <+: Θ) {n : Nat}
    (hl : Θ0.length ≤ n) : Θ0 <+: Θ.take n := by
  rw [List.prefix_iff_eq_take] at hp ⊢
  rw [List.take_take, Nat.min_eq_left hl]
  exact hp

theorem ig_wjoin_left {a : Act σ} {I : AEnv} {o : AOut} {Γ : Gam}
    {Θ : List (BitVec 64 × Nat)} {s : State σ} (h : IG a I Γ Θ s) :
    IGup a (wjoin I o) Γ Θ s := by
  have hlen : Θ.length = I.T.length := by obtain ⟨p, -, ht, -⟩ := h; exact ht.1
  unfold wjoin
  obtain ⟨B1, Θ1, hj1, hp1, hig1⟩ := joinO_left (o' := o.nrm) (rfl : some I = some I) h
  obtain ⟨B2, Θ2, hj2, hp2, hig2⟩ := joinO_left (o' := o.cnt) hj1 hig1
  rw [hj2]
  exact ⟨Θ2.take I.T.length, prefix_take_of (hp1.trans hp2) (by omega), ig_trunc hig2 _⟩

theorem ig_wjoin_nrm {a : Act σ} {I : AEnv} {o : AOut} (hst : wjoin I o = I) {B : AEnv}
    (hB : o.nrm = some B) {Γ : Gam} {Θ0 Θ : List (BitVec 64 × Nat)} {s : State σ}
    (hp : Θ0 <+: Θ) (hl : Θ0.length ≤ I.T.length) (h : IG a B Γ Θ s) :
    ∃ Θ', Θ0 <+: Θ' ∧ IG a I Γ Θ' s := by
  obtain ⟨B1, Θ1, hj1, hp1, hig1⟩ := joinO_right (o := some I) hB h
  obtain ⟨B2, Θ2, hj2, hp2, hig2⟩ := joinO_left (o' := o.cnt) hj1 hig1
  have : wjoin I o = truncE I.T.length B2 := by unfold wjoin; rw [hj2]; rfl
  rw [hst] at this
  refine ⟨Θ2.take I.T.length, prefix_take_of (hp.trans (hp1.trans hp2)) hl, ?_⟩
  have h2 := ig_trunc hig2 I.T.length
  rw [← this] at h2
  exact h2

theorem ig_wjoin_cnt {a : Act σ} {I : AEnv} {o : AOut} (hst : wjoin I o = I) {B : AEnv}
    (hB : o.cnt = some B) {Γ : Gam} {Θ0 Θ : List (BitVec 64 × Nat)} {s : State σ}
    (hp : Θ0 <+: Θ) (hl : Θ0.length ≤ I.T.length) (h : IG a B Γ Θ s) :
    ∃ Θ', Θ0 <+: Θ' ∧ IG a I Γ Θ' s := by
  obtain ⟨B2, Θ2, hj2, hp2, hig2⟩ := joinO_right (o := joinO (some I) o.nrm) hB h
  have : wjoin I o = truncE I.T.length B2 := by unfold wjoin; rw [hj2]; rfl
  rw [hst] at this
  refine ⟨Θ2.take I.T.length, prefix_take_of (hp.trans hp2) hl, ?_⟩
  have h2 := ig_trunc hig2 I.T.length
  rw [← this] at h2
  exact h2

/-- **The loop rule.** -/
theorem while_post {a : Act σ} (ha : ActOK a X) {rt : List RT} {c : ExpHOL 64}
    {body : ProgHOL 64} {I : AEnv} {o : AOut} (hst : wjoin I o = I)
    (hbody : ∀ Γ Θ, HoareG σ X (IG a I Γ Θ) body (SPost a rt o Γ Θ)) {A : AEnv}
    (hentry : ∀ Γ Θ s, IG a A Γ Θ s → IGup a I Γ Θ s) (Γ : Gam)
    (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.while c body) (SPost a rt (loopOut I o) Γ Θ) := by
  let J : State σ → Prop := fun s => ∃ Γ' Θ', Later Γ Θ Γ' Θ' ∧ IG a I Γ' Θ' s
  refine hoareG_pre (P := J) ?_ ?_
  · refine hoareG_while ?_ ?_ ?_
    · rintro s ⟨Γ', Θ', hl, p, hh, ht, hlo⟩
      exact ⟨Γ', Θ', hl, p, heap_congr (s := s) ha.hH rfl rfl rfl rfl hh, ht, hlo⟩
    · rintro s hs ⟨⟨Γ', Θ', hl, hig⟩, -⟩ hg
      have H := hbody Γ' Θ' s hs hig hg
      generalize (evaluateHOLFiniteState s body).1 = r at H ⊢
      generalize (evaluateHOLFiniteState s body).2 = t at H ⊢
      have hlenI : Θ.length ≤ I.T.length := by
        obtain ⟨p, -, ht, -⟩ := hig
        have := hl.2.length_le
        rw [ht.1] at this
        exact this
      rcases r with _ | r
      · -- normal completion
        obtain ⟨B, Γ'', Θ'', hB, hl2, hig2⟩ := H
        obtain ⟨Θ3, hp3, hig3⟩ := ig_wjoin_nrm hst hB (hl.2.trans hl2.2) hlenI hig2
        exact ⟨fun _ => ⟨Γ'', Θ3, ⟨ext_trans hl.1 hl2.1, hp3⟩, hig3⟩,
          fun h => (nomatch h), fun h => (nomatch h), fun r' h => (nomatch h)⟩
      · have hext : ∀ {Γ''}, Ext Γ' Γ'' → Ext Γ Γ'' := fun he => ext_trans hl.1 he
        cases r with
        | «break» =>
            obtain ⟨B, Γ'', Θ'', hB, hl2, hig2⟩ := H
            obtain ⟨B', Θ3, hj, hp3, hig3⟩ := joinO_right (o := some I) hB hig2
            exact ⟨fun h => (nomatch h), fun h => (nomatch h), fun _ => ⟨B', Γ'', Θ3, hj,
              later_trans hl (later_trans hl2 ⟨ext_refl _, hp3⟩), hig3⟩,
              fun r' h _ h2 => by cases h; exact absurd rfl h2⟩
        | «continue» =>
            obtain ⟨B, Γ'', Θ'', hB, hl2, hig2⟩ := H
            obtain ⟨Θ3, hp3, hig3⟩ := ig_wjoin_cnt hst hB (hl.2.trans hl2.2) hlenI hig2
            exact ⟨fun h => (nomatch h),
              fun _ => ⟨Γ'', Θ3, ⟨ext_trans hl.1 hl2.1, hp3⟩, hig3⟩,
              fun h => (nomatch h), fun r' h h1 _ => by cases h; exact absurd rfl h1⟩
        | returned v =>
            obtain ⟨Γ'', p', he, hh', hr'⟩ := H
            exact ⟨fun h => (nomatch h), fun h => (nomatch h), fun h => (nomatch h),
              fun r' h _ _ => by cases h; exact ⟨Γ'', p', hext he, hh', hr'⟩⟩
        | exception e v =>
            exact ⟨fun h => (nomatch h), fun h => (nomatch h), fun h => (nomatch h),
              fun r' h _ _ => by cases h; exact abn_ext hext H⟩
        | finalFfi e =>
            exact ⟨fun h => (nomatch h), fun h => (nomatch h), fun h => (nomatch h),
              fun r' h _ _ => by cases h; exact abn_ext hext H⟩
        | error =>
            exact ⟨fun h => (nomatch h), fun h => (nomatch h), fun h => (nomatch h),
              fun r' h _ _ => by cases h; exact abn_ext hext H⟩
        | timeOut =>
            exact ⟨fun h => (nomatch h), fun h => (nomatch h), fun h => (nomatch h),
              fun r' h _ _ => by cases h; exact abn_ext hext H⟩
    · rintro s _ ⟨Γ', Θ', hl, hig⟩ _
      obtain ⟨B', Θ3, hj, hp3, hig3⟩ := joinO_left (o' := o.brk) (rfl : some I = some I) hig
      exact ⟨B', Γ', Θ3, hj, ⟨hl.1, hl.2.trans hp3⟩, hig3⟩
  · intro s _ hs
    obtain ⟨Θ', hp, hig⟩ := hentry Γ Θ s hs
    exact ⟨Γ, Θ', ⟨ext_refl Γ, hp⟩, hig⟩

/-! ## Constant-trip loops -/

/-- `IG` at `B` gives `IG` at `R` (same `Γ`, a longer temporary list). -/
def Cov (a : Act σ) (B R : AEnv) : Prop := ∀ Γ Θ s, IG a B Γ Θ s → IGup a R Γ Θ s

def CovO (a : Act σ) (B : AEnv) (r : Option AEnv) : Prop := ∃ R, r = some R ∧ Cov a B R

theorem cov_refl (a : Act σ) (B : AEnv) : Cov a B B := fun _ Θ _ h => ⟨Θ, List.prefix_refl _, h⟩

theorem cov_trans {a : Act σ} {B R R' : AEnv} (h : Cov a B R) (h' : Cov a R R') : Cov a B R' := by
  intro Γ Θ s hs
  obtain ⟨Θ1, hp1, h1⟩ := h Γ Θ s hs
  obtain ⟨Θ2, hp2, h2⟩ := h' Γ Θ1 s h1
  exact ⟨Θ2, hp1.trans hp2, h2⟩

theorem covO_joinL {a : Act σ} {B : AEnv} {r : Option AEnv} (h : r = some B) (r' : Option AEnv) :
    CovO a B (joinO r r') := by
  subst h
  cases hj : joinO (some B) r' with
  | none => cases r' <;> simp [joinO] at hj
  | some R =>
    refine ⟨R, rfl, fun Γ Θ s hs => ?_⟩
    obtain ⟨B', Θ', hj', hp, hig⟩ := joinO_left (o' := r') (rfl : some B = some B) hs
    rw [hj] at hj'
    cases hj'
    exact ⟨Θ', hp, hig⟩

theorem covO_joinR {a : Act σ} {B : AEnv} {r' : Option AEnv} (r : Option AEnv) (h : r' = some B) :
    CovO a B (joinO r r') := by
  subst h
  cases hj : joinO r (some B) with
  | none => cases r <;> simp [joinO] at hj
  | some R =>
    refine ⟨R, rfl, fun Γ Θ s hs => ?_⟩
    obtain ⟨B', Θ', hj', hp, hig⟩ := joinO_right (o := r) (rfl : some B = some B) hs
    rw [hj] at hj'
    cases hj'
    exact ⟨Θ', hp, hig⟩

theorem covO_lift {a : Act σ} {B : AEnv} {r' : Option AEnv} (r : Option AEnv) (h : CovO a B r') :
    CovO a B (joinO r r') := by
  obtain ⟨R, rfl, hc⟩ := h
  obtain ⟨R2, hR2, hc2⟩ := covO_joinR (a := a) r (rfl : some R = some R)
  exact ⟨R2, hR2, cov_trans hc hc2⟩

/-- The environments an unrolling from `A` visits. -/
def Visits (C : Cfg) (c : ExpHOL 64) (step : AEnv → Option AOut) : Nat → AEnv → AEnv → Prop
  | 0, _, _ => False
  | n + 1, A, B => B = A ∨ ∃ w o A', aev C A chkFuel c = .cst w ∧ w ≠ 0 ∧ step A = some o ∧
      joinO o.nrm o.cnt = some A' ∧ A' ≠ A ∧ Visits C c step n A' B

theorem unroll_visits {a : Act σ} {C : Cfg} {c : ExpHOL 64} {step : AEnv → Option AOut} :
    ∀ {n : Nat} {A : AEnv} {r : Option AEnv}, unroll C c step n A = some r →
    ∀ {B : AEnv}, Visits C c step n A B → ∃ w, aev C B chkFuel c = .cst w ∧
      (w = 0 → CovO a B r) ∧
      (w ≠ 0 → ∃ o, step B = some o ∧ (∀ Bb, o.brk = some Bb → CovO a Bb r) ∧
        ∀ Bn, joinO o.nrm o.cnt = some Bn → ∃ B', Visits C c step n A B' ∧ Cov a Bn B')
  | 0, A, r, h, B, hv => by simp [unroll] at h
  | n + 1, A, r, h, B, hv => by
      unfold unroll at h
      split at h
      · rename_i w hw
        split at h
        · rename_i h0 _
          simp only [Option.some.injEq] at h; subst h
          rcases hv with rfl | ⟨w', o, A', hw', hne, -⟩
          · exact ⟨w, hw, fun _ => ⟨B, rfl, cov_refl a B⟩, fun h => absurd h0 h⟩
          · rw [hw] at hw'; cases hw'; exact absurd h0 hne
        · rename_i h0 _
          split at h
          · cases h
          · rename_i o ho
            split at h
            · rename_i hj
              simp only [Option.some.injEq] at h; subst h
              rcases hv with rfl | ⟨w', o', A', hw', hne, ho', hj', -⟩
              · refine ⟨w, hw, fun h => absurd h h0, fun _ => ⟨o, ho,
                  fun Bb hb => ⟨Bb, hb, cov_refl a Bb⟩, fun Bn hn => ?_⟩⟩
                rw [hj] at hn; cases hn
              · rw [ho] at ho'; cases ho'; rw [hj] at hj'; cases hj'
            · rename_i A' hj
              split at h
              · rename_i heq _
                simp only [Option.some.injEq] at h; subst h
                rcases hv with rfl | ⟨w', o', A'', hw', hne, ho', hj', hne', -⟩
                · refine ⟨w, hw, fun h => absurd h h0, fun _ => ⟨o, ho,
                    fun Bb hb => ⟨Bb, hb, cov_refl a Bb⟩, fun Bn hn => ?_⟩⟩
                  have e : A' = Bn := Option.some.inj (hj.symm.trans hn)
                  subst e heq
                  exact ⟨A', Or.inl rfl, cov_refl a _⟩
                · rw [ho] at ho'; cases ho'; rw [hj] at hj'; cases hj'; exact absurd heq hne'
              · rename_i hne _
                split at h
                · cases h
                · rename_i r' hr'
                  simp only [Option.some.injEq] at h; subst h
                  rcases hv with rfl | ⟨w', o', A'', hw', hne0, ho', hj', hne', hv'⟩
                  · refine ⟨w, hw, fun h => absurd h h0, fun _ => ⟨o, ho,
                      fun Bb hb => covO_joinL hb r', fun Bn hn => ?_⟩⟩
                    have e : A' = Bn := Option.some.inj (hj.symm.trans hn)
                    subst e
                    refine ⟨A', Or.inr ⟨w, o, A', hw, h0, ho, hj, hne, ?_⟩, cov_refl a _⟩
                    cases n with
                    | zero => simp [unroll] at hr'
                    | succ m => exact Or.inl rfl
                  · rw [ho] at ho'; cases ho'; rw [hj] at hj'; cases hj'
                    obtain ⟨w2, hw2, h1, h2⟩ := unroll_visits (a := a) hr' hv'
                    refine ⟨w2, hw2, fun hz => covO_lift _ (h1 hz), fun hz => ?_⟩
                    obtain ⟨o2, ho2, hb2, hn2⟩ := h2 hz
                    refine ⟨o2, ho2, fun Bb hb => covO_lift _ (hb2 Bb hb), fun Bn hn => ?_⟩
                    obtain ⟨B', hv2, hc⟩ := hn2 Bn hn
                    exact ⟨B', Or.inr ⟨w, o, A', hw, h0, ho, hj, hne, hv2⟩, hc⟩
      · cases h

theorem visits_self {C : Cfg} {c : ExpHOL 64} {step : AEnv → Option AOut} {n : Nat} {A : AEnv}
    {r : Option AEnv} (h : unroll C c step n A = some r) : Visits C c step n A A := by
  cases n with
  | zero => simp [unroll] at h
  | succ m => exact Or.inl rfl

/-- **The rule for constant-trip loops.** -/
theorem unroll_post {a : Act σ} (ha : ActOK a X) {rt : List RT} {c : ExpHOL 64}
    {body : ProgHOL 64} {step : AEnv → Option AOut} {n : Nat} {A : AEnv} {r : Option AEnv}
    (hu : unroll a.C c step n A = some r)
    (hbody : ∀ I o, step I = some o → ∀ Γ Θ, HoareG σ X (IG a I Γ Θ) body (SPost a rt o Γ Θ))
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.while c body) (SPost a rt ⟨r, none, none⟩ Γ Θ) := by
  let J : State σ → Prop := fun s =>
    ∃ B Γ' Θ', Visits a.C c step n A B ∧ Later Γ Θ Γ' Θ' ∧ IG a B Γ' Θ' s
  refine hoareG_pre (P := J) ?_ ?_
  · refine hoareG_while ?_ ?_ ?_
    · rintro s ⟨B, Γ', Θ', hv, hl, p, hh, ht, hlo⟩
      exact ⟨B, Γ', Θ', hv, hl, p, heap_congr (s := s) ha.hH rfl rfl rfl rfl hh, ht, hlo⟩
    · rintro s hs ⟨⟨B, Γ', Θ', hv, hl, hig⟩, hct⟩ hg
      obtain ⟨w, hw, -, h1⟩ := unroll_visits (a := a) hu hv
      have hw0 : w ≠ 0 := by
        rintro rfl
        obtain ⟨w', hev, hne⟩ := hct
        obtain ⟨p, hh, -, hlo⟩ := hig
        have := aev_sound (H := a.H) hh.1 hlo (ns_of ha hs) chkFuel c _ hev
        rw [hw] at this
        obtain ⟨x, hx, hxx⟩ := this
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hx
        exact hne (hx.trans hxx)
      obtain ⟨o, ho, hbrk, hnc⟩ := h1 hw0
      have H := hbody B o ho Γ' Θ' s hs hig hg
      generalize (evaluateHOLFiniteState s body).1 = r' at H ⊢
      generalize (evaluateHOLFiniteState s body).2 = t at H ⊢
      have hext : ∀ {Γ''}, Ext Γ' Γ'' → Ext Γ Γ'' := fun he => ext_trans hl.1 he
      rcases r' with _ | r'
      · obtain ⟨Bn, Γ'', Θ'', hBn, hl2, hig2⟩ := H
        obtain ⟨Bj, Θ3, hj, hp3, hig3⟩ := joinO_left (o' := o.cnt) hBn hig2
        obtain ⟨B', hv', hc⟩ := hnc Bj hj
        obtain ⟨Θ4, hp4, hig4⟩ := hc Γ'' Θ3 t hig3
        exact ⟨fun _ => ⟨B', Γ'', Θ4, hv',
            later_trans hl (later_trans hl2 ⟨ext_refl _, hp3.trans hp4⟩), hig4⟩,
          fun h => (nomatch h), fun h => (nomatch h), fun r' h => (nomatch h)⟩
      · cases r' with
        | «break» =>
            obtain ⟨Bb, Γ'', Θ'', hBb, hl2, hig2⟩ := H
            obtain ⟨R, hR, hc⟩ := hbrk Bb hBb
            obtain ⟨Θ3, hp3, hig3⟩ := hc Γ'' Θ'' t hig2
            exact ⟨fun h => (nomatch h), fun h => (nomatch h), fun _ => ⟨R, Γ'', Θ3, hR,
              later_trans hl (later_trans hl2 ⟨ext_refl _, hp3⟩), hig3⟩,
              fun r' h _ h2 => by cases h; exact absurd rfl h2⟩
        | «continue» =>
            obtain ⟨Bc, Γ'', Θ'', hBc, hl2, hig2⟩ := H
            obtain ⟨Bj, Θ3, hj, hp3, hig3⟩ := joinO_right (o := o.nrm) hBc hig2
            obtain ⟨B', hv', hc⟩ := hnc Bj hj
            obtain ⟨Θ4, hp4, hig4⟩ := hc Γ'' Θ3 t hig3
            exact ⟨fun h => (nomatch h),
              fun _ => ⟨B', Γ'', Θ4, hv',
                later_trans hl (later_trans hl2 ⟨ext_refl _, hp3.trans hp4⟩), hig4⟩,
              fun h => (nomatch h), fun r' h h1 _ => by cases h; exact absurd rfl h1⟩
        | returned v =>
            obtain ⟨Γ'', p', he, hh', hr'⟩ := H
            exact ⟨fun h => (nomatch h), fun h => (nomatch h), fun h => (nomatch h),
              fun r' h _ _ => by cases h; exact ⟨Γ'', p', hext he, hh', hr'⟩⟩
        | exception e v =>
            exact ⟨fun h => (nomatch h), fun h => (nomatch h), fun h => (nomatch h),
              fun r' h _ _ => by cases h; exact abn_ext hext H⟩
        | finalFfi e =>
            exact ⟨fun h => (nomatch h), fun h => (nomatch h), fun h => (nomatch h),
              fun r' h _ _ => by cases h; exact abn_ext hext H⟩
        | error =>
            exact ⟨fun h => (nomatch h), fun h => (nomatch h), fun h => (nomatch h),
              fun r' h _ _ => by cases h; exact abn_ext hext H⟩
        | timeOut =>
            exact ⟨fun h => (nomatch h), fun h => (nomatch h), fun h => (nomatch h),
              fun r' h _ _ => by cases h; exact abn_ext hext H⟩
    · rintro s hs ⟨B, Γ', Θ', hv, hl, hig⟩ hc0
      obtain ⟨w, hw, h0, -⟩ := unroll_visits (a := a) hu hv
      have hw0 : w = 0 := by
        obtain ⟨p, hh, -, hlo⟩ := hig
        have := aev_sound (H := a.H) hh.1 hlo (ns_of ha hs) chkFuel c _ hc0
        rw [hw] at this
        obtain ⟨x, hx, hxx⟩ := this
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hx
        exact (hx.trans hxx).symm
      obtain ⟨R, hR, hc⟩ := h0 hw0
      obtain ⟨Θ3, hp3, hig3⟩ := hc Γ' Θ' s hig
      exact ⟨R, Γ', Θ3, hR, ⟨hl.1, hl.2.trans hp3⟩, hig3⟩
  · intro s _ hs
    exact ⟨A, Γ, Θ, visits_self hu, later_refl Γ Θ, hs⟩

theorem unrollW_post {a : Act σ} (ha : ActOK a X) {rt : List RT} {c : ExpHOL 64}
    {body : ProgHOL 64} {step : AEnv → Option AOut} {A : AEnv} {r : Option AEnv}
    (hu : unrollW a.C c step A = some r)
    (hbody : ∀ I o, step I = some o → ∀ Γ Θ, HoareG σ X (IG a I Γ Θ) body (SPost a rt o Γ Θ))
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.while c body) (SPost a rt ⟨r, none, none⟩ Γ Θ) := by
  unfold unrollW at hu
  split at hu
  · exact unroll_post ha hu hbody Γ Θ
  · cases hu

end InitECandidate.Solver.MemSafe
