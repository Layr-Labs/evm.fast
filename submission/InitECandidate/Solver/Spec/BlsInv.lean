import InitECandidate.Solver.Spec.ModInv
import InitECandidate.Solver.Spec.BlsSpec

/-!
# The tick bound of `bls_fp_inv_raw`

Same argument as `modinv_bin` (`ModInv.lean`) on 6 limbs: the halving loops
(`u = bls_fp_shr1(u); x = bls_fp_half_can(x)`) run at most `385` iterations, the outer
loop at most `2 * 768 + 2 = 1538`.

`blsInvBody_cost`: with callee costs `Bz Blt Bsub Bshr Bhc Bfs` of `bls_fp_is_zero`,
`bls_fp_lt_raw`, `bls_fp_sub_raw`, `bls_fp_shr1`, `bls_fp_half_can`, `bls_fp_sub` (and
`bls_fp_half_can` escape-free), the body of `bls_fp_inv_raw` uses at most
`1 + Bz + 1538 * (770 * (Bshr + Bhc) + Blt + Bsub + Bfs + 2314)` ticks.
-/

set_option exponentiation.threshold 512

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

/-- `call_good` with the callee's return specification. -/
theorem call_good_spec {s : PanSemStateFiniteExact 64 σ} {x f : MlS} {args : List (ExpHOL 64)}
    {R : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hs : InCtx s X) (hesc : CalleeEscFree σ X f) (hf : FunRet σ X f R)
    (hg : Good (evaluateHOLFiniteState s (callTo x f args)).1) :
    (evaluateHOLFiniteState s (callTo x f args)).1 = none ∧
      ∃ vs v, evs s args = some vs ∧ R vs v ∧
        (evaluateHOLFiniteState s (callTo x f args)).2.locals = s.locals.update (x, v) := by
  revert hg
  unfold callTo
  rw [evaluateHOLFiniteState_eq_evaluate_def s _]
  dsimp only
  split
  · intro hg; exact absurd rfl hg.2
  · rename_i vs hvs
    rw [hs.1]
    split
    · intro hg; exact absurd rfl hg.2
    · rename_i body callee rs hlook
      split
      · intro hg; exact absurd rfl hg.1
      · have hne := hesc vs body callee rs hlook (callEntryStateHOLFinite s callee) hs.1
        have hspec := hf vs body callee rs hlook _ (entry_inCtx hs callee) rfl
        cases ho : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body with
        | mk r st =>
          rw [ho] at hne hspec
          dsimp only at hne hspec ⊢
          cases r with
          | none => intro hg; exact absurd rfl hg.2
          | some r =>
            cases r with
            | returned v =>
                dsimp only
                split
                · split
                  · intro _; exact ⟨rfl, vs, v, hvs, hspec (by simp) v rfl, rfl⟩
                  · intro hg; exact absurd rfl hg.2
                · intro hg; exact absurd rfl hg.2
            | exception e v => exact absurd rfl (hne.1 e v)
            | finalFfi e => exact absurd rfl (hne.2 e)
            | «break» => intro hg; exact absurd rfl hg.2
            | «continue» => intro hg; exact absurd rfl hg.2
            | error => intro hg; exact absurd rfl hg.2
            | timeOut => intro hg; exact absurd rfl hg.1

theorem evs_lv1 {s : PanSemStateFiniteExact 64 σ} {u : MlS} {vs : List (ValueHOL 64)}
    (h : evs s [lv u] = some vs) : ∃ U, vs = [U] ∧ s.locals.lookup u = some U := by
  obtain ⟨U, vs1, rfl, hU, h1⟩ := evs_cons_inv h
  simp only [evs, evalListHOLExact, Option.some.injEq] at h1
  subst h1
  exact ⟨U, rfl, hU⟩

