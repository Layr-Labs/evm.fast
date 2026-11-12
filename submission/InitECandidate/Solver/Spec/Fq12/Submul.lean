import InitECandidate.Solver.Spec.Fq12.MwFq

/-!
# `fq_poly_submul`

`fq_poly_submul(a, b, q, s, db)` runs `a[s + i] = fq_sub(a[s + i], fq_mul(q, b[i]))` for
`i = 0, ..., db` (coefficients of 32 bytes, `a[k]` at `a + k * 32`).

`funSpec_submul` (`SubmulR`):
* it writes only the words of `a[s + i]`, `i ≤ db` (all `db`);
* for `db < 13`, if the words of `a[s + db]` and `b[db]` are not among those of the earlier
  `a[s + i]` (`i < db`), the final top coefficient is `fq_sub(top, fq_mul(q, b[db]))` of the
  initial values (as numbers: `fqSubN top P` with `P · R ≡ q · b[db]`, `P < p`).
-/

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem lookupCode_five {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f p1 p2 p3 p4 p5 : MlS} {s1 s2 s3 s4 s5 : ShapeHOL} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hc : code f = some ([(p1, s1), (p2, s2), (p3, s3), (p4, s4), (p5, s5)], bd, rsh))
    (hd : [p1, p2, p3, p4, p5].Nodup)
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ rs = rsh ∧ ∃ A B C D E, vs = [A, B, C, D, E] ∧
      shapeEqHOL s1 (shapeOfHOLExact A) = true ∧ shapeEqHOL s2 (shapeOfHOLExact B) = true ∧
      shapeEqHOL s3 (shapeOfHOLExact C) = true ∧ shapeEqHOL s4 (shapeOfHOLExact D) = true ∧
      shapeEqHOL s5 (shapeOfHOLExact E) = true ∧
      callee.lookup p1 = some A ∧ callee.lookup p2 = some B ∧ callee.lookup p3 = some C ∧
      callee.lookup p4 = some D ∧ callee.lookup p5 = some E := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, rfl, rfl⟩ := hx
      obtain ⟨-, hlen, hall⟩ := hcond
      simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or] at hd
      obtain ⟨⟨h12, h13, h14, h15⟩, ⟨h23, h24, h25⟩, ⟨h34, h35⟩, h45, -⟩ := hd
      match vs, hlen, hall with
      | [A, B, C, D, E], _, hall =>
          simp only [List.zip_cons_cons, List.zip_nil_right, List.all_cons, List.all_nil,
            Bool.and_true, Bool.and_eq_true] at hall
          refine ⟨rfl, rfl, A, B, C, D, E, rfl, hall.1, hall.2.1, hall.2.2.1, hall.2.2.2.1,
            hall.2.2.2.2, ?_, ?_, ?_, ?_, ?_⟩
          · simp [h12, h13, h14, h15]
          · simp [h23, h24, h25]
          · simp [h34, h35]
          · simp [h45]
          · simp
    · simp at hx

variable {σ : Type} {X : Ctx 64}

/-- The `k`-th coefficient address `x + k * 32`. -/
abbrev sl (x k : BitVec 64) : BitVec 64 := x + k * BitVec.ofNat 64 32

/-- The final top coefficient relates to the initial one and `b[db]`. -/
def SubTop (s0 t : PanSemStateFiniteExact 64 σ) (Q : List (BitVec 64)) (xT xB : BitVec 64) :
    Prop :=
  wn Q < fqP ∨ wn (words4 s0.memory xB) < fqP →
    ∃ P : Nat, P < fqP ∧ (P * 2 ^ 256) % fqP = (wn Q * wn (words4 s0.memory xB)) % fqP ∧
      wn (words4 t.memory xT) = fqSubN (wn (words4 s0.memory xT)) P

