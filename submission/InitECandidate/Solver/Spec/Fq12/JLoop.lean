import InitECandidate.Solver.Spec.Fq12.InnerLoop

/-!
# The cofactor loop of `fq12_inv`; a conditional `decCall` rule

* `costP_decCallS`: `var x = f(args); k` with an all-states callee cost and a
  state-relational callee spec threading the precondition into `k`.
* `FrB s0 B t`: `t` differs from `s0` only inside the buffer `B` (same domain and `be`).
* `jLoop_hoare`: the loop `while j < 13 { ... fq_poly_submul(tmp, s1, q[j], j, 12 - j) ... }`
  writes only inside `tmp`; `jLoop_cost`: at most `14` iterations.
-/

set_option linter.unusedSimpArgs false

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem costP_decCallS {P : PanSemStateFiniteExact 64 σ → Prop} {rn f : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {Bf Bk : Nat}
    {R : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → PanSemResultExact 64 →
      PanSemStateFiniteExact 64 σ → Prop}
    (hf : CalleeCost σ X f Bf) (hR : FunSpec σ X f R)
    (hk : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs → ∀ callee v st,
      R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      Inv.CostP σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Bk) :
    Inv.CostP σ X P (.decCall rn sh f args k) (1 + Bf + Bk) := by
  intro s hs hp hto
  revert hto
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k)]
  dsimp only
  split
  · intro _; (try dsimp only); omega
  · rename_i values hvals
    rw [hs.1]
    split
    · intro _; (try dsimp only); omega
    · rename_i body callee rs hlook
      split
      · intro h; exact absurd rfl h.1
      · rename_i hclock
        have hb : ∀ r st, evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = (r, st) →
            Good r → s.clock ≤ st.clock + 1 + Bf ∧ InCtx st X := by
          intro r st heq hr
          have := hf values body callee rs hlook (callEntryStateHOLFinite s callee)
            (by exact hs) (by rw [heq]; exact hr)
          rw [heq] at this
          simp only [callEntryStateHOLFinite] at this
          exact ⟨by omega, this.2⟩
        have hspec := hR values body callee rs hlook _ (entry_inCtx hs callee) rfl
        cases ho : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body with
        | mk r st =>
          rw [ho] at hspec
          dsimp only at hspec ⊢
          cases r with
          | none =>
            intro _
            obtain ⟨h1, h2⟩ := hb _ _ ho (by simp [Good])
            (try dsimp only); omega
          | some r =>
            cases r with
            | returned v =>
              dsimp only
              split
              · rename_i hsh
                simp only [Bool.and_eq_true] at hsh
                intro hto
                obtain ⟨h1, h2⟩ := hb _ _ ho (by simp [Good])
                have g1 := hk s hs hp values hvals callee v st (hspec _ rfl) h2 hsh.1
                  (setVarHOLFinite rn v { st with locals := s.locals }) h2 rfl hto
                simp only [setVarHOLFinite] at g1 ⊢
                omega
              · intro _
                obtain ⟨h1, h2⟩ := hb _ _ ho (by simp [Good])
                (try dsimp only); omega
            | _ =>
              dsimp only
              intro hto
              obtain ⟨h1, h2⟩ := hb _ _ ho (by simp_all [Good])
              (try simp only [emptyLocalsHOLFinite]); omega

/-- `t` differs from `s0` only inside the buffer `B`. -/
def FrB (s0 : PanSemStateFiniteExact 64 σ) (B : BitVec 64) (t : PanSemStateFiniteExact 64 σ) :
    Prop :=
  (∀ c, ¬ InBuf B c → t.memory c = s0.memory c) ∧ t.memaddrs = s0.memaddrs ∧ t.be = s0.be

theorem degFacts_of_frB {s0 t : PanSemStateFiniteExact 64 σ} {B a d : BitVec 64} (hab : Disj a B)
    (h : FrB s0 B t) (hd : DegFacts s0 a d) : DegFacts t a d :=
  degFacts_frame h.2.1 h.2.2 (fun c hc => h.1 c (fun hB => hab c hc hB)) hd

/-- The six buffer pointers of `fq12_inv`. -/
structure Bufs where
  R0 : BitVec 64
  R1 : BitVec 64
  S0 : BitVec 64
  S1 : BitVec 64
  Qb : BitVec 64
  TM : BitVec 64

