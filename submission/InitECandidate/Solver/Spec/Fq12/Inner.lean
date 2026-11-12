import InitECandidate.Solver.Spec.Fq12.DegStep

/-!
# The division loop of `fq12_inv`

`while d0 >= d1 { top = r0[d0]; cf = fq_mul(top, linv); q[d0 - d1] = cf;
fq_poly_submul(r0, r1, cf, d0 - d1, d1); d0 = fq_poly_deg(r0, 13) }`

Ghosts (`IG`): the buffers `R0`, `R1`, `Qb`, the divisor degree `D1 ∈ [1, 12]`, the divisor's
leading coefficient as stored (`LEAD`) and `linv` (`LI`, reduced).

* `InI`: the loop invariant (locals, `DegFacts` of the remainder at `d0`, the divisor's
  leading coefficient unchanged, disjoint buffers).
* `inner_step`: one iteration at degree `D`. If `R0` is unaligned the degree stays; if it
  is aligned the new top coefficient is `GRel`-related to the old one, and the degree drops
  iff it is zero.
* `DoomI`: the iteration stays at the same degree forever (`grel_doom`).
* `inner_cost`: at most `14` iterations in a Good run.
-/

set_option linter.unusedSimpArgs false

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

structure IG where
  R0 : BitVec 64
  R1 : BitVec 64
  Qb : BitVec 64
  D1 : BitVec 64
  LEAD : List (BitVec 64)
  LI : List (BitVec 64)

variable {σ : Type} {X : Ctx 64}

/-- The facts of the division loop that do not depend on the current degree. -/
def InF (g : IG) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  t.locals.lookup (nm "r0") = some (.val (.word g.R0)) ∧
  t.locals.lookup (nm "r1") = some (.val (.word g.R1)) ∧
  t.locals.lookup (nm "q") = some (.val (.word g.Qb)) ∧
  t.locals.lookup (nm "d1") = some (.val (.word g.D1)) ∧
  t.locals.lookup (nm "linv") = some (wv g.LI) ∧ g.LI.length = 4 ∧ wn g.LI < fqP ∧
  words4 t.memory (sl g.R1 g.D1) = g.LEAD ∧
  1 ≤ g.D1.toNat ∧ g.D1.toNat ≤ 12 ∧ Disj g.R0 g.R1 ∧ Disj g.R0 g.Qb ∧ Disj g.R1 g.Qb

/-- The loop invariant. -/
def InI (g : IG) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  InF g t ∧ ∃ D, t.locals.lookup (nm "d0") = some (.val (.word D)) ∧ DegFacts t g.R0 D

theorem inF_restore {g : IG} {t : PanSemStateFiniteExact 64 σ} {n : MlS}
    (hn : n ∉ [nm "r0", nm "r1", nm "q", nm "d1", nm "linv"]) (old : Option (ValueHOL 64))
    (h : InF g t) : InF g { t with locals := t.locals.resVarEq (n, old) } := by
  simp only [List.mem_cons, List.not_mem_nil, or_false, not_or] at hn
  obtain ⟨n1, n2, n3, n4, n5⟩ := hn
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := h
  refine ⟨?_, ?_, ?_, ?_, ?_, h6⟩
  · show (t.locals.resVarEq (n, old)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ n1]; exact h1
  · show (t.locals.resVarEq (n, old)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ n2]; exact h2
  · show (t.locals.resVarEq (n, old)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ n3]; exact h3
  · show (t.locals.resVarEq (n, old)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ n4]; exact h4
  · show (t.locals.resVarEq (n, old)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ n5]; exact h5

theorem sl_sub_add (D D1 : BitVec 64) : D - D1 + D1 = D := by bv_omega

theorem toNat_sub_le {D D1 : BitVec 64} (h : D1.toNat ≤ D.toNat) : (D - D1).toNat = D.toNat - D1.toNat := by
  rw [BitVec.toNat_sub]; omega

theorem byteZ_congr {s t : PanSemStateFiniteExact 64 σ} (hm : t.memory = s.memory)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) {x : BitVec 64} (h : ByteZ s x) :
    ByteZ t x := by
  unfold ByteZ; rw [rdB_eq_of hm hd hbe]; exact h

theorem degFacts_congr {s t : PanSemStateFiniteExact 64 σ} (hm : t.memory = s.memory)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) {a d : BitVec 64} (h : DegFacts s a d) :
    DegFacts t a d :=
  degFacts_frame hd hbe (fun c _ => by rw [hm]) h

