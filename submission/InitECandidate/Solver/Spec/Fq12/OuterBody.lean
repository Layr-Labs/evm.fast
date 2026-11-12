import InitECandidate.Solver.Spec.Fq12.OuterLk

/-!
# One iteration of the outer loop of `fq12_inv`, and the loop's cost

`outer_body_ch`: from buffers `b` (pairwise disjoint, in the locals) and measure `k`, the body
costs at most `outerB ...` ticks, and a normal exit restores the invariant with a smaller
measure. `outer_cost`: the whole loop, at most `14 * (outerB ... + 1)` ticks.
-/

set_option linter.unusedSimpArgs false

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem hoare_brk {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (h : ∀ s, InCtx s X → P s → Q (some .break) s) : Hoare σ X P (.break : ProgHOL 64) Q := by
  intro s hs hp _
  rw [evaluateHOLFiniteState_eq_evaluate_def s .break]
  exact h s hs hp

/-- The cost of one outer iteration. -/
def outerB (Bdeg Bmz Binv Bmc Bmul Bsm Bz : Nat) : Nat :=
  1 + Bdeg + (max 0 0 + (1 + Bdeg + ((1 + Bmz + 0) + (1 + Binv +
    ((13 + 1) * (innerB Bmul Bsm Bdeg + 1) + ((1 + Bmc + 0) + ((13 + 1) * (jB Bz Bsm + 1) + 0)))))))

theorem outer_body_ch (hC : X.code.lookup = guestCode)
    {Bdeg Bmz Binv Bmc Bmul Bsm Bz : Nat}
    (hdg : CalleeCost σ X (nm "fq_poly_deg") Bdeg) (hmz : CalleeCost σ X (nm "memzero") Bmz)
    (hiv : CalleeCost σ X (nm "fq_inv") Binv) (hmc : CalleeCost σ X (nm "memcpy") Bmc)
    (hmul : CalleeCost σ X (nm "fq_mul") Bmul) (hsm : CalleeCost σ X (nm "fq_poly_submul") Bsm)
    (hz : CalleeCost σ X (nm "u256_is_zero") Bz)
    {ef : MlS → Bool} (hef : EfSound σ X.code ef)
    (he1 : ef (nm "fq_mul") = true) (he2 : ef (nm "fq_poly_submul") = true)
    (he3 : ef (nm "fq_poly_deg") = true) (b : Bufs) (k : Nat) :
    CH σ X (fun s => BufLk b s ∧ Pw b ∧ muOut s = k) outerBody
      (outerB Bdeg Bmz Binv Bmc Bmul Bsm Bz) (QO k) := by
  have hdgS := (funSpec_deg (σ := σ) (X := X) hC).and
    (funSpec_be (σ := σ) (X := X) (nm "fq_poly_deg"))
  have hmzS := (funSpec_memzero (σ := σ) (X := X) hC).and
    (funSpec_be (σ := σ) (X := X) (nm "memzero"))
  have hmcS := (funSpec_memcpy (σ := σ) (X := X) hC).and
    (funSpec_be (σ := σ) (X := X) (nm "memcpy"))
  have hivS := (funSpec_of_funRet (funRet_fq_inv (σ := σ) (X := X) hC)).and
    ((funSpec_fq_mw (σ := σ) (X := X) hC (f := nm "fq_inv") (by decide)).and
      (funSpec_be (σ := σ) (X := X) (nm "fq_inv")))
  unfold outerB outerBody
  -- `d1 = fq_poly_deg(r1, 13)`
  refine ch_decCallS hdg hdgS ?_
  intro s hs ⟨hb, hpw, hk⟩ vs hvs callee v1 st1 hR1 hst1 _
  refine CH.post (Q := QO k) ?_ (fun r t _ _ h => qo_restore (by decide) _ h)
  obtain ⟨hr0, hr1, hs0, hs1, hq, htm⟩ := hb
  obtain ⟨dj01, dj0q, dj1q, dj0t⟩ := pw_facts hpw
  have hargs1 : evs s [lv (nm "r1"), cw 13] =
      some [.val (.word b.R1), .val (.word (BitVec.ofNat 64 13))] :=
    evs_cons (ev_lw hr1) (evs_cons (ev_cw _ 13) evs_nil)
  rw [hargs1] at hvs
  cases hvs
  obtain ⟨A, N, hvs2, hmem1, hdeg1⟩ := hR1.1 v1 rfl
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs2
  obtain ⟨rfl, rfl⟩ := hvs2
  obtain ⟨D1, rfl, hdf1⟩ := hdeg1 rfl
  have hdf1' : DegFacts s b.R1 D1 := hdf1
  have hkD : k = degM D1 := by rw [← hk]; exact muOut_eq hr1 hdf1'
  have hD1r : D1 = 0 - 1 ∨ D1.toNat < 13 := by
    rcases hdf1' with ⟨h, -⟩ | ⟨h, -, -⟩
    · exact Or.inl h
    · exact Or.inr h
  generalize hT1 : setVarHOLFinite (nm "d1") (.val (.word D1)) { st1 with locals := s.locals } = t1
  have hm1 : t1.memory = s.memory := by rw [← hT1]; exact hmem1
  have hbe1 : t1.be = s.be := by rw [← hT1]; exact hR1.2
  have hmd1 : t1.memaddrs = s.memaddrs := by rw [← hT1]; exact hst1.2.1.trans hs.2.1.symm
  have hl1 : ∀ x, x ≠ nm "d1" → t1.locals.lookup x = s.locals.lookup x := by
    intro x hx; rw [← hT1, lk_ne (Ne.symm hx)]
  have hd1v : t1.locals.lookup (nm "d1") = some (.val (.word D1)) := by
    rw [← hT1]; exact lk_set_self _ _ _
  -- `if (0 >= d1) break;`
  refine ch_seq (R := fun r u => (r = none → u = t1 ∧ 1 ≤ D1.toNat ∧ D1.toNat ≤ 12) ∧
      (r ≠ none → r = some .break)) ?_ ?_ ?_
  · refine ch_ite ?_ ?_
    · exact ch_of cost_break (hoare_brk fun u _ _ => ⟨nofun, fun _ => rfl⟩)
    · refine ch_of cost_skip (hoare_skip fun u _ ⟨hu, hc⟩ => ⟨fun _ => ⟨hu, ?_⟩, fun h => absurd rfl h⟩)
      subst u
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_cw] at hx; cases hx
      rw [ev_lw hd1v] at hy; cases hy
      exact d1_range hD1r hxy
  · intro r u _ hr _ h
    rw [h.2 hr]
    intro hc; rcases hc with hc | hc <;> cases hc
  refine CH.pre (P := fun u => 1 ≤ D1.toNat ∧ D1.toNat ≤ 12 ∧ u = t1) ?_
    (fun u _ h => ⟨(h.1 rfl).2.1, (h.1 rfl).2.2, (h.1 rfl).1⟩)
  refine ch_pure fun hD1a => ch_pure fun hD1b => ?_
  -- `d0 = fq_poly_deg(r0, 13)`
  refine ch_decCallS hdg hdgS ?_
  intro u hu hu1 vs hvs callee2 v2 st2 hR2 hst2 _
  subst u
  refine CH.post (Q := QO k) ?_ (fun r t _ _ h => qo_restore (by decide) _ h)
  have hargs2 : evs t1 [lv (nm "r0"), cw 13] =
      some [.val (.word b.R0), .val (.word (BitVec.ofNat 64 13))] :=
    evs_cons (ev_lw (by rw [hl1 _ (by decide)]; exact hr0)) (evs_cons (ev_cw _ 13) evs_nil)
  rw [hargs2] at hvs
  cases hvs
  obtain ⟨A, N, hvs2, hmem2, hdeg2⟩ := hR2.1 v2 rfl
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs2
  obtain ⟨rfl, rfl⟩ := hvs2
  obtain ⟨D0, rfl, hdf0⟩ := hdeg2 rfl
  have hdf0' : DegFacts t1 b.R0 D0 := hdf0
  generalize hT2 : setVarHOLFinite (nm "d0") (.val (.word D0)) { st2 with locals := t1.locals } = t2
  have hm2 : t2.memory = t1.memory := by rw [← hT2]; exact hmem2
  have hbe2 : t2.be = t1.be := by rw [← hT2]; exact hR2.2
  have hmd2 : t2.memaddrs = t1.memaddrs := by rw [← hT2]; exact hst2.2.1.trans hu.2.1.symm
  have hl2 : ∀ x, x ≠ nm "d0" → t2.locals.lookup x = t1.locals.lookup x := by
    intro x hx; rw [← hT2, lk_ne (Ne.symm hx)]
  have hd0v : t2.locals.lookup (nm "d0") = some (.val (.word D0)) := by
    rw [← hT2]; exact lk_set_self _ _ _
  -- `memzero(q, 416)`
  refine ch_seq (R := fun r u => r = none ∧ u.locals = t2.locals ∧
      (∀ c, ¬ InBuf b.Qb c → u.memory c = t2.memory c) ∧ u.be = t2.be ∧
      u.memaddrs = t2.memaddrs) ?_ (fun r u _ hr _ h => absurd h.1 hr) ?_
  · unfold callN
    refine ch_callD hmz hmzS ?_
    intro u hu hu2 vs hvs callee3 v3 st3 hR3 hst3
    subst u
    have hq2 : t2.locals.lookup (nm "q") = some (.val (.word b.Qb)) := by
      rw [hl2 _ (by decide), hl1 _ (by decide)]; exact hq
    have hargs : evs t2 [lv (nm "q"), cw 416] =
        some [.val (.word b.Qb), .val (.word (BitVec.ofNat 64 416))] :=
      evs_cons (ev_lw hq2) (evs_cons (ev_cw _ 416) evs_nil)
    rw [hargs] at hvs
    cases hvs
    obtain ⟨dst, n, hvs3, hfp⟩ := hR3.1 v3 rfl
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs3
    obtain ⟨rfl, rfl⟩ := hvs3
    refine ⟨rfl, rfl, fun c hc => ?_, hR3.2, hst3.2.1.trans hu.2.1.symm⟩
    exact hfp (by decide) c (fun hf => hc (fpCells_inBuf (by decide) hf))
  -- `var lead = r1[d1]`
  refine ch_dec fun u hu ⟨_, hul, hum, hube, humd⟩ vl hvl _ => ?_
  refine CH.post (Q := QO k) ?_ (fun r t _ _ h => qo_restore (by decide) _ h)
  have hlu : ∀ x, x ≠ nm "d0" → x ≠ nm "d1" → u.locals.lookup x = s.locals.lookup x := by
    intro x h1 h2; rw [hul, hl2 _ h1, hl1 _ h2]
  have hr1u : u.locals.lookup (nm "r1") = some (.val (.word b.R1)) := by
    rw [hlu _ (by decide) (by decide)]; exact hr1
  have hd1u : u.locals.lookup (nm "d1") = some (.val (.word D1)) := by
    rw [hul, hl2 _ (by decide)]; exact hd1v
  have hd0u : u.locals.lookup (nm "d0") = some (.val (.word D0)) := by
    rw [hul]; exact hd0v
  obtain ⟨rfl, -⟩ := ev_load4_inv (ev_sl hr1u hd1u) hvl
  -- `linv = fq_inv(lead)`
  refine ch_decCallS hiv hivS ?_
  intro u4 hu4 hu4e vs hvs callee5 v5 st5 hR5 hst5 hsh5
  subst u4
  refine CH.post (Q := QO k) ?_ (fun r t _ _ h => qo_restore (by decide) _ h)
  have hargs5 : evs (setVarHOLFinite (nm "lead") (wv (words4 u.memory (sl b.R1 D1))) u)
      [lv (nm "lead")] = some [wv (words4 u.memory (sl b.R1 D1))] :=
    evs_cons (by rw [ev_lv, lk_set_self]) evs_nil
  rw [hargs5] at hvs
  cases hvs
  obtain ⟨hivR, hmem5, hbe5⟩ := hR5
  obtain ⟨LI, hLIl, rfl⟩ := eq_wv_of_shapeEq' hsh5
  obtain ⟨_, _, _, rs, _, hrs, hrsp⟩ := hivR (wv LI) rfl
  have hLIp : wn LI < fqP := by rw [wv_inj hrs]; exact hrsp
  generalize hT5 : setVarHOLFinite (nm "linv") (wv LI) { st5 with locals :=
    (setVarHOLFinite (nm "lead") (wv (words4 u.memory (sl b.R1 D1))) u).locals } = t5
  have hm5 : t5.memory = u.memory := by rw [← hT5]; exact hmem5
  have hbe5' : t5.be = u.be := by rw [← hT5]; exact hbe5
  have hmd5 : t5.memaddrs = u.memaddrs := by rw [← hT5]; exact hst5.2.1.trans hu.2.1.symm
  have hl5 : ∀ x, x ≠ nm "linv" → x ≠ nm "lead" → t5.locals.lookup x = u.locals.lookup x := by
    intro x h1 h2; rw [← hT5, lk_ne (Ne.symm h1)]; exact lk_ne (Ne.symm h2)
  have hli5 : t5.locals.lookup (nm "linv") = some (wv LI) := by
    rw [← hT5]; exact lk_set_self _ _ _
  have hls : ∀ x, x ≠ nm "linv" → x ≠ nm "lead" → x ≠ nm "d0" → x ≠ nm "d1" →
      t5.locals.lookup x = s.locals.lookup x := by
    intro x h1 h2 h3 h4; rw [hl5 _ h1 h2, hlu _ h3 h4]
  -- the division loop
  let g : IG := ⟨b.R0, b.R1, b.Qb, D1, words4 t5.memory (sl b.R1 D1), LI⟩
  have hI5 : InI g t5 := by
    refine ⟨⟨?_, ?_, ?_, ?_, hli5, hLIl, hLIp, rfl, hD1a, hD1b, dj01, dj0q, dj1q⟩, D0, ?_, ?_⟩
    · rw [hls _ (by decide) (by decide) (by decide) (by decide)]; exact hr0
    · rw [hls _ (by decide) (by decide) (by decide) (by decide)]; exact hr1
    · rw [hls _ (by decide) (by decide) (by decide) (by decide)]; exact hq
    · rw [hl5 _ (by decide) (by decide)]; exact hd1u
    · rw [hl5 _ (by decide) (by decide)]; exact hd0u
    · refine degFacts_frame (hmd5.trans (humd.trans (hmd2))) (hbe5'.trans (hube.trans hbe2))
        (fun c hc => ?_) hdf0'
      rw [hm5, hum c (fun hq' => dj0q c hc hq'), hm2]
  unfold outerTail
  refine ch_seq (R := fun r t => (r = none ∧ ExitI g t) ∧ (r = none ∧ LkF t5 t)) ?_
    (fun r t _ hr _ h => absurd h.1.1 hr) ?_
  · have hch := inner_ch hC g hmul hsm hdg hef he1 he2 he3
    exact ⟨hch.1.pre fun t _ ht => ht ▸ hI5, hoare_and (hoare_pre hch.2 fun t _ ht => ht ▸ hI5)
      (hoare_pre (innerLoop_lk t5) fun t _ ht => ht ▸ fun _ _ _ _ => rfl)⟩
  refine CH.pre (P := fun t => BufLk b t ∧ ∃ D, DegFacts t b.R0 D ∧
      (D = 0 - 1 ∨ D.toNat < D1.toNat)) ?_ ?_
  rotate_left
  · intro t _ ⟨⟨_, hF, D, _, hdf, hDr⟩, _, hL⟩
    refine ⟨⟨hF.1, hF.2.1, ?_, ?_, hF.2.2.1, ?_⟩, D, hdf, hDr⟩
    · rw [hL _ (by decide) (by decide) (by decide),
        hls _ (by decide) (by decide) (by decide) (by decide)]; exact hs0
    · rw [hL _ (by decide) (by decide) (by decide),
        hls _ (by decide) (by decide) (by decide) (by decide)]; exact hs1
    · rw [hL _ (by decide) (by decide) (by decide),
        hls _ (by decide) (by decide) (by decide) (by decide)]; exact htm
  -- `memcpy(tmp, s0, 416)`
  refine ch_seq (R := fun r t => r = none ∧ BufLk b t ∧ ∃ D, DegFacts t b.R0 D ∧
      (D = 0 - 1 ∨ D.toNat < D1.toNat)) ?_ (fun r u _ hr _ h => absurd h.1 hr) ?_
  · unfold callN
    refine ch_callD hmc hmcS ?_
    intro u hu ⟨hbu, D, hdfu, hDr⟩ vs hvs callee6 v6 st6 hR6 hst6
    have hargs : evs u [lv (nm "tmp"), lv (nm "s0"), cw 416] =
        some [.val (.word b.TM), .val (.word b.S0), .val (.word (BitVec.ofNat 64 416))] :=
      evs_cons (ev_lw hbu.2.2.2.2.2) (evs_cons (ev_lw hbu.2.2.1) (evs_cons (ev_cw _ 416) evs_nil))
    rw [hargs] at hvs
    cases hvs
    obtain ⟨dst, src, n, hvs6, hfp⟩ := hR6.1 v6 rfl
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs6
    obtain ⟨rfl, rfl, rfl⟩ := hvs6
    refine ⟨rfl, hbu, D, ?_, hDr⟩
    refine degFacts_frame (hst6.2.1.trans hu.2.1.symm) hR6.2 (fun c hc => ?_) hdfu
    exact hfp (by decide) c (fun hf => dj0t c hc (fpCells_inBuf (by decide) hf))
  -- `var j = 0; while (j < 13) ...; swap`
  refine ch_dec fun u hu ⟨_, hbu, D, hdfu, hDr⟩ vj hvj _ => ?_
  rw [ev_cw] at hvj
  cases hvj
  refine CH.post (Q := QO k) ?_ (fun r t _ _ h => qo_restore (by decide) _ h)
  generalize hT8 : setVarHOLFinite (nm "j") (.val (.word (BitVec.ofNat 64 0))) u = t8
  have hb8 : BufLk b t8 := by rw [← hT8]; exact bufLk_setVar (by decide) _ hbu
  have hj8 : t8.locals.lookup (nm "j") = some (.val (.word (BitVec.ofNat 64 0))) := by
    rw [← hT8]; exact lk_set_self _ _ _
  have hdf8 : DegFacts t8 b.R0 D := by rw [← hT8]; exact hdfu
  refine ch_seq (R := fun r t => r = none ∧ ∃ jv, JJ t8 b jv t) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · have hJ8 : ∃ jv, JJ t8 b jv t8 := ⟨_, hb8, hj8, by decide, fun _ _ => rfl, rfl, rfl⟩
    exact ⟨(jLoop_cost hC t8 b hz hsm).pre fun t _ ht => ht ▸ hJ8,
      hoare_pre (jLoop_hoare hC t8 b) fun t _ ht => ht ▸ hJ8⟩
  refine CH.pre (P := fun t => ∃ jv, JJ t8 b jv t) ?_ (fun t _ h => h.2)
  refine ch_exists fun jv => ⟨Inv.costP_of_cost swap_cost, ?_⟩
  intro t ht ⟨hbt, _, _, hfr⟩ htr
  obtain ⟨_, hb', hm', hbe', hmd'⟩ := swap_hoare (X := X) t hbt t ht rfl htr
  intro _
  have hdfT : DegFacts (evaluateHOLFiniteState t swapP).2 b.R0 D :=
    degFacts_congr hm' hmd' hbe' (degFacts_of_frB dj0t hfr hdf8)
  refine ⟨⟨_, hb', pw_swap hpw⟩, ?_⟩
  rw [muOut_eq hb'.2.1 hdfT, hkD]
  exact degM_lt hD1a hD1b hDr

/-- **The outer loop of `fq12_inv`**, from its invariant. -/
theorem outer_cost (hC : X.code.lookup = guestCode)
    {Bdeg Bmz Binv Bmc Bmul Bsm Bz : Nat}
    (hdg : CalleeCost σ X (nm "fq_poly_deg") Bdeg) (hmz : CalleeCost σ X (nm "memzero") Bmz)
    (hiv : CalleeCost σ X (nm "fq_inv") Binv) (hmc : CalleeCost σ X (nm "memcpy") Bmc)
    (hmul : CalleeCost σ X (nm "fq_mul") Bmul) (hsm : CalleeCost σ X (nm "fq_poly_submul") Bsm)
    (hz : CalleeCost σ X (nm "u256_is_zero") Bz)
    {ef : MlS → Bool} (hef : EfSound σ X.code ef)
    (he1 : ef (nm "fq_mul") = true) (he2 : ef (nm "fq_poly_submul") = true)
    (he3 : ef (nm "fq_poly_deg") = true) :
    Inv.CostP σ X Iout outerLoop ((13 + 1) * (outerB Bdeg Bmz Binv Bmc Bmul Bsm Bz + 1)) := by
  have hb := fun b k => outer_body_ch hC hdg hmz hiv hmc hmul hsm hz hef he1 he2 he3 b k
  refine Inv.costP_while muOut 13 (fun s h => h) (fun s => rfl) ?_ ?_ ?_ ?_
  · refine Inv.CostP.pre (P := fun s => ∃ k b, BufLk b s ∧ Pw b ∧ muOut s = k)
      (Inv.costP_exists fun k => Inv.costP_exists fun b => (hb b k).1) ?_
    intro s _ ⟨⟨b, hbs, hp⟩, _⟩
    exact ⟨_, b, hbs, hp, rfl⟩
  · refine hoare_pre (P := fun s => ∃ k b, BufLk b s ∧ Pw b ∧ muOut s = k)
      (hoare_exists fun k => hoare_exists fun b =>
        hoare_post (hb b k).2 fun r t _ _ h hr => (h hr).1) ?_
    intro s _ ⟨⟨b, hbs, hp⟩, _⟩
    exact ⟨_, b, hbs, hp, rfl⟩
  · intro s _ _ _
    exact muOut_le s
  · intro k
    refine hoare_pre (P := fun s => ∃ b, BufLk b s ∧ Pw b ∧ muOut s = k)
      (hoare_exists fun b => hoare_post (hb b k).2 fun r t _ _ h hr => (h hr).2) ?_
    intro s _ ⟨⟨b, hbs, hp⟩, _, hk⟩
    exact ⟨b, hbs, hp, hk⟩

end InitECandidate.Solver.Spec.Fq12