/-- The locals hold the six buffer pointers. -/
def BufLk (b : Bufs) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  t.locals.lookup (nm "r0") = some (.val (.word b.R0)) ∧
  t.locals.lookup (nm "r1") = some (.val (.word b.R1)) ∧
  t.locals.lookup (nm "s0") = some (.val (.word b.S0)) ∧
  t.locals.lookup (nm "s1") = some (.val (.word b.S1)) ∧
  t.locals.lookup (nm "q") = some (.val (.word b.Qb)) ∧
  t.locals.lookup (nm "tmp") = some (.val (.word b.TM))

def bufNames : List MlS := [nm "r0", nm "r1", nm "s0", nm "s1", nm "q", nm "tmp"]

theorem bufLk_of {b : Bufs} {t t' : PanSemStateFiniteExact 64 σ}
    (h : ∀ x ∈ bufNames, t'.locals.lookup x = t.locals.lookup x) (hb : BufLk b t) : BufLk b t' := by
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := hb
  simp only [bufNames, List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq] at h
  obtain ⟨e1, e2, e3, e4, e5, e6⟩ := h
  exact ⟨e1 ▸ h1, e2 ▸ h2, e3 ▸ h3, e4 ▸ h4, e5 ▸ h5, e6 ▸ h6⟩

theorem lk_restore_ne {t : PanSemStateFiniteExact 64 σ} {n x : MlS} {old : Option (ValueHOL 64)}
    (h : n ≠ x) : ({ t with locals := t.locals.resVarEq (n, old) } : PanSemStateFiniteExact 64 σ).locals.lookup x =
      t.locals.lookup x := lookup_resVarEq_ne _ _ h

/-- The cofactor-loop facts with counter `jv`. -/
def JJ (s0 : PanSemStateFiniteExact 64 σ) (b : Bufs) (jv : BitVec 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  BufLk b t ∧ t.locals.lookup (nm "j") = some (.val (.word jv)) ∧ jv.toNat ≤ 13 ∧ FrB s0 b.TM t

theorem jBody_hoare (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ) (b : Bufs)
    (jv : BitVec 64) (hj : jv.toNat < 13) :
    Hoare σ X (JJ s0 b jv) jBody
      (fun r t => r = none ∧ JJ s0 b (jv + BitVec.ofNat 64 1) t) := by
  have hz := (funSpec_fq_mw (σ := σ) hC (f := nm "u256_is_zero") (by decide)).and
    (funSpec_be (σ := σ) (X := X) (nm "u256_is_zero"))
  have hsm := (funSpec_submul (σ := σ) hC).and (funSpec_be (σ := σ) (X := X) (nm "fq_poly_submul"))
  unfold jBody
  refine hoare_dec fun t1 hctx1 hJ v hv _ => ?_
  obtain ⟨hB, hjl, hjv, hfr, hd, hbe⟩ := hJ
  refine hoare_decCallS hz ?_
  intro t2 _ ht2 vs hvs callee zv st hR hst _
  subst ht2
  obtain ⟨hmem2, hbe2⟩ := hR
  have hl2 : ∀ x, x ≠ nm "qz" → x ≠ nm "qj" → (setVarHOLFinite (nm "qz") zv { st with locals :=
      (setVarHOLFinite (nm "qj") v t1).locals }).locals.lookup x = t1.locals.lookup x := by
    intro x h1 h2
    rw [lk_ne (Ne.symm h1)]
    exact lk_ne (Ne.symm h2)
  -- the facts before `j = j + 1`
  refine hoare_seq (R := fun r u => r = none ∧
      (∀ x, x ≠ nm "qz" → x ≠ nm "qj" → u.locals.lookup x = t1.locals.lookup x) ∧ FrB s0 b.TM u)
    ?_ (fun r u _ hr _ h => absurd h.1 hr) ?_
  · have hm2 : (setVarHOLFinite (nm "qz") zv { st with locals :=
        (setVarHOLFinite (nm "qj") v t1).locals }).memory = t1.memory := hmem2
    have hfr2 : FrB s0 b.TM (setVarHOLFinite (nm "qz") zv { st with locals :=
        (setVarHOLFinite (nm "qj") v t1).locals }) :=
      ⟨fun c hc => by rw [hm2]; exact hfr c hc, by show st.memaddrs = _; rw [hst.2.1, ← hd, hctx1.2.1],
        by show st.be = _; rw [hbe2]; exact hbe⟩
    refine hoare_ite ?_ (hoare_skip fun u _ ⟨hu, _⟩ => by subst hu; exact ⟨rfl, hl2, hfr2⟩)
    refine hoare_callD hsm ?_
    intro u hctxu ⟨hu, _⟩ vs2 hvs2 callee2 v2 st2 hR2 hst2
    subst hu
    have htm : (setVarHOLFinite (nm "qz") zv { st with locals :=
        (setVarHOLFinite (nm "qj") v t1).locals }).locals.lookup (nm "tmp") =
        some (.val (.word b.TM)) := by rw [hl2 _ (by decide) (by decide)]; exact hB.2.2.2.2.2
    have hjj : (setVarHOLFinite (nm "qz") zv { st with locals :=
        (setVarHOLFinite (nm "qj") v t1).locals }).locals.lookup (nm "j") =
        some (.val (.word jv)) := by rw [hl2 _ (by decide) (by decide)]; exact hjl
    obtain ⟨vs0, vs', rfl, h0, hvs'⟩ := evs_cons_inv hvs2
    rw [ev_lw htm] at h0
    cases h0
    obtain ⟨vs1, vs'', rfl, -, hvs''⟩ := evs_cons_inv hvs'
    obtain ⟨vs2', vs3, rfl, -, hvs3⟩ := evs_cons_inv hvs''
    obtain ⟨vs4, vs5, rfl, h4, hvs5⟩ := evs_cons_inv hvs3
    rw [ev_lw hjj] at h4
    cases h4
    obtain ⟨vs6, vs7, rfl, h6, hvs7⟩ := evs_cons_inv hvs5
    rw [ev_sub2 (ev_cw _ 12) (ev_lw hjj)] at h6
    cases h6
    simp only [evs, evalListHOLExact, Option.some.injEq] at hvs7
    subst hvs7
    obtain ⟨a, b', s', db, Q, _, hvseq, hfp, -⟩ := hR2.1 v2 rfl
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hvseq
    obtain ⟨rfl, -, -, rfl, rfl, -⟩ := hvseq
    refine ⟨rfl, fun x h1 h2 => by show _ = _; exact hl2 x h1 h2, ?_, ?_, ?_⟩
    · intro c hc
      show st2.memory c = _
      rw [hfp c (fun i hi hw => hc (wslot_inBuf (by
        have : (BitVec.ofNat 64 12 - jv).toNat = 12 - jv.toNat := by
          rw [BitVec.toNat_sub, BitVec.toNat_ofNat]; omega
        rw [BitVec.toNat_add]; omega) hw))]
      show st.memory c = _
      rw [show st.memory = t1.memory from hmem2]
      exact hfr c hc
    · show st2.memaddrs = _; rw [hst2.2.1, ← hd, hctx1.2.1]
    · show st2.be = _; rw [hR2.2]; exact hfr2.2.2
  · refine hoare_assign fun u _ ⟨_, hlu, hfru⟩ w hw _ => ?_
    have hju : u.locals.lookup (nm "j") = some (.val (.word jv)) := by
      rw [hlu _ (by decide) (by decide)]; exact hjl
    rw [ev_add2 (ev_lw hju) (ev_cw _ 1)] at hw
    cases hw
    refine ⟨rfl, ?_⟩
    -- restore `qz` and `qj`
    have hlk : ∀ x, x ≠ nm "j" → x ≠ nm "qz" → x ≠ nm "qj" →
        (setVarHOLFinite (nm "j") (.val (.word (jv + BitVec.ofNat 64 1))) u).locals.lookup x =
          t1.locals.lookup x := by
      intro x h0 h1 h2
      rw [lk_ne (Ne.symm h0)]
      exact hlu x h1 h2
    refine ⟨bufLk_of (fun x hx => ?_) hB, ?_, ?_, ?_⟩
    · simp only [bufNames, List.mem_cons, List.not_mem_nil, or_false] at hx
      rw [lk_restore_ne (by rcases hx with rfl | rfl | rfl | rfl | rfl | rfl <;> decide),
        lk_restore_ne (by rcases hx with rfl | rfl | rfl | rfl | rfl | rfl <;> decide)]
      exact hlk x (by rcases hx with rfl | rfl | rfl | rfl | rfl | rfl <;> decide)
        (by rcases hx with rfl | rfl | rfl | rfl | rfl | rfl <;> decide)
        (by rcases hx with rfl | rfl | rfl | rfl | rfl | rfl <;> decide)
    · rw [lk_restore_ne (by decide), lk_restore_ne (by decide)]
      exact lk_set_self _ _ _
    · rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
    · exact hfru

theorem jcond {t : PanSemStateFiniteExact 64 σ} {jv : BitVec 64}
    (hj : t.locals.lookup (nm "j") = some (.val (.word jv))) (hc : CondTrue t (.cmp .lower (lv (nm "j")) (cw 13))) :
    jv.toNat < 13 := by
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hj] at hx; cases hx
  rw [ev_cw] at hy; cases hy
  exact lower_true hxy

theorem jLoop_hoare (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ) (b : Bufs) :
    Hoare σ X (fun t => ∃ jv, JJ s0 b jv t) jLoop (fun r t => r = none ∧ ∃ jv, JJ s0 b jv t) := by
  refine hoare_while (fun s h => h) ?_ (fun t _ hI _ => ⟨rfl, hI⟩)
  refine hoare_pre (P := fun t => ∃ jv, jv.toNat < 13 ∧ JJ s0 b jv t) ?_ ?_
  · refine hoare_exists fun jv => hoare_pure fun hj => ?_
    refine hoare_post (jBody_hoare hC s0 b jv hj) ?_
    intro r t _ _ ⟨hr, hJ⟩
    subst hr
    exact ⟨fun _ => ⟨_, hJ⟩, nofun, nofun, fun _ => nofun⟩
  · intro t _ ⟨⟨jv, hJ⟩, hc⟩
    exact ⟨jv, jcond hJ.2.1 hc, hJ⟩

def jB (Bz Bsm : Nat) : Nat := 1 + Bz + (1 + Bsm)

theorem jBody_cost {Bz Bsm : Nat} (hz : CalleeCost σ X (nm "u256_is_zero") Bz)
    (hsm : CalleeCost σ X (nm "fq_poly_submul") Bsm) : Cost σ X jBody (jB Bz Bsm) := by
  unfold jBody jB callN
  exact (cost_dec (cost_decCall hz (cost_seq (cost_ite (cost_call (Bh := 0) hsm
    (by intro _ _ _ _ h; cases h)) cost_skip) (cost_assign _ _ _)))).mono (by omega)

def muJ (t : PanSemStateFiniteExact 64 σ) : Nat :=
  match t.locals.lookup (nm "j") with
  | some (.val (.word jv)) => 13 - jv.toNat
  | _ => 0

theorem jLoop_cost (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ) (b : Bufs)
    {Bz Bsm : Nat} (hz : CalleeCost σ X (nm "u256_is_zero") Bz)
    (hsm : CalleeCost σ X (nm "fq_poly_submul") Bsm) :
    Inv.CostP σ X (fun t => ∃ jv, JJ s0 b jv t) jLoop ((13 + 1) * (jB Bz Bsm + 1)) := by
  refine Inv.costP_while muJ 13 (fun s h => h) (fun s => rfl)
    (Inv.costP_of_cost (jBody_cost hz hsm)) ?_ ?_ ?_
  · refine hoare_pre (P := fun t => ∃ jv, jv.toNat < 13 ∧ JJ s0 b jv t) ?_ ?_
    · refine hoare_exists fun jv => hoare_pure fun hj => ?_
      refine hoare_post (jBody_hoare hC s0 b jv hj) ?_
      intro r t _ _ ⟨_, hJ⟩ _
      exact ⟨_, hJ⟩
    · intro t _ ⟨⟨jv, hJ⟩, hc⟩
      exact ⟨jv, jcond hJ.2.1 hc, hJ⟩
  · intro s _ _ _
    unfold muJ
    split <;> omega
  · intro k
    refine hoare_pre (P := fun t => ∃ jv, jv.toNat < 13 ∧ 13 - jv.toNat = k ∧ JJ s0 b jv t) ?_ ?_
    · refine hoare_exists fun jv => hoare_pure fun hj => hoare_pure fun hk => ?_
      refine hoare_post (jBody_hoare hC s0 b jv hj) ?_
      intro r t _ _ ⟨_, hJ⟩ _
      unfold muJ
      rw [hJ.2.1]
      dsimp only
      rw [BitVec.toNat_add, BitVec.toNat_ofNat]
      omega
    · intro t _ ⟨⟨jv, hJ⟩, hc, hμ⟩
      refine ⟨jv, jcond hJ.2.1 hc, ?_, hJ⟩
      unfold muJ at hμ
      rw [hJ.2.1] at hμ
      exact hμ

end InitECandidate.Solver.Spec.Fq12
