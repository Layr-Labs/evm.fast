import InitECandidate.Solver.Spec.U256

/-!
# The halving loops of the binary GCD

`halveLoop u x m` (`while (u.0 & 1) == 0 { u = <u >> 1>; x = mod_half(x, m) }`):

* `halveLoop_cost`: at most `257` iterations. The measure is the bit length of `u`,
  which drops under halving of a nonzero `u`; `u = 0` is even forever, a *doomed* state
  (`cost_while_doomed`), provided `mod_half` raises no exception (`CalleeEscFree`).
* `halveLoop_hoare`: on normal exit `u` is odd and either unchanged or of strictly
  smaller bit length than on entry (`RelH`); facts about other locals are kept.
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

/-! ## Callee hypotheses -/

/-- A cost bound for every body the code map installs under `f` (a `TblSound` entry). -/
def CalleeCost (σ : Type) (X : Ctx 64) (f : MlS) (B : Nat) : Prop :=
  ∀ vs body callee rs, PanSemStateFiniteExact.lookupCodeHOLFinite X.code.lookup f vs =
    some (body, callee, rs) → Cost σ X body B

/-- Every body installed under `f` is escape-free (an `EfSound` entry). -/
def CalleeEscFree (σ : Type) (X : Ctx 64) (f : MlS) : Prop :=
  ∀ vs body callee rs, PanSemStateFiniteExact.lookupCodeHOLFinite X.code.lookup f vs =
    some (body, callee, rs) → EscFree σ X.code body

theorem calleeEscFree_of_ef {ef : MlS → Bool} (he : EfSound σ X.code ef) {f : MlS}
    (hf : ef f = true) : CalleeEscFree σ X f :=
  fun vs body callee rs hl => he f hf vs body callee rs hl

theorem cost_callTo {x f : MlS} {args : List (ExpHOL 64)} {B : Nat} (h : CalleeCost σ X f B) :
    Cost σ X (callTo x f args) (1 + B + 0) :=
  cost_call h (fun _ _ _ _ h => by simp at h)

/-- A good result of an assigning call to an escape-free function is normal completion
with only `x` changed. -/
theorem call_good {s : PanSemStateFiniteExact 64 σ} {x f : MlS} {args : List (ExpHOL 64)}
    (hs : InCtx s X) (hesc : CalleeEscFree σ X f)
    (hg : Good (evaluateHOLFiniteState s (callTo x f args)).1) :
    (evaluateHOLFiniteState s (callTo x f args)).1 = none ∧
      ∃ v, (evaluateHOLFiniteState s (callTo x f args)).2.locals = s.locals.update (x, v) := by
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
        cases ho : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body with
        | mk r st =>
          rw [ho] at hne
          dsimp only at hne ⊢
          cases r with
          | none => intro hg; exact absurd rfl hg.2
          | some r =>
            cases r with
            | returned v =>
                dsimp only
                split
                · split
                  · intro _; exact ⟨rfl, v, rfl⟩
                  · intro hg; exact absurd rfl hg.2
                · intro hg; exact absurd rfl hg.2
            | exception e v => exact absurd rfl (hne.1 e v)
            | finalFfi e => exact absurd rfl (hne.2 e)
            | «break» => intro hg; exact absurd rfl hg.2
            | «continue» => intro hg; exact absurd rfl hg.2
            | error => intro hg; exact absurd rfl hg.2
            | timeOut => intro hg; exact absurd rfl hg.1

/-! ## Values -/

theorem list_zero_of_wn {ws : List (BitVec 64)} (h : wn ws = 0) : ∀ w ∈ ws, w = 0 := by
  induction ws with
  | nil => simp
  | cons w ws ih =>
      simp only [wn_cons] at h
      intro w' hw'
      rcases List.mem_cons.mp hw' with rfl | hw'
      · exact BitVec.eq_of_toNat_eq (by simp; omega)
      · exact ih (by omega) w' hw'

theorem shrW_zero : ∀ {ws : List (BitVec 64)}, (∀ w ∈ ws, w = 0) → shrW ws = ws
  | [], _ => rfl
  | [w], h => by
      have : w = 0 := h w List.mem_cons_self
      subst this; rfl
  | w :: w' :: rest, h => by
      have h1 : w = 0 := h w List.mem_cons_self
      have h2 : ∀ y ∈ w' :: rest, y = 0 := fun y hy => h y (List.mem_cons_of_mem _ hy)
      have h3 : w' = 0 := h2 w' List.mem_cons_self
      rw [shrW, shrW_zero h2, h1, h3]
      rfl