theorem zero_of_wn6 {ws : List (BitVec 64)} (hl : ws.length = 6) (h0 : wn ws = 0) :
    ws = [0, 0, 0, 0, 0, 0] := by
  obtain ⟨a0, a1, a2, a3, a4, a5, rfl⟩ := list6 hl
  have hz := list_zero_of_wn h0
  simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq] at hz
  rw [hz.1, hz.2.1, hz.2.2.1, hz.2.2.2.1, hz.2.2.2.2.1, hz.2.2.2.2.2]

/-! ## The halving loop -/

theorem blsHalve_hoare (hC : X.code.lookup = guestCode) {u x : MlS} (hux : u ≠ x)
    (F : PanSemStateFiniteExact 64 σ → Prop) (hF : FrameOut F u x) (U0 : Option (ValueHOL 64)) :
    Hoare σ X (fun s => F s ∧ RelH 6 U0 (s.locals.lookup u)) (blsHalve u x)
      (fun r t => r = none ∧ F t ∧ RelH 6 U0 (t.locals.lookup u) ∧ OddL 6 u t) := by
  apply hoare_while
  · intro s hs
    exact ⟨hF s _ (fun _ _ _ => rfl) hs.1, hs.2⟩
  · refine hoare_seq (R := fun r t => r = none ∧ F t ∧ RelH 6 U0 (t.locals.lookup u))
      (hoare_call (funRet_bls_fp_shr1 hC) ?_) (fun r t _ hr _ hR => absurd hR.1 hr)
      (hoare_call (funRet_true _) ?_)
    · intro s _ ⟨⟨hFs, hRs⟩, _⟩ vs hvs v hR _ t _ ht
      obtain ⟨U, rfl, hU⟩ := evs_lv1 hvs
      obtain ⟨ws, hl, hvs', rfl⟩ := hR
      simp only [List.cons.injEq, and_true] at hvs'
      subst hvs'
      refine ⟨rfl, hF s t ?_ hFs, ?_⟩
      · intro y hy _; rw [ht]; exact lookup_update_ne _ _ (Ne.symm hy)
      · rw [ht, lookup_update_self]; rw [hU] at hRs; exact relH_shr hRs hl
    · intro s _ ⟨_, hFs, hRs⟩ vs _ v _ _ t _ ht
      have hFt : F t := hF s t (fun y _ hyx => by rw [ht]; exact lookup_update_ne _ _ (Ne.symm hyx)) hFs
      have hut : t.locals.lookup u = s.locals.lookup u := by
        rw [ht]; exact lookup_update_ne _ _ (Ne.symm hux)
      exact ⟨fun _ => ⟨hFt, by rw [hut]; exact hRs⟩, nofun, nofun, fun _ => nofun⟩
  · intro s _ ⟨hFs, hRs⟩ hc
    refine ⟨rfl, hFs, hRs, ?_⟩
    intro ws hu hl
    rw [ev_evenC hu (by omega)] at hc
    by_cases h2 : wn ws % 2 = 0
    · rw [if_pos h2] at hc
      simp at hc
    · omega

theorem lnat6_le (s : PanSemStateFiniteExact 64 σ) (u : MlS) : bitlen (lnat 6 s u) ≤ 384 :=
  bitlen_le_of_lt (lnat_lt 6 s u)