/-- What a returning `fq_poly_submul(a, b, q, s, db)` call did. -/
def SubmulR (vs : List (ValueHOL 64)) (s0 : PanSemStateFiniteExact 64 σ) (_v : ValueHOL 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ a b s db : BitVec 64, ∃ Q : List (BitVec 64), Q.length = 4 ∧
    vs = [.val (.word a), .val (.word b), wv Q, .val (.word s), .val (.word db)] ∧
    (∀ c, (∀ i : BitVec 64, i.toNat ≤ db.toNat → ¬ WSlot (sl a (s + i)) c) →
      t.memory c = s0.memory c) ∧
    (db.toNat < 13 →
      (∀ i : BitVec 64, i.toNat < db.toNat → ∀ c, WSlot (sl a (s + i)) c →
        ¬ WSlot (sl a (s + db)) c ∧ ¬ WSlot (sl b db) c) →
      SubTop s0 t Q (sl a (s + db)) (sl b db))

/-- The loop facts of `fq_poly_submul` after `iv` iterations. -/
def SmJ (s0 : PanSemStateFiniteExact 64 σ) (a b s db : BitVec 64) (Q : List (BitVec 64))
    (iv : BitVec 64) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  t.locals.lookup (nm "a") = some (.val (.word a)) ∧
  t.locals.lookup (nm "b") = some (.val (.word b)) ∧
  t.locals.lookup (nm "q") = some (wv Q) ∧
  t.locals.lookup (nm "s") = some (.val (.word s)) ∧
  t.locals.lookup (nm "db") = some (.val (.word db)) ∧
  t.locals.lookup (nm "i") = some (.val (.word iv)) ∧
  (∀ c, (∀ i : BitVec 64, i.toNat ≤ db.toNat → ¬ WSlot (sl a (s + i)) c) →
    t.memory c = s0.memory c) ∧
  (db.toNat < 13 →
    (∀ i : BitVec 64, i.toNat < db.toNat → ∀ c, WSlot (sl a (s + i)) c →
      ¬ WSlot (sl a (s + db)) c ∧ ¬ WSlot (sl b db) c) →
    iv.toNat ≤ db.toNat + 1 ∧
    (iv.toNat ≤ db.toNat → words4 t.memory (sl a (s + db)) = words4 s0.memory (sl a (s + db)) ∧
      words4 t.memory (sl b db) = words4 s0.memory (sl b db)) ∧
    (iv.toNat = db.toNat + 1 → SubTop s0 t Q (sl a (s + db)) (sl b db)))

theorem smJ_restore {s0 : PanSemStateFiniteExact 64 σ} {a b s db : BitVec 64}
    {Q : List (BitVec 64)} {iv : BitVec 64} {t : PanSemStateFiniteExact 64 σ} {n : MlS}
    (hn : n ∉ [nm "a", nm "b", nm "q", nm "s", nm "db", nm "i"])
    (old : Option (ValueHOL 64)) (h : SmJ s0 a b s db Q iv t) :
    SmJ s0 a b s db Q iv { t with locals := t.locals.resVarEq (n, old) } := by
  simp only [List.mem_cons, List.not_mem_nil, or_false, not_or] at hn
  obtain ⟨n1, n2, n3, n4, n5, n6⟩ := hn
  obtain ⟨ha, hb, hq, hs, hdb, hi, hF, hT⟩ := h
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, hF, hT⟩
  · show (t.locals.resVarEq (n, old)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ n1]; exact ha
  · show (t.locals.resVarEq (n, old)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ n2]; exact hb
  · show (t.locals.resVarEq (n, old)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ n3]; exact hq
  · show (t.locals.resVarEq (n, old)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ n4]; exact hs
  · show (t.locals.resVarEq (n, old)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ n5]; exact hdb
  · show (t.locals.resVarEq (n, old)).lookup _ = _
    rw [lookup_resVarEq_ne _ _ n6]; exact hi

theorem ev_sl {t : PanSemStateFiniteExact 64 σ} {x i : MlS} {xv iv : BitVec 64}
    (hx : t.locals.lookup x = some (.val (.word xv))) (hi : t.locals.lookup i = some (.val (.word iv))) :
    ev t (slotE (lv x) (lv i)) = some (.val (.word (sl xv iv))) :=
  ev_add2 (ev_lw hx) (ev_mul2 (ev_lw hi) (ev_cw _ 32))

theorem wslot_ne_of_lt {x i j : BitVec 64} (hi : i.toNat < 13) (hj : j.toNat < 13)
    (hij : i ≠ j) (c : BitVec 64) (h1 : WSlot (sl x i) c) (h2 : WSlot (sl x j) c) : False := by
  obtain ⟨k1, hk1, rfl⟩ := h1
  obtain ⟨k2, hk2, he⟩ := h2
  apply hij
  apply BitVec.eq_of_toNat_eq
  have := congrArg BitVec.toNat he
  simp only [sl, BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat] at this
  omega

theorem lk_ne {t : PanSemStateFiniteExact 64 σ} {x y : MlS} {v : ValueHOL 64} (h : x ≠ y) :
    (setVarHOLFinite x v t).locals.lookup y = t.locals.lookup y := lk_set_ne _ _ h

/-- One iteration of `fq_poly_submul`. -/
theorem submul_iter (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ)
    (a b s db : BitVec 64) (Q : List (BitVec 64)) (hQl : Q.length = 4) (iv : BitVec 64)
    (hiv : iv.toNat ≤ db.toNat) :
    Hoare σ X (fun t => SmJ s0 a b s db Q iv t) submulBody1
      (fun r t => r = none ∧ SmJ s0 a b s db Q (iv + BitVec.ofNat 64 1) t) := by
  have hmul := (funSpec_of_funRet (funRet_fq_mul (σ := σ) hC)).and
    (funSpec_fq_mw (σ := σ) hC (f := nm "fq_mul") (by decide))
  have hsub := (funSpec_of_funRet (funRet_fq_sub (σ := σ) hC)).and
    (funSpec_fq_mw (σ := σ) hC (f := nm "fq_sub") (by decide))
  unfold submulBody1
  refine hoare_dec fun t1 _ hJ v hv _ => ?_
  obtain ⟨ha, hb, hq, hs, hdb, hi, hF, hT⟩ := hJ
  obtain ⟨rfl, hdomB⟩ := ev_load4_inv (ev_sl hb hi) hv
  generalize hBI : words4 t1.memory (sl b iv) = BI
  -- `p = fq_mul(q, bi)`
  refine hoare_decCallS hmul ?_
  intro t2 _ ht2 vs hvs callee pv st hR hst hsh2
  subst ht2
  have hvs' : evs (setVarHOLFinite (nm "bi") (wv BI) t1) [lv (nm "q"), lv (nm "bi")] =
      some [wv Q, wv BI] :=
    evs_cons (by rw [ev_lv, lk_ne (by decide)]; exact hq)
      (evs_cons (by rw [ev_lv, lk_set_self]) evs_nil)
  rw [hvs'] at hvs
  cases hvs
  obtain ⟨hmulR, hmem2⟩ := hR
  obtain ⟨PV, hPVl, rfl⟩ := eq_wv_of_shapeEq' hsh2
  obtain ⟨Q', BI', hQ'l, hBI'l, hv2, hgood⟩ := hmulR (wv PV) rfl
  simp only [List.cons.injEq, and_true] at hv2
  have e1 := wv_inj hv2.1
  have e2 := wv_inj hv2.2
  subst e1; subst e2
  -- `ai = lds (a + (s + i) * 32)`
  refine hoare_dec fun t3 _ ht3 v3 hv3 _ => ?_
  subst ht3
  have hsta : st.memory = t1.memory := hmem2
  have hloc3 : ∀ x, x ≠ nm "p" → x ≠ nm "bi" →
      (setVarHOLFinite (nm "p") (wv PV) { st with locals := (setVarHOLFinite (nm "bi")
        (wv BI) t1).locals }).locals.lookup x = t1.locals.lookup x := by
    intro x h1 h2
    rw [lk_ne (Ne.symm h1)]
    exact lk_ne (Ne.symm h2)
  have haddrA : ev (setVarHOLFinite (nm "p") (wv PV) { st with locals := (setVarHOLFinite (nm "bi")
      (wv BI) t1).locals }) subAddr = some (.val (.word (sl a (s + iv)))) :=
    ev_add2 (ev_lw (by rw [hloc3 _ (by decide) (by decide)]; exact ha))
      (ev_mul2 (ev_add2 (ev_lw (by rw [hloc3 _ (by decide) (by decide)]; exact hs))
        (ev_lw (by rw [hloc3 _ (by decide) (by decide)]; exact hi))) (ev_cw _ 32))
  obtain ⟨rfl, hdomA⟩ := ev_load4_inv haddrA hv3
  generalize hT3 : setVarHOLFinite (nm "p") (wv PV) { st with locals := (setVarHOLFinite (nm "bi")
    (wv BI) t1).locals } = t3 at hloc3 haddrA hdomA ⊢
  have hm3 : t3.memory = t1.memory := by rw [← hT3]; exact hsta
  generalize hAI : words4 t3.memory (sl a (s + iv)) = AI
  have hAIt1 : words4 t1.memory (sl a (s + iv)) = AI := by rw [← hAI, hm3]
  -- the facts after `ai = fq_sub(ai, p)`
  let R1 : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop := fun r u =>
    r = none ∧ u.memory = t1.memory ∧
    (∀ x, x ≠ nm "p" → x ≠ nm "bi" → x ≠ nm "ai" → u.locals.lookup x = t1.locals.lookup x) ∧
    ∃ T' : List (BitVec 64), T'.length = 4 ∧ u.locals.lookup (nm "ai") = some (wv T') ∧
      (wn PV < fqP → wn T' = fqSubN (wn AI) (wn PV))
  refine hoare_seq (R := R1) ?_ (fun r u _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callA hsub ?_
    intro u0 _ hu0 vs4 hvs4 callee4 aiv st4 hR4 hst4 hvalid
    subst hu0
    have hvs4' : evs (setVarHOLFinite (nm "ai") (wv AI) t3) [lv (nm "ai"), lv (nm "p")] =
        some [wv AI, wv PV] :=
      evs_cons (by rw [ev_lv, lk_set_self])
        (evs_cons (by rw [ev_lv, lk_ne (by decide), ← hT3, lk_set_self]) evs_nil)
    rw [hvs4'] at hvs4
    cases hvs4
    obtain ⟨hsubR, hmem4⟩ := hR4
    -- the new `ai` has the shape of the old one
    have hsh4 : shapeEqHOL (shapeOfHOLExact aiv) (shK 4) = true := by
      simp only [isValidValueHOLExact, lookupKvarHOLExact] at hvalid
      rw [lk_set_self] at hvalid
      dsimp only at hvalid
      have hAIl : AI.length = 4 := by rw [← hAI]; rfl
      rw [shapeOf_wv, hAIl] at hvalid
      exact hvalid
    obtain ⟨T', hT'l, rfl⟩ := eq_wv_of_shapeEq' hsh4
    obtain ⟨as', bs', _, _, hv4, hgood4⟩ := hsubR (wv T') rfl
    simp only [List.cons.injEq, and_true] at hv4
    have e1 := wv_inj hv4.1
    have e2 := wv_inj hv4.2
    subst e1; subst e2
    refine ⟨rfl, ?_, ?_, T', hT'l, lk_set_self _ _ _, fun hp => ?_⟩
    · show st4.memory = t1.memory
      rw [hmem4]; exact hm3
    · intro x h1 h2 h3
      show (setVarHOLFinite (nm "ai") (wv T') { st4 with locals :=
        (setVarHOLFinite (nm "ai") (wv AI) t3).locals }).locals.lookup x = _
      rw [lk_ne (Ne.symm h3), lk_ne (Ne.symm h3)]
      exact hloc3 x h1 h2
    · obtain ⟨ds, hds, hds2, hwn⟩ := hgood4 hp
      rw [wv_inj hds2]
      exact hwn
  · refine hoare_pre (P := fun u => ∃ T' : List (BitVec 64), T'.length = 4 ∧ u.memory = t1.memory ∧
        (∀ x, x ≠ nm "p" → x ≠ nm "bi" → x ≠ nm "ai" → u.locals.lookup x = t1.locals.lookup x) ∧
        u.locals.lookup (nm "ai") = some (wv T') ∧ (wn PV < fqP → wn T' = fqSubN (wn AI) (wn PV)))
      ?_ (fun u _ ⟨_, h1, h2, T', h3, h4, h5⟩ => ⟨T', h3, h1, h2, h4, h5⟩)
    refine hoare_exists fun T' => ?_
    refine hoare_seq (R := fun r u => r = none ∧
        (∀ c, ¬ WSlot (sl a (s + iv)) c → u.memory c = t1.memory c) ∧
        words4 u.memory (sl a (s + iv)) = T' ∧
        (∀ x, x ≠ nm "p" → x ≠ nm "bi" → x ≠ nm "ai" → u.locals.lookup x = t1.locals.lookup x) ∧
        (wn PV < fqP → wn T' = fqSubN (wn AI) (wn PV))) ?_ (fun r u _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_store fun u _ ⟨hT'l, hmu, hlocu, hai, hval⟩ w v mem hw hv hmem => ?_
      have hw' : ev u subAddr = some (.val (.word (sl a (s + iv)))) :=
        ev_add2 (ev_lw (by rw [hlocu _ (by decide) (by decide) (by decide)]; exact ha))
          (ev_mul2 (ev_add2 (ev_lw (by rw [hlocu _ (by decide) (by decide) (by decide)]; exact hs))
            (ev_lw (by rw [hlocu _ (by decide) (by decide) (by decide)]; exact hi))) (ev_cw _ 32))
      rw [hw'] at hw
      cases hw
      rw [ev_lv, hai] at hv
      cases hv
      obtain ⟨hmF, hmW, -⟩ := store4 hT'l hmem
      refine ⟨rfl, fun c hc => ?_, hmW, hlocu, hval⟩
      show mem c = t1.memory c
      rw [hmF c hc, hmu]
    · refine hoare_assign fun u _ ⟨_, hmF, hwT, hlocu, hval⟩ v hv _ => ?_
      have hiu : u.locals.lookup (nm "i") = some (.val (.word iv)) := by
        rw [hlocu _ (by decide) (by decide) (by decide)]; exact hi
      rw [ev_add2 (ev_lw hiu) (ev_cw _ 1)] at hv
      cases hv
      refine ⟨rfl, ?_⟩
      refine smJ_restore (by decide) _ (smJ_restore (by decide) _ (smJ_restore (by decide) _ ?_))
      have hl : ∀ x, x ≠ nm "i" → x ≠ nm "p" → x ≠ nm "bi" → x ≠ nm "ai" →
          (setVarHOLFinite (nm "i") (.val (.word (iv + BitVec.ofNat 64 1))) u).locals.lookup x =
            t1.locals.lookup x := by
        intro x h0 h1 h2 h3
        rw [lk_ne (Ne.symm h0)]
        exact hlocu x h1 h2 h3
      refine ⟨by rw [hl _ (by decide) (by decide) (by decide) (by decide)]; exact ha,
        by rw [hl _ (by decide) (by decide) (by decide) (by decide)]; exact hb,
        by rw [hl _ (by decide) (by decide) (by decide) (by decide)]; exact hq,
        by rw [hl _ (by decide) (by decide) (by decide) (by decide)]; exact hs,
        by rw [hl _ (by decide) (by decide) (by decide) (by decide)]; exact hdb,
        lk_set_self _ _ _, ?_, ?_⟩
      · intro c hc
        show u.memory c = s0.memory c
        rw [hmF c (hc iv hiv)]
        exact hF c hc
      · intro hdb13 hH1
        obtain ⟨h1, h2, h3⟩ := hT hdb13 hH1
        have hsucc : (iv + BitVec.ofNat 64 1).toNat = iv.toNat + 1 := by
          rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
        rw [hsucc]
        refine ⟨by omega, fun hlt => ?_, fun heq => ?_⟩
        · obtain ⟨g1, g2⟩ := h2 hiv
          have hlt' : iv.toNat < db.toNat := by omega
          refine ⟨?_, ?_⟩
          · show words4 u.memory _ = _
            rw [← g1]
            exact words4_frame fun c hc => hmF c fun hc' => (hH1 iv hlt' c hc').1 hc
          · show words4 u.memory _ = _
            rw [← g2]
            exact words4_frame fun c hc => hmF c fun hc' => (hH1 iv hlt' c hc').2 hc
        · have hid : iv = db := BitVec.eq_of_toNat_eq (by omega)
          subst hid
          obtain ⟨g1, g2⟩ := h2 hiv
          intro hQB
          have hBI : BI = words4 s0.memory (sl b iv) := by rw [← hBI, g2]
          have hAI' : AI = words4 s0.memory (sl a (s + iv)) := by rw [← hAIt1, g1]
          rw [← hBI] at hQB
          obtain ⟨rs, _, hrs, hlt, hmod⟩ := hgood hQB
          have := wv_inj hrs
          subst this
          refine ⟨wn PV, hlt, by rw [← hBI]; exact hmod, ?_⟩
          show wn (words4 u.memory _) = _
          rw [hwT, hval hlt, hAI']

theorem funSpec_submul (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "fq_poly_submul") (fun vs s r t => ∀ v, r = .returned v → SubmulR vs s v t) := by
  apply funSpec_of_hoare
  intro vs body callee rs hl s0 hs0 hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A', B', C', D', E', rfl, hA, hB, hQ, hS, hD, hla, hlb, hlq, hls, hld⟩ :=
    lookupCode_five code_fq_poly_submul (by decide) hl
  obtain ⟨a, rfl⟩ := val_of_shapeEq_one hA
  obtain ⟨b, rfl⟩ := val_of_shapeEq_one hB
  obtain ⟨Q, hQl, rfl⟩ := eq_wv_of_shapeEq hQ
  obtain ⟨s, rfl⟩ := val_of_shapeEq_one hS
  obtain ⟨db, rfl⟩ := val_of_shapeEq_one hD
  refine hoare_dec fun s1 _ hs v hv _ => ?_
  subst s1
  cases hv
  let Qp : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop := fun r t =>
    r = none ∧ ∃ iv, SmJ s0 a b s db Q iv t ∧ db.toNat < iv.toNat
  refine hoare_seq (R := Qp) (hoare_pre (P := fun t => ∃ iv, SmJ s0 a b s db Q iv t) ?_ ?_)
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_while (fun s h => h) ?_ ?_
    · refine hoare_pre (P := fun t => ∃ iv, iv.toNat ≤ db.toNat ∧ SmJ s0 a b s db Q iv t) ?_ ?_
      · refine hoare_exists fun iv => hoare_pure fun hiv => ?_
        refine hoare_post (submul_iter hC s0 a b s db Q hQl iv hiv) ?_
        intro r t _ _ ⟨hr, hJ⟩
        subst hr
        exact ⟨fun _ => ⟨_, hJ⟩, nofun, nofun, fun _ => nofun⟩
      · intro t _ ⟨⟨iv, hJ⟩, w, hw, hw0⟩
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
        rw [ev_lw hJ.2.2.2.2.1] at hx; cases hx
        rw [ev_lw hJ.2.2.2.2.2.1] at hy; cases hy
        refine ⟨iv, ?_, hJ⟩
        simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Bool.not_eq_true',
          decide_eq_false_iff_not, BitVec.lt_def] at hxy
        omega
    · intro t _ ⟨iv, hJ⟩ hc
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lw hJ.2.2.2.2.1] at hx; cases hx
      rw [ev_lw hJ.2.2.2.2.2.1] at hy; cases hy
      refine ⟨rfl, iv, hJ, ?_⟩
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Bool.not_eq_false',
        decide_eq_true_eq, BitVec.lt_def] at hxy
      exact hxy
  · intro t _ ht
    subst ht
    refine ⟨BitVec.ofNat 64 0, ?_, ?_, ?_, ?_, ?_, lk_set_self _ _ _, fun c _ => rfl, ?_⟩
    · rw [lk_ne (by decide), hloc]; exact hla
    · rw [lk_ne (by decide), hloc]; exact hlb
    · rw [lk_ne (by decide), hloc]; exact hlq
    · rw [lk_ne (by decide), hloc]; exact hls
    · rw [lk_ne (by decide), hloc]; exact hld
    · intro _ _
      refine ⟨by simp, fun _ => ⟨rfl, rfl⟩, fun h => ?_⟩
      simp at h
  · refine hoare_return fun t _ hq v hv => ?_
    obtain ⟨-, iv, ⟨_, _, _, _, _, _, hF, hT⟩, hlt⟩ := hq
    intro v' hv'
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
    subst hv'
    refine ⟨a, b, s, db, Q, hQl, rfl, fun c hc => hF c hc, fun h13 hH1 => ?_⟩
    obtain ⟨h1, -, h3⟩ := hT h13 hH1
    exact h3 (by omega)

end InitECandidate.Solver.Spec.Fq12