theorem wn_mod_two {w : BitVec 64} {ws : List (BitVec 64)} : wn (w :: ws) % 2 = w.toNat % 2 := by
  simp only [wn_cons]
  omega

theorem ev_evenC {s : PanSemStateFiniteExact 64 σ} {u : MlS} {ws : List (BitVec 64)}
    (h : s.locals.lookup u = some (wv ws)) (hl : 0 < ws.length) :
    ev s (evenC u) = some (.val (.word (if wn ws % 2 = 0 then 1 else 0))) := by
  match ws, hl with
  | w :: rest, _ =>
    have h0 : ev s (.rfield 0 (lv u)) = some (.val (.word w)) := by
      rw [ev_rfield_wv (by rw [ev_lv]; exact h) (by simp)]; rfl
    have hand : ev s (.op .and [.rfield 0 (lv u), cw 1]) =
        some (.val (.word (w &&& (BitVec.ofNat 64 1 &&& ~~~0)))) := by
      rw [ev_op2 h0 (ev_cw _ 1)]
      rfl
    unfold evenC
    rw [ev_cmp hand (ev_cw _ 0), wn_mod_two]
    have hm : (w &&& (BitVec.ofNat 64 1 &&& ~~~0)).toNat = w.toNat % 2 := by
      rw [BitVec.toNat_and]; simp [Nat.and_one_is_mod]
    have key : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .equal (w &&& (BitVec.ofNat 64 1 &&& ~~~0))
        (BitVec.ofNat 64 0) = decide (w.toNat % 2 = 0) := by
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL]
      rw [Bool.eq_iff_iff, beq_iff_eq, decide_eq_true_iff, ← BitVec.toNat_inj, hm]
      simp
    rw [key]
    by_cases h2 : w.toNat % 2 = 0 <;> simp [h2]

theorem evs_shrE_shape {s : PanSemStateFiniteExact 64 σ} {x : ExpHOL 64} :
    ∀ n i (vs : List (ValueHOL 64)), evs s (shrE x i n) = some vs →
      vs.map shapeOfHOLExact = List.replicate n .one
  | 0, i, vs, h => by
      simp only [shrE, evs, evalListHOLExact, Option.some.injEq] at h
      subst h; rfl
  | 1, i, vs, h => by
      obtain ⟨v, vs', rfl, hv, hvs⟩ := evs_cons_inv h
      obtain ⟨w, rfl⟩ := ev_shift_word hv
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs
      subst hvs
      simp [shapeOf_val]
  | n + 2, i, vs, h => by
      obtain ⟨v, vs', rfl, hv, hvs⟩ := evs_cons_inv h
      obtain ⟨w, rfl⟩ := ev_op_word hv
      have := evs_shrE_shape (n + 1) (i + 1) vs' hvs
      simp only [List.map_cons, this, shapeOf_val, List.replicate_succ]

theorem ev_shr_shape {s : PanSemStateFiniteExact 64 σ} {x : ExpHOL 64} {k : Nat}
    {v : ValueHOL 64} (h : ev s (.rstruct (shrE x 0 k)) = some v) : shapeOfHOLExact v = shK k := by
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv h
  rw [shapeOf_rStruct, evs_shrE_shape k 0 vs hvs]
  rfl

/-- After `u = <u >> 1>` succeeds, `u` was a `k`-limb struct and is now its half. -/
theorem assign_shr_inv {s : PanSemStateFiniteExact 64 σ} {u : MlS} {k : Nat} {v : ValueHOL 64}
    (hv : ev s (.rstruct (shrE (lv u) 0 k)) = some v)
    (hval : isValidValueHOLFinite s .local u v = true) :
    ∃ ws, ws.length = k ∧ s.locals.lookup u = some (wv ws) ∧ v = wv (shrW ws) := by
  rw [isValidValueHOLFinite_eq] at hval
  simp only [isValidValueHOLExact, lookupKvarHOLExact] at hval
  split at hval
  · rename_i old hold
    rw [ev_shr_shape hv] at hval
    obtain ⟨ws, hl, rfl⟩ := eq_wv_of_shapeEq hval
    refine ⟨ws, hl, hold, ?_⟩
    have := ev_shr (s := s) (x := lv u) (ws := ws) (by rw [ev_lv]; exact hold)
    rw [hl, hv] at this
    exact Option.some.inj this
  · simp at hval