theorem blsHalve_cost (hC : X.code.lookup = guestCode) {u x : MlS} (hux : u ≠ x)
    {Bshr Bhc : Nat}
    (hshr : CalleeCost σ X (nm "bls_fp_shr1") Bshr)
    (hhc : CalleeCost σ X (nm "bls_fp_half_can") Bhc)
    (hesc : CalleeEscFree σ X (nm "bls_fp_half_can")) :
    Cost σ X (blsHalve u x) ((384 + 1) * (((1 + Bshr + 0) + (1 + Bhc + 0)) + 1)) := by
  refine cost_while_doomed (fun s => bitlen (lnat 6 s u)) 384
    (fun s => InCtx s X ∧ s.locals.lookup u = some (wv [0, 0, 0, 0, 0, 0]))
    (cost_seq (cost_callTo hshr) (cost_callTo hhc))
    (fun s _ _ _ => lnat6_le s u) ?_ ?_
  · have H := hdec_of_hoare (σ := σ) (X := X) (c := evenC u)
      (body := .seq (callTo u (nm "bls_fp_shr1") [lv u]) (callTo x (nm "bls_fp_half_can") [lv x]))
      (fun s => bitlen (lnat 6 s u))
      (fun s => ¬ (InCtx s X ∧ s.locals.lookup u = some (wv [0, 0, 0, 0, 0, 0])))
      (fun _ => rfl) (fun s h => h) ?_
    · intro s hs hc _ hnd hexit
      exact H s hs hc hnd hexit
    · intro k
      refine hoare_seq (R := fun r t => r = none ∧ bitlen (lnat 6 t u) < k)
        (hoare_call (funRet_bls_fp_shr1 hC) ?_) (fun r t _ hr _ hR => absurd hR.1 hr)
        (hoare_call (funRet_true _) ?_)
      · intro s hs ⟨hnd, _, hk⟩ vs hvs v hR _ t _ ht
        obtain ⟨U, rfl, hU⟩ := evs_lv1 hvs
        obtain ⟨ws, hl, hvs', rfl⟩ := hR
        simp only [List.cons.injEq, and_true] at hvs'
        subst hvs'
        refine ⟨rfl, ?_⟩
        have hnz : wn ws ≠ 0 := by
          intro h0
          apply hnd
          exact ⟨hs, by rw [hU, zero_of_wn6 hl h0]⟩
        rw [← hk, lnat_of_lookup hU hl,
          lnat_of_lookup (by rw [ht, lookup_update_self]) (by rw [length_shrW, hl]), wn_shrW]
        exact bitlen_half_lt hnz
      · intro s _ ⟨_, hk⟩ vs _ v _ _ t _ ht _
        have hut : t.locals.lookup u = s.locals.lookup u := by
          rw [ht]; exact lookup_update_ne _ _ (Ne.symm hux)
        unfold lnat
        rw [hut]
        exact hk
  · intro s ⟨hs, hu⟩
    refine ⟨⟨1, ev_evenC hu (by decide), by decide⟩, ?_⟩
    intro hg
    have hs' : InCtx (decClockHOLFinite s) X := hs
    have hu' : (decClockHOLFinite s).locals.lookup u = some (wv [0, 0, 0, 0, 0, 0]) := hu
    -- the first call is good
    have hg1 : Good (evaluateHOLFiniteState (decClockHOLFinite s)
        (callTo u (nm "bls_fp_shr1") [lv u])).1 := by
      cases h1 : (evaluateHOLFiniteState (decClockHOLFinite s)
          (callTo u (nm "bls_fp_shr1") [lv u])).1 with
      | none => exact good_none
      | some r =>
          rw [eval_seq_some h1, h1] at hg
          exact hg
    obtain ⟨hn1, vs, v, hvs, hR, hloc1⟩ :=
      call_good_spec hs' (escFree_bls_fp_shr1 hC) (funRet_bls_fp_shr1 hC) hg1
    obtain ⟨U, rfl, hU⟩ := evs_lv1 hvs
    obtain ⟨ws, hl, hvs', rfl⟩ := hR
    simp only [List.cons.injEq, and_true] at hvs'
    subst hvs'
    rw [hu'] at hU
    have hws := wv_inj (Option.some.inj hU)
    subst hws
    rw [eval_seq_none hn1] at hg ⊢
    have hctx := inCtx_eval hs' (callTo u (nm "bls_fp_shr1") [lv u])
    obtain ⟨hn2, w, hw⟩ := call_good hctx hesc hg
    refine ⟨Or.inl hn2, inCtx_eval hctx _, ?_⟩
    rw [hw, lookup_update_ne _ _ (Ne.symm hux), hloc1, lookup_update_self]
    rfl

/-! ## The outer loop -/

theorem muO6_le (s : PanSemStateFiniteExact 64 σ) (u v : MlS) : muO 6 u v s ≤ 1537 := by
  unfold muO phi
  have := lnat6_le s u
  have := lnat6_le s v
  split <;> omega

theorem wn_lt6 {ws : List (BitVec 64)} (h : ws.length = 6) : wn ws < 2 ^ 384 := by
  have := wn_lt ws; rw [h] at this; exact this

theorem sub_of_le6 {a b : Nat} (ha : a < 2 ^ 384) (hb : b < 2 ^ 384) (h : b ≤ a) :
    (a + 2 ^ (64 * 6) - b) % 2 ^ (64 * 6) = a - b := by
  rw [show 64 * 6 = 384 from rfl]
  rw [show a + 2 ^ 384 - b = (a - b) + 2 ^ 384 * 1 by omega, Nat.add_mul_mod_self_left,
    Nat.mod_eq_of_lt (by omega)]

theorem ev_first6 {s : PanSemStateFiniteExact 64 σ} {d : MlS} {ds es : List (BitVec 64)}
    (h : s.locals.lookup d = some (wv (ds ++ es))) (hl : ds.length = 6) :
    ev s (first6 d) = some (wv ds) := by
  obtain ⟨a0, a1, a2, a3, a4, a5, rfl⟩ := list6 hl
  have hx : ev s (lv d) = some (wv ([a0, a1, a2, a3, a4, a5] ++ es)) := by rw [ev_lv]; exact h
  show ev s (.rstruct [.rfield 0 (lv d), .rfield 1 (lv d), .rfield 2 (lv d), .rfield 3 (lv d),
    .rfield 4 (lv d), .rfield 5 (lv d)]) = _
  apply ev_rstruct
  refine evs_cons ?_ (evs_cons ?_ (evs_cons ?_ (evs_cons ?_ (evs_cons ?_ (evs_cons ?_
    evs_nil))))) <;> (rw [ev_rfield_wv hx (by simp)]; rfl)

theorem blsTail_hoare (hC : X.code.lookup = guestCode) {u v x1 x2 ult d e : MlS}
    (huv : u ≠ v) (hux1 : u ≠ x1) (hvx1 : v ≠ x1) (hux2 : u ≠ x2) (hvx2 : v ≠ x2)
    (hlu : ult ≠ u) (hlv : ult ≠ v) (hdu : d ≠ u) (hdv : d ≠ v) (heu : e ≠ u) (hev : e ≠ v)
    (U0 V0 : Option (ValueHOL 64)) :
    Hoare σ X (fun t => (RelH 6 U0 (t.locals.lookup u) ∧ OddL 6 u t) ∧
        RelH 6 V0 (t.locals.lookup v) ∧ OddL 6 v t)
      (blsTail u v x1 x2 ult d e)
      (fun r t => r = none ∨ r = some .continue → muO 6 u v t < phi (onat 6 U0) (onat 6 V0)) := by
  refine hoare_decCall (funRet_bls_fp_lt_raw hC) ?_
  intro s _ ⟨⟨hRu, hOu⟩, hRv, hOv⟩ vs hvs w hR _
  obtain ⟨U, V, rfl, hU, hV⟩ := evs_lv2 hvs
  obtain ⟨as, bs, has, hbs, hvs', rfl⟩ := hR
  simp only [List.cons.injEq, and_true] at hvs'
  obtain ⟨rfl, rfl⟩ := hvs'
  have hoa := hOu as hU has
  have hob := hOv bs hV hbs
  have hA := relH_nat (hU ▸ hRu) has
  have hB := relH_nat (hV ▸ hRv) hbs
  have hla := wn_lt6 has
  have hlb := wn_lt6 hbs
  have key : ∀ t : PanSemStateFiniteExact 64 σ,
      t.locals = s.locals.update (ult, .val (.word (if wn as < wn bs then 1 else 0))) →
      t.locals.lookup u = some (wv as) ∧ t.locals.lookup v = some (wv bs) ∧
      t.locals.lookup ult = some (.val (.word (if wn as < wn bs then 1 else 0))) := by
    intro t ht
    rw [ht, lookup_update_ne _ _ hlu, lookup_update_ne _ _ hlv, lookup_update_self]
    exact ⟨hU, hV, rfl⟩
  have restore : ∀ (n : MlS) (o : Option (ValueHOL 64)), n ≠ u → n ≠ v →
      ∀ t : PanSemStateFiniteExact 64 σ,
      muO 6 u v { t with locals := t.locals.resVarEq (n, o) } = muO 6 u v t := by
    intro n o hnu hnv t
    unfold muO
    rw [lnat_eq_onat, lnat_eq_onat, lnat_eq_onat 6 t, lnat_eq_onat 6 t]
    simp only []
    rw [lookup_resVarEq_ne _ _ hnu, lookup_resVarEq_ne _ _ hnv]
  refine hoare_ite ?_ ?_
  · -- `var d = bls_fp_sub_raw(u, v); u = <d.0..d.5>; x1 = bls_fp_sub(x1, x2)`
    refine hoare_decCall (funRet_bls_fp_sub_raw hC) ?_
    intro t _ ⟨ht, c, hc, hc0⟩ vs' hvs' D hD _
    obtain ⟨htu, htv, htl⟩ := key t ht
    have hlt : ¬ wn as < wn bs := by
      intro hl
      rw [ev_ult htl, if_pos hl] at hc
      exact hc0 (by simpa using hc.symm)
    obtain ⟨U', V', rfl, hU', hV'⟩ := evs_lv2 hvs'
    rw [htu] at hU'; rw [htv] at hV'
    cases hU'; cases hV'
    obtain ⟨as', bs', _, _, hvs'', ds, es, hds, _, rfl, hwn⟩ := hD
    simp only [List.cons.injEq, and_true] at hvs''
    have e1 := wv_inj hvs''.1; have e2 := wv_inj hvs''.2
    subst e1; subst e2
    refine hoare_seq (R := fun r t' => r = none ∧ t'.locals.lookup u = some (wv ds) ∧
        t'.locals.lookup v = some (wv bs)) (hoare_assign ?_) (fun r t _ hr _ hR => absurd hR.1 hr)
      (hoare_call (funRet_true _) ?_)
    · intro t' _ ht' w' hw' _
      have hd : t'.locals.lookup d = some (wv (ds ++ es)) := by rw [ht', lookup_update_self]
      rw [ev_first6 hd hds] at hw'
      cases hw'
      refine ⟨rfl, lk_set_self _ _ _, ?_⟩
      rw [lk_set_ne _ _ huv, ht', lookup_update_ne _ _ hdv]; exact htv
    · intro t' _ ⟨_, htu', htv'⟩ _ _ _ _ _ t'' _ ht'' _
      rw [restore ult _ hlu hlv, restore d _ hdu hdv]
      unfold muO
      rw [lnat_eq_onat, lnat_eq_onat, ht'', lookup_update_ne _ _ (Ne.symm hux1),
        lookup_update_ne _ _ (Ne.symm hvx1), htu', htv', onat_wv hds, onat_wv hbs, hwn,
        sub_of_le6 hla hlb (by omega)]
      exact phi_drop hoa hob hA hB (by omega) (by omega)
  · -- `var e = bls_fp_sub_raw(v, u); v = <e.0..e.5>; x2 = bls_fp_sub(x2, x1)`
    refine hoare_decCall (funRet_bls_fp_sub_raw hC) ?_
    intro t _ ⟨ht, hc⟩ vs' hvs' D hD _
    obtain ⟨htu, htv, htl⟩ := key t ht
    have hlt : wn as < wn bs := by
      by_contra hl
      rw [ev_ult htl, if_neg hl] at hc
      simp at hc
    obtain ⟨V', U', rfl, hV', hU'⟩ := evs_lv2 hvs'
    rw [htu] at hU'; rw [htv] at hV'
    cases hU'; cases hV'
    obtain ⟨bs', as', _, _, hvs'', ds, es, hds, _, rfl, hwn⟩ := hD
    simp only [List.cons.injEq, and_true] at hvs''
    have e1 := wv_inj hvs''.1; have e2 := wv_inj hvs''.2
    subst e1; subst e2
    refine hoare_seq (R := fun r t' => r = none ∧ t'.locals.lookup u = some (wv as) ∧
        t'.locals.lookup v = some (wv ds)) (hoare_assign ?_) (fun r t _ hr _ hR => absurd hR.1 hr)
      (hoare_call (funRet_true _) ?_)
    · intro t' _ ht' w' hw' _
      have hd : t'.locals.lookup e = some (wv (ds ++ es)) := by rw [ht', lookup_update_self]
      rw [ev_first6 hd hds] at hw'
      cases hw'
      refine ⟨rfl, ?_, lk_set_self _ _ _⟩
      rw [lk_set_ne _ _ (Ne.symm huv), ht', lookup_update_ne _ _ heu]; exact htu
    · intro t' _ ⟨_, htu', htv'⟩ _ _ _ _ _ t'' _ ht'' _
      rw [restore ult _ hlu hlv, restore e _ heu hev]
      unfold muO
      rw [lnat_eq_onat, lnat_eq_onat, ht'', lookup_update_ne _ _ (Ne.symm hux2),
        lookup_update_ne _ _ (Ne.symm hvx2), htu', htv', onat_wv has, onat_wv hds, hwn,
        sub_of_le6 hlb hla (by omega), phi_comm, phi_comm (onat 6 U0)]
      exact phi_drop hob hoa hB hA (by omega) (by omega)

theorem blsOuter_dec (hC : X.code.lookup = guestCode) {u v x1 x2 ult d e : MlS}
    (huv : u ≠ v) (hux1 : u ≠ x1) (hvx1 : v ≠ x1) (hux2 : u ≠ x2) (hvx2 : v ≠ x2)
    (hlu : ult ≠ u) (hlv : ult ≠ v) (hdu : d ≠ u) (hdv : d ≠ v) (heu : e ≠ u) (hev : e ≠ v)
    (k : Nat) :
    Hoare σ X (fun s => True ∧ CondTrue s (cw 1) ∧ muO 6 u v s = k)
      (blsOuter u v x1 x2 ult d e)
      (fun r t => r = none ∨ r = some .continue → muO 6 u v t < k) := by
  have hret : ∀ (r : Option (PanSemResultExact 64)) (t : PanSemStateFiniteExact 64 σ),
      r ≠ none → (r = none ∨ ∃ v : ValueHOL 64, r = some (.returned v)) →
      (r = none ∨ r = some .continue → muO 6 u v t < k) := by
    intro r t hr h hc
    rcases h with h | ⟨w, rfl⟩
    · exact absurd h hr
    · rcases hc with h | h <;> cases h
  refine hoare_seq guard_hoare (fun r t _ hr _ h => hret r t hr (h.imp_left And.left)) ?_
  refine hoare_seq guard_hoare (fun r t _ hr _ h => hret r t hr (h.imp_left And.left)) ?_
  refine hoare_pre (P := fun s => ∃ U0 V0 : Option (ValueHOL 64), s.locals.lookup u = U0 ∧
      s.locals.lookup v = V0 ∧ phi (onat 6 U0) (onat 6 V0) = k) ?_ ?_
  · refine hoare_exists fun U0 => hoare_exists fun V0 => ?_
    refine hoare_pre (P := fun s => phi (onat 6 U0) (onat 6 V0) = k ∧
        (s.locals.lookup v = V0 ∧ RelH 6 U0 (s.locals.lookup u))) ?_
      (fun s _ ⟨h1, h2, h3⟩ => ⟨h3, h2, Or.inl h1⟩)
    refine hoare_pure fun hk => ?_
    subst hk
    refine hoare_seq (blsHalve_hoare hC hux1 _ ?_ U0) (fun r t _ hr _ hR => absurd hR.1 hr) ?_
    · intro s t ht h1
      rw [ht v (Ne.symm huv) hvx1]; exact h1
    refine hoare_pre (P := fun s => (RelH 6 U0 (s.locals.lookup u) ∧ OddL 6 u s) ∧
        RelH 6 V0 (s.locals.lookup v)) ?_
      (fun s _ ⟨_, h1, h3, h4⟩ => ⟨⟨h3, h4⟩, Or.inl h1⟩)
    refine hoare_seq (blsHalve_hoare hC hvx2 _ ?_ V0) (fun r t _ hr _ hR => absurd hR.1 hr) ?_
    · intro s t ht ⟨h1, h2⟩
      have hu : t.locals.lookup u = s.locals.lookup u := ht u huv hux2
      exact ⟨by rw [hu]; exact h1, fun ws hw hl => h2 ws (by rw [← hu]; exact hw) hl⟩
    exact hoare_pre (blsTail_hoare hC huv hux1 hvx1 hux2 hvx2 hlu hlv hdu hdv heu hev U0 V0)
      (fun s _ ⟨_, ⟨h1, h2⟩, h3, h4⟩ => ⟨⟨h1, h2⟩, h3, h4⟩)
  · intro s _ hk
    have hk' : muO 6 u v s = k := by
      rcases hk with ⟨-, ⟨-, -, -, h⟩ | ⟨_, h⟩⟩ | ⟨_, h⟩
      · exact h
      · cases h
      · cases h
    exact ⟨_, _, rfl, rfl, hk'⟩

/-! ## Costs -/

theorem blsTail_cost {u v x1 x2 ult d e : MlS} {Blt Bsub Bfs : Nat}
    (hlt : CalleeCost σ X (nm "bls_fp_lt_raw") Blt)
    (hsub : CalleeCost σ X (nm "bls_fp_sub_raw") Bsub)
    (hfs : CalleeCost σ X (nm "bls_fp_sub") Bfs) :
    Cost σ X (blsTail u v x1 x2 ult d e) (Blt + Bsub + Bfs + 3) :=
  (cost_decCall hlt (cost_ite
    (cost_decCall hsub (cost_seq (cost_assign _ _ _) (cost_callTo hfs)))
    (cost_decCall hsub (cost_seq (cost_assign _ _ _) (cost_callTo hfs))))).mono (by omega)

theorem blsOuter_cost (hC : X.code.lookup = guestCode) {u v x1 x2 ult d e : MlS}
    (hux1 : u ≠ x1) (hvx2 : v ≠ x2) {Blt Bsub Bshr Bhc Bfs : Nat}
    (hlt : CalleeCost σ X (nm "bls_fp_lt_raw") Blt)
    (hsub : CalleeCost σ X (nm "bls_fp_sub_raw") Bsub)
    (hshr : CalleeCost σ X (nm "bls_fp_shr1") Bshr)
    (hhc : CalleeCost σ X (nm "bls_fp_half_can") Bhc)
    (hfs : CalleeCost σ X (nm "bls_fp_sub") Bfs)
    (hesc : CalleeEscFree σ X (nm "bls_fp_half_can")) :
    Cost σ X (blsOuter u v x1 x2 ult d e) (770 * (Bshr + Bhc) + Blt + Bsub + Bfs + 2313) :=
  (cost_seq guard_cost (cost_seq guard_cost (cost_seq (blsHalve_cost hC hux1 hshr hhc hesc)
    (cost_seq (blsHalve_cost hC hvx2 hshr hhc hesc) (blsTail_cost hlt hsub hfs))))).mono
    (by omega)

/-- The outer loop of `bls_fp_inv_raw` runs at most `1538` iterations. -/
theorem blsLoop_cost (hC : X.code.lookup = guestCode) {Blt Bsub Bshr Bhc Bfs : Nat}
    (hlt : CalleeCost σ X (nm "bls_fp_lt_raw") Blt)
    (hsub : CalleeCost σ X (nm "bls_fp_sub_raw") Bsub)
    (hshr : CalleeCost σ X (nm "bls_fp_shr1") Bshr)
    (hhc : CalleeCost σ X (nm "bls_fp_half_can") Bhc)
    (hfs : CalleeCost σ X (nm "bls_fp_sub") Bfs)
    (hesc : CalleeEscFree σ X (nm "bls_fp_half_can")) :
    Cost σ X blsLoop (1538 * (770 * (Bshr + Bhc) + Blt + Bsub + Bfs + 2314)) := by
  have H := hdec_of_hoare (σ := σ) (X := X) (c := cw 1)
    (body := blsOuter (nm "u") (nm "v") (nm "x1") (nm "x2") (nm "ult") (nm "d") (nm "e"))
    (muO 6 (nm "u") (nm "v")) (fun _ => True) (fun _ => rfl) (fun _ h => h)
    (blsOuter_dec hC (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide) (by decide))
  exact (cost_while (muO 6 (nm "u") (nm "v")) 1537
    (blsOuter_cost hC (by decide) (by decide) hlt hsub hshr hhc hfs hesc)
    (fun s _ _ => muO6_le s _ _) (fun s hs hc _ hexit => H s hs hc trivial hexit)).mono
    (by omega)

/-- **Tick bound of `bls_fp_inv_raw`.** -/
theorem blsInvBody_cost (hC : X.code.lookup = guestCode) {Bz Blt Bsub Bshr Bhc Bfs : Nat}
    (hz : CalleeCost σ X (nm "bls_fp_is_zero") Bz)
    (hlt : CalleeCost σ X (nm "bls_fp_lt_raw") Blt)
    (hsub : CalleeCost σ X (nm "bls_fp_sub_raw") Bsub)
    (hshr : CalleeCost σ X (nm "bls_fp_shr1") Bshr)
    (hhc : CalleeCost σ X (nm "bls_fp_half_can") Bhc)
    (hfs : CalleeCost σ X (nm "bls_fp_sub") Bfs)
    (hesc : CalleeEscFree σ X (nm "bls_fp_half_can")) :
    Cost σ X blsInvBody (1 + Bz + 1538 * (770 * (Bshr + Bhc) + Blt + Bsub + Bfs + 2314)) :=
  (cost_decCall hz (cost_seq (cost_ite (cost_return _) cost_skip)
    (cost_dec (cost_dec (cost_dec (cost_dec
      (cost_seq (blsLoop_cost hC hlt hsub hshr hhc hfs hesc) (cost_return _)))))))).mono
    (by omega)

theorem bls_fp_inv_raw_cost (hC : X.code.lookup = guestCode) {Bz Blt Bsub Bshr Bhc Bfs : Nat}
    (hz : CalleeCost σ X (nm "bls_fp_is_zero") Bz)
    (hlt : CalleeCost σ X (nm "bls_fp_lt_raw") Blt)
    (hsub : CalleeCost σ X (nm "bls_fp_sub_raw") Bsub)
    (hshr : CalleeCost σ X (nm "bls_fp_shr1") Bshr)
    (hhc : CalleeCost σ X (nm "bls_fp_half_can") Bhc)
    (hfs : CalleeCost σ X (nm "bls_fp_sub") Bfs)
    (hesc : CalleeEscFree σ X (nm "bls_fp_half_can")) :
    CalleeCost σ X (nm "bls_fp_inv_raw")
      (1 + Bz + 1538 * (770 * (Bshr + Bhc) + Blt + Bsub + Bfs + 2314)) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_bls_fp_inv_raw hl
  exact blsInvBody_cost hC hz hlt hsub hshr hhc hfs hesc

end InitECandidate.Solver.Spec