/-- The write sets of one iteration. -/
def WQ (g : IG) (D : BitVec 64) (c : BitVec 64) : Prop := WSlot (sl g.Qb (D - g.D1)) c
def WR (g : IG) (D : BitVec 64) (c : BitVec 64) : Prop :=
  ∃ i : BitVec 64, i.toNat ≤ g.D1.toNat ∧ WSlot (sl g.R0 ((D - g.D1) + i)) c

/-- The facts one iteration establishes. -/
def StepPost (g : IG) (D : BitVec 64) (T : List (BitVec 64)) (t t' : PanSemStateFiniteExact 64 σ) :
    Prop :=
  InF g t' ∧ (∃ D', t'.locals.lookup (nm "d0") = some (.val (.word D')) ∧ DegFacts t' g.R0 D') ∧
  (∀ c, ¬ WQ g D c → ¬ WR g D c → t'.memory c = t.memory c) ∧
  t'.memaddrs = t.memaddrs ∧ t'.be = t.be ∧
  GRel (wn g.LI) (wn g.LEAD) (wn T) (wn (words4 t'.memory (sl g.R0 D))) ∧
  Dom4 t.memaddrs (sl g.R0 D)

theorem stepPost_restore {g : IG} {D : BitVec 64} {T : List (BitVec 64)}
    {t t' : PanSemStateFiniteExact 64 σ} {n : MlS}
    (hn : n ∉ [nm "r0", nm "r1", nm "q", nm "d1", nm "linv", nm "d0"]) (old : Option (ValueHOL 64))
    (h : StepPost g D T t t') : StepPost g D T t { t' with locals := t'.locals.resVarEq (n, old) } := by
  have hn' : n ∉ [nm "r0", nm "r1", nm "q", nm "d1", nm "linv"] := by
    intro hm; exact hn (by simp only [List.mem_cons] at hm ⊢; tauto)
  have hd0 : n ≠ nm "d0" := by intro he; exact hn (by simp [he])
  obtain ⟨h1, ⟨D', hD', hdeg⟩, h3, h4, h5, h6, h7⟩ := h
  refine ⟨inF_restore hn' old h1, ⟨D', ?_, hdeg⟩, h3, h4, h5, h6, h7⟩
  show (t'.locals.resVarEq (n, old)).lookup _ = _
  rw [lookup_resVarEq_ne _ _ hd0]; exact hD'

theorem wslot_disj {x y m k c : BitVec 64} (hxy : Disj x y) (hm : m.toNat < 13) (hk : k.toNat < 13)
    (h1 : WSlot (sl x m) c) (h2 : WSlot (sl y k) c) : False :=
  hxy c (wslot_inBuf hm h1) (wslot_inBuf hk h2)

theorem lk_upd_ne' {t : PanSemStateFiniteExact 64 σ} {x y : MlS} {v : ValueHOL 64} (h : x ≠ y) :
    (t.locals.update (x, v)).lookup y = t.locals.lookup y := lookup_update_ne _ _ h

/-- **One iteration of the division loop** at degree `D`. -/
theorem inner_step (hC : X.code.lookup = guestCode) (g : IG) (D : BitVec 64)
    (t0 : PanSemStateFiniteExact 64 σ) (hF : InF g t0)
    (hd0 : t0.locals.lookup (nm "d0") = some (.val (.word D)))
    (hDle : g.D1.toNat ≤ D.toNat) (hD13 : D.toNat < 13) :
    Hoare σ X (fun t => t = t0) innerBody
      (fun r t' => r = none ∧ StepPost g D (words4 t0.memory (sl g.R0 D)) t0 t') := by
  have hmul := (funSpec_of_funRet (funRet_fq_mul (σ := σ) hC)).and
    ((funSpec_fq_mw (σ := σ) hC (f := nm "fq_mul") (by decide)).and (funSpec_be (σ := σ) (X := X) _))
  have hsm := (funSpec_submul (σ := σ) hC).and (funSpec_be (σ := σ) (X := X) (nm "fq_poly_submul"))
  have hdg := (funSpec_deg (σ := σ) hC).and (funSpec_be (σ := σ) (X := X) (nm "fq_poly_deg"))
  obtain ⟨hr0, hr1, hq, hd1, hli, hLIl, hLIp, hlead, hD1a, hD1b, hdj01, hdj0q, hdj1q⟩ := hF
  generalize hT : words4 t0.memory (sl g.R0 D) = T
  have hDD1 : (D - g.D1).toNat = D.toNat - g.D1.toNat := toNat_sub_le hDle
  unfold innerBody
  refine hoare_dec fun t1 hctx0 ht1 v hv _ => ?_
  subst t1
  obtain ⟨rfl, hdomT⟩ := ev_load4_inv (ev_sl hr0 hd0) hv
  rw [hT]
  -- `cf = fq_mul(top, linv)`
  refine hoare_decCallS hmul ?_
  intro t2 _ ht2 vs hvs callee cfv st1 hR hst1 hsh
  subst ht2
  have hvs' : evs (setVarHOLFinite (nm "top") (wv T) t0) [lv (nm "top"), lv (nm "linv")] =
      some [wv T, wv g.LI] :=
    evs_cons (by rw [ev_lv, lk_set_self])
      (evs_cons (by rw [ev_lv, lk_ne (by decide)]; exact hli) evs_nil)
  rw [hvs'] at hvs
  cases hvs
  obtain ⟨hmulR, hmem1, hbe1⟩ := hR
  obtain ⟨CF, hCFl, rfl⟩ := eq_wv_of_shapeEq' hsh
  obtain ⟨as', bs', _, _, hv2, hgood⟩ := hmulR (wv CF) rfl
  simp only [List.cons.injEq, and_true] at hv2
  have e1 := wv_inj hv2.1
  have e2 := wv_inj hv2.2
  subst e1; subst e2
  obtain ⟨rs, _, hrs, hCFp, hCFmod⟩ := hgood (Or.inr hLIp)
  have := wv_inj hrs
  subst this
  -- the state after the call
  generalize hT3 : setVarHOLFinite (nm "cf") (wv CF) { st1 with locals :=
    (setVarHOLFinite (nm "top") (wv T) t0).locals } = t3
  have hm3 : t3.memory = t0.memory := by rw [← hT3]; exact hmem1
  have hbe3 : t3.be = t0.be := by rw [← hT3]; exact hbe1
  have hl3 : ∀ x, x ≠ nm "cf" → x ≠ nm "top" → t3.locals.lookup x = t0.locals.lookup x := by
    intro x h1 h2
    rw [← hT3, lk_ne (Ne.symm h1)]
    exact lk_ne (Ne.symm h2)
  have hcf3 : t3.locals.lookup (nm "cf") = some (wv CF) := by rw [← hT3]; exact lk_set_self _ _ _
  -- frame facts used twice
  have hR1 : ∀ c, WSlot (sl g.R1 g.D1) c → ¬ WQ g D c := fun c h1 h2 =>
    wslot_disj hdj1q (by omega) (by omega) h1 h2
  have hR0q : ∀ c, WSlot (sl g.R0 D) c → ¬ WQ g D c := fun c h1 h2 =>
    wslot_disj hdj0q hD13 (by omega) h1 h2
  have hr03 : t3.locals.lookup (nm "r0") = some (.val (.word g.R0)) := by
    rw [hl3 _ (by decide) (by decide)]; exact hr0
  have hr13 : t3.locals.lookup (nm "r1") = some (.val (.word g.R1)) := by
    rw [hl3 _ (by decide) (by decide)]; exact hr1
  have hq3 : t3.locals.lookup (nm "q") = some (.val (.word g.Qb)) := by
    rw [hl3 _ (by decide) (by decide)]; exact hq
  have hd03 : t3.locals.lookup (nm "d0") = some (.val (.word D)) := by
    rw [hl3 _ (by decide) (by decide)]; exact hd0
  have hd13 : t3.locals.lookup (nm "d1") = some (.val (.word g.D1)) := by
    rw [hl3 _ (by decide) (by decide)]; exact hd1
  -- `q[d0 - d1] = cf`
  refine hoare_seq (R := fun r u => r = none ∧ u.locals = t3.locals ∧
      (∀ c, ¬ WQ g D c → u.memory c = t0.memory c) ∧ words4 u.memory (sl g.R1 g.D1) = g.LEAD ∧
      words4 u.memory (sl g.R0 D) = T ∧ u.be = t0.be) ?_ (fun r u _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_store fun u _ hu w v mem hw hval hmem => ?_
    subst u
    have haddr : ev t3 (slotE (lv (nm "q")) (.op .sub [lv (nm "d0"), lv (nm "d1")])) =
        some (.val (.word (sl g.Qb (D - g.D1)))) :=
      ev_add2 (ev_lw hq3) (ev_mul2 (ev_sub2 (ev_lw hd03) (ev_lw hd13)) (ev_cw _ 32))
    rw [haddr] at hw
    cases hw
    rw [ev_lv, hcf3] at hval
    cases hval
    obtain ⟨hfr, -, -⟩ := store4 hCFl hmem
    refine ⟨rfl, rfl, fun c hc => ?_, ?_, ?_, hbe3⟩
    · show mem c = _
      rw [hfr c hc, hm3]
    · show words4 mem _ = _
      rw [words4_frame (fun c h => hfr c (hR1 c h)), hm3, hlead]
    · show words4 mem _ = _
      rw [words4_frame (fun c h => hfr c (hR0q c h)), hm3, hT]
  -- `fq_poly_submul(r0, r1, cf, d0 - d1, d1)`
  refine hoare_seq (R := fun r u => r = none ∧ u.locals = t3.locals ∧
      (∀ c, ¬ WQ g D c → ¬ WR g D c → u.memory c = t0.memory c) ∧
      words4 u.memory (sl g.R1 g.D1) = g.LEAD ∧
      (∃ P, P < fqP ∧ (P * 2 ^ 256) % fqP = (wn CF * wn g.LEAD) % fqP ∧
        wn (words4 u.memory (sl g.R0 D)) = fqSubN (wn T) P) ∧ u.be = t0.be)
    ?_ (fun r u _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callD hsm ?_
    intro u _ ⟨_, hul, hum, hulead, huT, hube⟩ vs hvs callee v st hR _
    have hlk : ∀ x, u.locals.lookup x = t3.locals.lookup x := fun x => by rw [hul]
    have hargs : evs u [lv (nm "r0"), lv (nm "r1"), lv (nm "cf"),
        .op .sub [lv (nm "d0"), lv (nm "d1")], lv (nm "d1")] =
        some [.val (.word g.R0), .val (.word g.R1), wv CF, .val (.word (D - g.D1)),
          .val (.word g.D1)] :=
      evs_cons (by rw [ev_lv, hlk]; exact hr03) (evs_cons (by rw [ev_lv, hlk]; exact hr13)
        (evs_cons (by rw [ev_lv, hlk]; exact hcf3)
          (evs_cons (ev_sub2 (ev_lw (by rw [hlk]; exact hd03)) (ev_lw (by rw [hlk]; exact hd13)))
            (evs_cons (by rw [ev_lv, hlk]; exact hd13) evs_nil))))
    rw [hargs] at hvs
    cases hvs
    obtain ⟨a, b, s, db, Q, hQl, hvs2, hfp, htop⟩ := hR.1 v rfl
    have hbest := hR.2
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs2
    obtain ⟨rfl, rfl, hQ, rfl, rfl⟩ := hvs2
    have := wv_inj hQ
    subst this
    have hfr : ∀ c, ¬ WR g D c → st.memory c = u.memory c := by
      intro c hc
      exact hfp c (fun i hi hw => hc ⟨i, hi, hw⟩)
    have hWR_R1 : ∀ c, WSlot (sl g.R1 g.D1) c → ¬ WR g D c := by
      intro c h1 ⟨i, hi, h2⟩
      exact wslot_disj hdj01 (by rw [BitVec.toNat_add, hDD1]; omega) (by omega) h2 h1
    refine ⟨rfl, hul, fun c h1 h2 => ?_, ?_, ?_, ?_⟩
    · show st.memory c = _
      rw [hfr c h2]; exact hum c h1
    · show words4 st.memory _ = _
      rw [words4_frame (fun c h => hfr c (hWR_R1 c h))]; exact hulead
    · have hH1 : ∀ i : BitVec 64, i.toNat < g.D1.toNat → ∀ c, WSlot (sl g.R0 (D - g.D1 + i)) c →
          ¬ WSlot (sl g.R0 (D - g.D1 + g.D1)) c ∧ ¬ WSlot (sl g.R1 g.D1) c := by
        intro i hi c h
        have hi1 : (D - g.D1 + i).toNat = D.toNat - g.D1.toNat + i.toNat := by
          rw [BitVec.toNat_add, hDD1]; omega
        refine ⟨fun h' => ?_, fun h' => wslot_disj hdj01 (by omega) (by omega) h h'⟩
        rw [sl_sub_add] at h'
        exact wslot_ne_of_lt (by omega) hD13 (fun he => by
          have := congrArg BitVec.toNat he; omega) c h h'
      obtain ⟨P, hP, hPmod, hPwn⟩ := htop (by omega) hH1 (Or.inl hCFp)
      rw [sl_sub_add] at hPwn
      refine ⟨P, hP, ?_, ?_⟩
      · rw [hPmod]
        show (wn CF * wn (words4 u.memory (sl g.R1 g.D1))) % fqP = _
        rw [hulead]
      · show wn (words4 st.memory _) = _
        rw [hPwn]
        show fqSubN (wn (words4 u.memory (sl g.R0 D))) P = _
        rw [huT]
    · exact hbest.trans hube
  -- `d0 = fq_poly_deg(r0, 13)`
  refine hoare_callA hdg ?_
  intro u hctxu ⟨_, hul, hum, hulead, ⟨P, hP, hPmod, hPwn⟩, hube⟩ vs hvs callee v st hR hst _
  have hlk : ∀ x, u.locals.lookup x = t3.locals.lookup x := fun x => by rw [hul]
  have hargs : evs u [lv (nm "r0"), cw 13] =
      some [.val (.word g.R0), .val (.word (BitVec.ofNat 64 13))] :=
    evs_cons (by rw [ev_lv, hlk]; exact hr03) (evs_cons (ev_cw _ 13) evs_nil)
  rw [hargs] at hvs
  cases hvs
  obtain ⟨A, N, hvs2, hmem, hdeg⟩ := hR.1 v rfl
  have hbest := hR.2
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs2
  obtain ⟨rfl, rfl⟩ := hvs2
  obtain ⟨d, rfl, hdf⟩ := hdeg rfl
  refine ⟨rfl, stepPost_restore (by decide) _ (stepPost_restore (by decide) _ ?_)⟩
  have hlk5 : ∀ x, x ≠ nm "d0" → x ≠ nm "cf" → x ≠ nm "top" →
      (setKvarHOLFinite .local (nm "d0") (.val (.word d))
        { st with locals := u.locals }).locals.lookup x = t0.locals.lookup x := by
    intro x hx h1 h2
    show (setVarHOLFinite (nm "d0") (.val (.word d)) { st with locals := u.locals }).locals.lookup x = _
    rw [lk_ne (Ne.symm hx)]
    show u.locals.lookup x = _
    rw [hlk]
    exact hl3 x h1 h2
  have hm5 : (setKvarHOLFinite .local (nm "d0") (.val (.word d))
      { st with locals := u.locals }).memory = u.memory := hmem
  have hd5 : (setKvarHOLFinite .local (nm "d0") (.val (.word d))
      { st with locals := u.locals }).memaddrs = t0.memaddrs := by
    show st.memaddrs = _; rw [hst.2.1, hctx0.2.1]
  have hbe5 : (setKvarHOLFinite .local (nm "d0") (.val (.word d))
      { st with locals := u.locals }).be = t0.be := by
    show st.be = _; rw [hbest]; exact hube
  refine ⟨⟨by rw [hlk5 _ (by decide) (by decide) (by decide)]; exact hr0,
      by rw [hlk5 _ (by decide) (by decide) (by decide)]; exact hr1,
      by rw [hlk5 _ (by decide) (by decide) (by decide)]; exact hq,
      by rw [hlk5 _ (by decide) (by decide) (by decide)]; exact hd1,
      by rw [hlk5 _ (by decide) (by decide) (by decide)]; exact hli, hLIl, hLIp,
      by rw [hm5]; exact hulead, hD1a, hD1b, hdj01, hdj0q, hdj1q⟩,
    ⟨d, lk_set_self _ _ _, ?_⟩, fun c h1 h2 => by rw [hm5]; exact hum c h1 h2, hd5, hbe5,
    ⟨wn CF, P, hCFp, hCFmod, hP, hPmod, by rw [hm5]; exact hPwn⟩, hdomT⟩
  refine degFacts_congr hm5 ?_ ?_ hdf
  · show st.memaddrs = u.memaddrs; rw [hst.2.1, hctxu.2.1]
  · show st.be = u.be; exact hbest

end InitECandidate.Solver.Spec.Fq12