theorem isValid_wv {s : PanSemStateFiniteExact 64 σ} {u : MlS} {ws ws' : List (BitVec 64)}
    (h : s.locals.lookup u = some (wv ws)) (hl : ws'.length = ws.length) :
    isValidValueHOLFinite s .local u (wv ws') = true := by
  rw [isValidValueHOLFinite_eq]
  simp only [isValidValueHOLExact, lookupKvarHOLExact]
  rw [h]
  dsimp only
  rw [shapeOf_wv, shapeOf_wv, hl]
  exact shapeEq_shK _

/-! ## Loop invariants -/

/-- `U` is `U0`, or both are `k`-limb structs and `U` has strictly fewer bits. -/
def RelH (k : Nat) (U0 U : Option (ValueHOL 64)) : Prop :=
  U = U0 ∨ ∃ as bs : List (BitVec 64), U0 = some (wv as) ∧ as.length = k ∧
    U = some (wv bs) ∧ bs.length = k ∧ bitlen (wn bs) < bitlen (wn as)

/-- If `u` holds a `k`-limb struct, it is odd. -/
def OddL (k : Nat) (u : MlS) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∀ ws, t.locals.lookup u = some (wv ws) → ws.length = k → wn ws % 2 = 1

theorem relH_shr {k : Nat} {U0 : Option (ValueHOL 64)} {ws : List (BitVec 64)}
    (h : RelH k U0 (some (wv ws))) (hl : ws.length = k) : RelH k U0 (some (wv (shrW ws))) := by
  by_cases h0 : wn ws = 0
  · rw [shrW_zero (list_zero_of_wn h0)]; exact h
  · have hlt : bitlen (wn (shrW ws)) < bitlen (wn ws) := by
      rw [wn_shrW]; exact bitlen_half_lt h0
    right
    rcases h with h | ⟨as, bs, h1, h2, h3, h4, h5⟩
    · exact ⟨ws, shrW ws, h.symm, hl, rfl, by rw [length_shrW, hl], hlt⟩
    · have : bs = ws := (wv_inj (Option.some.inj h3)).symm
      subst this
      exact ⟨as, shrW bs, h1, h2, rfl, by rw [length_shrW, hl], by omega⟩

/-- Frame condition: `F` only depends on locals other than `u` and `x`. -/
def FrameOut (F : PanSemStateFiniteExact 64 σ → Prop) (u x : MlS) : Prop :=
  ∀ s t : PanSemStateFiniteExact 64 σ,
    (∀ y, y ≠ u → y ≠ x → t.locals.lookup y = s.locals.lookup y) → F s → F t

/-! ## The secp256k1 halving loop -/

theorem halveLoop_hoare {u x m : MlS} (hux : u ≠ x) (F : PanSemStateFiniteExact 64 σ → Prop)
    (hF : FrameOut F u x) (U0 : Option (ValueHOL 64)) :
    Hoare σ X (fun s => F s ∧ RelH 4 U0 (s.locals.lookup u)) (halveLoop u x m)
      (fun r t => r = none ∧ F t ∧ RelH 4 U0 (t.locals.lookup u) ∧ OddL 4 u t) := by
  apply hoare_while
  · intro s hs
    exact ⟨hF s _ (fun _ _ _ => rfl) hs.1, hs.2⟩
  · refine hoare_seq (R := fun r t => r = none ∧ F t ∧ RelH 4 U0 (t.locals.lookup u))
      (hoare_assign ?_) (fun r t _ hr _ hR => absurd hR.1 hr) (hoare_call (funRet_true _) ?_)
    · intro s _ ⟨⟨hFs, hRs⟩, _⟩ v hv hval
      obtain ⟨ws, hl, hu, rfl⟩ := assign_shr_inv hv hval
      refine ⟨rfl, hF s _ ?_ hFs, ?_⟩
      · intro y hy _; exact lk_set_ne _ _ (Ne.symm hy)
      · rw [lk_set_self]; rw [hu] at hRs; exact relH_shr hRs hl
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

theorem lnat_le_256 (s : PanSemStateFiniteExact 64 σ) (u : MlS) : bitlen (lnat 4 s u) ≤ 256 :=
  bitlen_le_of_lt (lnat_lt 4 s u)

theorem zeros4 : wv [0, 0, 0, 0] = wv (shrW [0, 0, 0, 0]) := rfl

theorem halveLoop_cost {u x m : MlS} (hux : u ≠ x) {Bh : Nat}
    (hcost : CalleeCost σ X (nm "mod_half") Bh) (hesc : CalleeEscFree σ X (nm "mod_half")) :
    Cost σ X (halveLoop u x m) ((256 + 1) * ((0 + (1 + Bh + 0)) + 1)) := by
  refine cost_while_doomed (fun s => bitlen (lnat 4 s u)) 256
    (fun s => InCtx s X ∧ s.locals.lookup u = some (wv [0, 0, 0, 0]))
    (cost_seq (cost_assign _ _ _) (cost_callTo hcost))
    (fun s _ _ _ => lnat_le_256 s u) ?_ ?_
  · -- measure decrease
    have H := hdec_of_hoare (σ := σ) (X := X) (c := evenC u)
      (body := .seq (.assign .local u (.rstruct (shrE (lv u) 0 4)))
        (callTo x (nm "mod_half") [lv x, lv m]))
      (fun s => bitlen (lnat 4 s u))
      (fun s => ¬ (InCtx s X ∧ s.locals.lookup u = some (wv [0, 0, 0, 0])))
      (fun _ => rfl) (fun s h => h) ?_
    · intro s hs hc _ hnd hexit
      exact H s hs hc hnd hexit
    · intro k
      refine hoare_seq (R := fun r t => r = none ∧ bitlen (lnat 4 t u) < k)
        (hoare_assign ?_) (fun r t _ hr _ hR => absurd hR.1 hr) (hoare_call (funRet_true _) ?_)
      · intro s hs ⟨hnd, _, hk⟩ v hv hval
        obtain ⟨ws, hl, hu, rfl⟩ := assign_shr_inv hv hval
        refine ⟨rfl, ?_⟩
        have hnz : wn ws ≠ 0 := by
          intro h0
          apply hnd
          refine ⟨hs, ?_⟩
          rw [hu]
          obtain ⟨a0, a1, a2, a3, rfl⟩ := list4 hl
          have hz := list_zero_of_wn h0
          simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq] at hz
          rw [hz.1, hz.2.1, hz.2.2.1, hz.2.2.2]
        rw [← hk, lnat_of_lookup hu hl, lnat_of_lookup (lk_set_self _ _ _) (by rw [length_shrW, hl]),
          wn_shrW]
        exact bitlen_half_lt hnz
      · intro s _ ⟨_, hk⟩ vs _ v _ _ t _ ht _
        have hut : t.locals.lookup u = s.locals.lookup u := by
          rw [ht]; exact lookup_update_ne _ _ (Ne.symm hux)
        unfold lnat
        rw [hut]
        exact hk
  · -- doomed states loop forever
    intro s ⟨hs, hu⟩
    refine ⟨?_, ?_⟩
    · refine ⟨1, ?_, by decide⟩
      have := ev_evenC hu (by decide)
      exact this
    · intro hg
      have hu' : (decClockHOLFinite s).locals.lookup u = some (wv [0, 0, 0, 0]) := hu
      have hev : ev (decClockHOLFinite s) (.rstruct (shrE (lv u) 0 4)) =
          some (wv (shrW [0, 0, 0, 0])) := ev_shr (x := lv u) (by rw [ev_lv]; exact hu')
      have hasg := eval_assign_ok (n := u) hev (isValid_wv hu' rfl)
      have hseq := eval_seq_none (b := callTo x (nm "mod_half") [lv x, lv m])
        (by rw [hasg])
      rw [hasg] at hseq
      dsimp only at hseq
      rw [hseq] at hg ⊢
      have hctx : InCtx (setVarHOLFinite u (wv (shrW [0, 0, 0, 0])) (decClockHOLFinite s)) X := hs
      obtain ⟨hnone, w, hw⟩ := call_good hctx hesc hg
      refine ⟨Or.inl hnone, inCtx_eval hctx _, ?_⟩
      rw [hw, lookup_update_ne _ _ (Ne.symm hux)]
      exact lk_set_self _ _ _

end InitECandidate.Solver.Spec
