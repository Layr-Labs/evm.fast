import InitECandidate.Solver.SourceCost.LoopExtra.Arith.Orbit
import InitECandidate.Solver.SourceCost.LoopExtra.WalkLoop

/-!
# Pigeonhole over projected locals

A loop body that is pure (`PF`: a good run changes only locals and the clock) and assigns
only the locals listed in `Sh`, each with a value of its listed (named-free) shape, moves
the loop state inside a finite set: the state is fixed by the listed locals, each ranging
over at most `2 ^ (width * sizeSh sh)` values. Evaluation is deterministic up to the clock
(`det_clock`), so the next listed-locals tuple is a function of the current one. A run that
stays in the loop for more than `2 ^ (width * K)` iterations repeats a tuple and never ends
well. Hence a good run makes at most `2 ^ (width * K) + 1` iterations (`cost_while_proj`).
-/

namespace InitECandidate.Solver.SourceCost.Arith
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-! ## Projected state -/

def keyOf (Sh : List (MlS × ShapeHOL)) (s : PanSemStateFiniteExact width σ) :
    List (Option (ValueHOL width)) :=
  Sh.map (fun q => s.locals.lookup q.1)

def accA (Sh : List (MlS × ShapeHOL)) : MlS → Bool := fun y => (Sh.lookup y).isSome

/-- `t` is reachable from `b` by runs of a body of the class: same non-local part, the
same locals outside `Sh`, the same shapes, and changed `Sh` locals of the listed shape. -/
def Inv (Sh : List (MlS × ShapeHOL)) (b t : PanSemStateFiniteExact width σ) : Prop :=
  NonLoc b t ∧ FrameSh (accA Sh) Sh b t

def KSh (Sh : List (MlS × ShapeHOL)) : Nat := (Sh.map (fun q => sizeSh q.2)).sum

theorem inv_refl (Sh : List (MlS × ShapeHOL)) (b : PanSemStateFiniteExact width σ) : Inv Sh b b :=
  ⟨nonLoc_refl b, frameSh_refl _ _ b⟩

theorem inv_trans {Sh : List (MlS × ShapeHOL)} {a b c : PanSemStateFiniteExact width σ}
    (h1 : Inv Sh a b) (h2 : Inv Sh b c) : Inv Sh a c :=
  ⟨nonLoc_trans h1.1 h2.1, frameSh_trans h1.2 h2.2⟩

theorem inv_clock {Sh : List (MlS × ShapeHOL)} {b t : PanSemStateFiniteExact width σ}
    (h : Inv Sh b t) (k : Nat) : Inv Sh b { t with clock := k } := by
  obtain ⟨⟨L, k1, rfl⟩, hf⟩ := h
  exact ⟨⟨L, k, rfl⟩, hf⟩

theorem fmap_ext {β : Type} {m1 m2 : HolFiniteMapExact MlS β} (h : ∀ y, m1.lookup y = m2.lookup y) :
    m1 = m2 := by
  cases m1; cases m2
  simp only [HolFiniteMapExact.mk.injEq]
  funext y; exact h y

theorem map_eq_pointwise {β γ : Type} {f g : β → γ} :
    ∀ {l : List β}, l.map f = l.map g → ∀ x ∈ l, f x = g x
  | [], _, x, hx => by simp at hx
  | a :: l, h, x, hx => by
      simp only [List.map_cons, List.cons.injEq] at h
      rcases List.mem_cons.mp hx with rfl | hx
      · exact h.1
      · exact map_eq_pointwise h.2 x hx

theorem lookup_isSome_mem {Sh : List (MlS × ShapeHOL)} {y : MlS} (h : (Sh.lookup y).isSome = true) :
    ∃ q ∈ Sh, q.1 = y := by
  induction Sh with
  | nil => simp at h
  | cons q Sh ih =>
      obtain ⟨a, b⟩ := q
      by_cases hya : y = a
      · exact ⟨(a, b), List.mem_cons_self, hya.symm⟩
      · have hb : (y == a) = false := by simpa using hya
        simp only [List.lookup, hb] at h
        obtain ⟨q, hq, hq1⟩ := ih h
        exact ⟨q, List.mem_cons_of_mem _ hq, hq1⟩

/-- Two states reachable from `b` with the same projection differ only in the clock. -/
theorem inv_key_eq {Sh : List (MlS × ShapeHOL)} {b t1 t2 : PanSemStateFiniteExact width σ}
    (h1 : Inv Sh b t1) (h2 : Inv Sh b t2) (hk : keyOf Sh t1 = keyOf Sh t2) :
    t2 = { t1 with clock := t2.clock } := by
  obtain ⟨⟨L1, k1, rfl⟩, f1⟩ := h1
  obtain ⟨⟨L2, k2, rfl⟩, f2⟩ := h2
  have hL : L1 = L2 := by
    apply fmap_ext
    intro y
    cases hy : accA Sh y
    · exact (f1.1 y hy).trans (f2.1 y hy).symm
    · obtain ⟨q, hq, rfl⟩ := lookup_isSome_mem hy
      exact map_eq_pointwise hk q hq
  subst hL
  rfl

/-- Reachability from `b` and from a state reachable from `b` agree. -/
theorem inv_congr {Sh : List (MlS × ShapeHOL)} {b s t : PanSemStateFiniteExact width σ}
    (hs : Inv Sh b s) : Inv Sh s t ↔ Inv Sh b t := by
  constructor
  · intro ht; exact inv_trans hs ht
  · intro ht
    obtain ⟨⟨Ls, ks, rfl⟩, fs1, fs2, fs3⟩ := hs
    obtain ⟨⟨Lt, kt, rfl⟩, ft1, ft2, ft3⟩ := ht
    refine ⟨⟨Lt, kt, rfl⟩, ?_, ?_, ?_⟩
    · intro y hy; exact (ft1 y hy).trans (fs1 y hy).symm
    · intro y; exact (ft2 y).trans (fs2 y).symm
    · intro y sh hsh hne
      simp only at hne ⊢
      by_cases hb : Lt.lookup y = b.locals.lookup y
      · -- `t` agrees with `b`, so `s` changed `y` to the listed shape; `t` has the same shape
        have hsne : Ls.lookup y ≠ b.locals.lookup y := fun h => hne (by rw [hb, h])
        obtain ⟨v, hv, hvs⟩ := fs3 y sh hsh hsne
        have e1 := fs2 y
        rw [hv, ← hb] at e1
        cases hlt : Lt.lookup y with
        | none => rw [hlt] at e1; cases e1
        | some w =>
            rw [hlt] at e1
            simp only [Option.map_some, Option.some.injEq] at e1
            exact ⟨w, rfl, e1.symm.trans hvs⟩
      · exact ft3 y sh hsh hb

/-! ## The finite set of projections -/

section
open Classical

theorem lookup_of_mem_nodup {Sh : List (MlS × ShapeHOL)} (hnd : (Sh.map Prod.fst).Nodup)
    {q : MlS × ShapeHOL} (hq : q ∈ Sh) : Sh.lookup q.1 = some q.2 := by
  induction Sh with
  | nil => simp at hq
  | cons p Sh ih =>
      obtain ⟨a, b⟩ := p
      simp only [List.map_cons, List.nodup_cons] at hnd
      rcases List.mem_cons.mp hq with rfl | hq
      · simp [List.lookup]
      · have hne : q.1 ≠ a := by
          intro h
          exact hnd.1 (h ▸ List.mem_map_of_mem hq)
        have hb : (q.1 == a) = false := by simpa using hne
        simp only [List.lookup, hb]
        exact ih hnd.2 hq

noncomputable def valsB (b : PanSemStateFiniteExact width σ) (q : MlS × ShapeHOL) :
    Finset (Option (ValueHOL width)) :=
  if ∃ v, b.locals.lookup q.1 = some v ∧ shapeOfHOLExact v = q.2 then (valsF q.2).image some
  else {b.locals.lookup q.1}

noncomputable def setB (Sh : List (MlS × ShapeHOL)) (b : PanSemStateFiniteExact width σ) :
    Finset (List (Option (ValueHOL width))) :=
  finProd (Sh.map (valsB b))

theorem card_valsB (b : PanSemStateFiniteExact width σ) (q : MlS × ShapeHOL) :
    (valsB b q).card ≤ 2 ^ (width * sizeSh q.2) := by
  unfold valsB
  split
  · exact le_trans Finset.card_image_le (card_valsF q.2)
  · simp only [Finset.card_singleton]; exact Nat.one_le_two_pow

theorem card_setB (Sh : List (MlS × ShapeHOL)) (b : PanSemStateFiniteExact width σ) :
    (setB Sh b).card ≤ 2 ^ (width * KSh Sh) := by
  unfold setB
  refine le_trans (card_finProd _) ?_
  induction Sh with
  | nil => simp [KSh]
  | cons q Sh ih =>
      simp only [List.map_cons, List.prod_cons, KSh, List.sum_cons, Nat.mul_add, Nat.pow_add]
      exact Nat.mul_le_mul (card_valsB b q) ih

theorem map_mem_finProd {β γ : Type} {f : β → γ} {F : β → Finset γ} :
    ∀ {l : List β}, (∀ x ∈ l, f x ∈ F x) → l.map f ∈ finProd (l.map F)
  | [], _ => nil_mem_finProd
  | a :: l, h => by
      simp only [List.map_cons]
      exact mem_finProd_cons (h a List.mem_cons_self)
        (map_mem_finProd fun x hx => h x (List.mem_cons_of_mem _ hx))

theorem key_mem {Sh : List (MlS × ShapeHOL)} (hnd : (Sh.map Prod.fst).Nodup)
    (hnf : ∀ q ∈ Sh, namedFree q.2 = true) {b t : PanSemStateFiniteExact width σ}
    (h : Inv Sh b t) : keyOf Sh t ∈ setB Sh b := by
  unfold keyOf setB
  apply map_mem_finProd
  intro q hq
  have hlk := lookup_of_mem_nodup hnd hq
  obtain ⟨_, f1, f2, f3⟩ := h
  unfold valsB
  by_cases heq : t.locals.lookup q.1 = b.locals.lookup q.1
  · rw [heq]
    split
    · rename_i hgood
      obtain ⟨v, hv, hvs⟩ := hgood
      rw [hv]
      exact Finset.mem_image.mpr ⟨v, mem_valsF q.2 (hnf q hq) v hvs, rfl⟩
    · exact Finset.mem_singleton_self _
  · obtain ⟨v, hv, hvs⟩ := f3 q.1 q.2 hlk heq
    have e := f2 q.1
    rw [hv] at e
    have hgood : ∃ v, b.locals.lookup q.1 = some v ∧ shapeOfHOLExact v = q.2 := by
      cases hb : b.locals.lookup q.1 with
      | none => rw [hb] at e; cases e
      | some w =>
          rw [hb] at e
          simp only [Option.map_some, Option.some.injEq] at e
          exact ⟨w, rfl, e.symm.trans hvs⟩
    rw [if_pos hgood, hv]
    exact Finset.mem_image.mpr ⟨v, mem_valsF q.2 (hnf q hq) v hvs, rfl⟩

end

/-! ## The successor of a projection -/

def Normal (r : Option (PanSemResultExact width)) : Prop := r = none ∨ r = some .continue

theorem normal_not_timeOut {r : Option (PanSemResultExact width)} (h : Normal r) :
    r ≠ some .timeOut := by
  rcases h with rfl | rfl <;> simp

theorem normal_good {r : Option (PanSemResultExact width)} (h : Normal r) : Good r := by
  rcases h with rfl | rfl <;> simp [Good]

theorem normal_loopExit {r : Option (PanSemResultExact width)} (h : Normal r) : LoopExit r := by
  rcases h with rfl | rfl <;> simp [LoopExit]

theorem condTrue_clock {s : PanSemStateFiniteExact width σ} {c : ExpHOL width} (k : Nat) :
    CondTrue { s with clock := k } c ↔ CondTrue s c := by
  unfold CondTrue
  rw [evalHOLFinite_upd_clock_eq]

/-- From a state reachable from `b` with projection `κ`, the condition holds, the body ends
normally, and the projection afterwards is `κ'`. -/
def Step (c : ExpHOL width) (body : ProgHOL width) (Sh : List (MlS × ShapeHOL))
    (b : PanSemStateFiniteExact width σ) (κ κ' : List (Option (ValueHOL width))) : Prop :=
  ∃ t, Inv Sh b t ∧ keyOf Sh t = κ ∧ CondTrue t c ∧ Normal (evaluateHOLFiniteState t body).1 ∧
    keyOf Sh (evaluateHOLFiniteState t body).2 = κ'

theorem step_unique {c : ExpHOL width} {body : ProgHOL width} {Sh : List (MlS × ShapeHOL)}
    {b : PanSemStateFiniteExact width σ} {κ κ1 κ2 : List (Option (ValueHOL width))}
    (h1 : Step c body Sh b κ κ1) (h2 : Step c body Sh b κ κ2) : κ1 = κ2 := by
  obtain ⟨t1, i1, k1, -, n1, e1⟩ := h1
  obtain ⟨t2, i2, k2, -, n2, e2⟩ := h2
  have ht := inv_key_eq i1 i2 (k1.trans k2.symm)
  rw [ht] at n2 e2
  obtain ⟨-, hd⟩ := det_clock body t1 t2.clock (normal_not_timeOut n1) (normal_not_timeOut n2)
  rw [← e1, ← e2, hd]
  rfl

theorem step_congr {c : ExpHOL width} {body : ProgHOL width} {Sh : List (MlS × ShapeHOL)}
    {b s : PanSemStateFiniteExact width σ} (hs : Inv Sh b s) (κ κ' : List (Option (ValueHOL width))) :
    Step c body Sh s κ κ' ↔ Step c body Sh b κ κ' := by
  unfold Step
  constructor
  · rintro ⟨t, ht, h⟩; exact ⟨t, (inv_congr hs).mp ht, h⟩
  · rintro ⟨t, ht, h⟩; exact ⟨t, (inv_congr hs).mpr ht, h⟩

section
open Classical

noncomputable def Qf (c : ExpHOL width) (body : ProgHOL width) (Sh : List (MlS × ShapeHOL))
    (b : PanSemStateFiniteExact width σ) (κ : List (Option (ValueHOL width))) : Bool :=
  decide (∃ κ', Step c body Sh b κ κ')

noncomputable def Gf (c : ExpHOL width) (body : ProgHOL width) (Sh : List (MlS × ShapeHOL))
    (b : PanSemStateFiniteExact width σ) (κ : List (Option (ValueHOL width))) :
    List (Option (ValueHOL width)) :=
  if h : ∃ κ', Step c body Sh b κ κ' then Classical.choose h else κ

theorem gf_eq {c : ExpHOL width} {body : ProgHOL width} {Sh : List (MlS × ShapeHOL)}
    {b : PanSemStateFiniteExact width σ} {κ κ' : List (Option (ValueHOL width))}
    (h : Step c body Sh b κ κ') : Gf c body Sh b κ = κ' := by
  have hex : ∃ κ', Step c body Sh b κ κ' := ⟨κ', h⟩
  unfold Gf
  rw [dif_pos hex]
  exact step_unique (Classical.choose_spec hex) h

theorem qf_true {c : ExpHOL width} {body : ProgHOL width} {Sh : List (MlS × ShapeHOL)}
    {b : PanSemStateFiniteExact width σ} {κ κ' : List (Option (ValueHOL width))}
    (h : Step c body Sh b κ κ') : Qf c body Sh b κ = true := by
  unfold Qf; exact decide_eq_true ⟨κ', h⟩

theorem qf_gf_congr {c : ExpHOL width} {body : ProgHOL width} {Sh : List (MlS × ShapeHOL)}
    {b s : PanSemStateFiniteExact width σ} (hs : Inv Sh b s) :
    Qf c body Sh s = Qf c body Sh b ∧ Gf c body Sh s = Gf c body Sh b := by
  have hst : ∀ κ κ', Step c body Sh s κ κ' ↔ Step c body Sh b κ κ' := step_congr hs
  have hstep : Step c body Sh s = Step c body Sh b := by
    funext κ κ'; exact propext (hst κ κ')
  refine ⟨?_, ?_⟩
  · funext κ; unfold Qf; rw [hstep]
  · funext κ; unfold Gf; simp only [hstep]

/-- The successor map keeps the finite set. -/
theorem gf_mem {c : ExpHOL width} {body : ProgHOL width} {Sh : List (MlS × ShapeHOL)}
    (hnd : (Sh.map Prod.fst).Nodup) (hnf : ∀ q ∈ Sh, namedFree q.2 = true)
    (hpf : PF σ X.code [] (accA Sh) Sh body) {b : PanSemStateFiniteExact width σ}
    (hb : b.code = X.code) (κ : List (Option (ValueHOL width))) (hκ : κ ∈ setB Sh b) :
    Gf c body Sh b κ ∈ setB Sh b := by
  by_cases hq : ∃ κ', Step c body Sh b κ κ'
  · obtain ⟨κ', t, ht, hk, hc, hn, he⟩ := hq
    rw [gf_eq ⟨t, ht, hk, hc, hn, he⟩, ← he]
    have htc : t.code = X.code := by obtain ⟨⟨L, k, rfl⟩, _⟩ := ht; exact hb
    obtain ⟨n1, f1⟩ := hpf t htc (gsat_nil t) (normal_good hn)
    exact key_mem hnd hnf (inv_trans ht ⟨n1, f1 (normal_loopExit hn)⟩)
  · unfold Gf; rw [dif_neg hq]; exact hκ

theorem orbit_mem {c : ExpHOL width} {body : ProgHOL width} {Sh : List (MlS × ShapeHOL)}
    (hnd : (Sh.map Prod.fst).Nodup) (hnf : ∀ q ∈ Sh, namedFree q.2 = true)
    (hpf : PF σ X.code [] (accA Sh) Sh body) {b : PanSemStateFiniteExact width σ}
    (hb : b.code = X.code) (κ : List (Option (ValueHOL width))) (hκ : κ ∈ setB Sh b) :
    ∀ m, iterA (Gf c body Sh b) m κ ∈ setB Sh b
  | 0 => hκ
  | m + 1 => gf_mem hnd hnf hpf hb _ (orbit_mem hnd hnf hpf hb κ hκ m)

end

/-! ## The rule -/

theorem cost_while_proj {c : ExpHOL width} {body : ProgHOL width} {B : Nat}
    {Sh : List (MlS × ShapeHOL)} (hnd : (Sh.map Prod.fst).Nodup)
    (hnf : ∀ q ∈ Sh, namedFree q.2 = true) (hb : Cost σ X body B)
    (hpf : PF σ X.code [] (accA Sh) Sh body) :
    Cost σ X (.while c body) ((2 ^ (width * KSh Sh) + 1) * (B + 1)) := by
  classical
  let M := 2 ^ (width * KSh Sh)
  let Q := Qf c body Sh (σ := σ)
  let G := Gf c body Sh (σ := σ)
  -- doomed states
  have never : ∀ k (s b : PanSemStateFiniteExact width σ), s.clock = k → InCtx s X →
      Inv Sh b s → runLenA (Q b) (G b) (M + 1) (keyOf Sh s) = M + 1 →
      ¬ Good (evaluateHOLFiniteState s (.while c body)).1 := by
    intro k
    induction k using Nat.strongRecOn with
    | _ k ih =>
    intro s b hk hs hinv hfull
    have hbc : b.code = X.code := by obtain ⟨⟨L, k1, hst⟩, _⟩ := hinv; rw [← hs.1, hst]
    have hall := (runLenA_eq_iff (Q b) (G b) _ _).mp hfull
    have hq0 : Q b (keyOf Sh s) = true := hall 0 (Nat.succ_pos _)
    have hq0' : ∃ κ', Step c body Sh b (keyOf Sh s) κ' := of_decide_eq_true hq0
    obtain ⟨κ', t, hit, hkt, hct, hnt, hκ'⟩ := hq0'
    have hstep : Step c body Sh b (keyOf Sh s) κ' := ⟨t, hit, hkt, hct, hnt, hκ'⟩
    have hst : s = { t with clock := s.clock } := inv_key_eq hit hinv hkt
    have hcs : CondTrue s c := by rw [hst]; exact (condTrue_clock _).mpr hct
    obtain ⟨w, hw, hne⟩ := hcs
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
    dsimp only
    rw [hw]
    simp only [ne_eq, hne, not_false_eq_true, if_true]
    split
    · simp [Good]
    · rename_i hclock
      have hds : decClockHOLFinite s = { t with clock := s.clock - 1 } := by
        rw [hst]; rfl
      by_cases hto : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = some .timeOut
      · rw [hto]; simp [Good]
      · have hto' : (evaluateHOLFiniteState { t with clock := s.clock - 1 } body).1 ≠
            some .timeOut := by rw [← hds]; exact hto
        obtain ⟨h1, h2⟩ := det_clock body t (s.clock - 1) (normal_not_timeOut hnt) hto'
        rw [← hds] at h1 h2
        have htc : t.code = X.code := by obtain ⟨⟨L, k1, rfl⟩, _⟩ := hit; exact hbc
        obtain ⟨n1, f1⟩ := hpf t htc (gsat_nil t) (normal_good hnt)
        have hinvt : Inv Sh b (evaluateHOLFiniteState t body).2 :=
          inv_trans hit ⟨n1, f1 (normal_loopExit hnt)⟩
        have hinv' : Inv Sh b (evaluateHOLFiniteState (decClockHOLFinite s) body).2 := by
          rw [h2]; exact inv_clock hinvt _
        have hkey' : keyOf Sh (evaluateHOLFiniteState (decClockHOLFinite s) body).2 =
            G b (keyOf Sh s) := by
          show _ = Gf c body Sh b _
          rw [gf_eq hstep, ← hκ', h2]; rfl
        have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) body).2.clock < k := by
          have := evaluateHOLFiniteState_clock_le (decClockHOLFinite s) body
          simp only [decClockHOLFinite] at this ⊢
          omega
        have hctx : InCtx (evaluateHOLFiniteState (decClockHOLFinite s) body).2 X :=
          inCtx_eval (s := decClockHOLFinite s) hs body
        have hfull' : runLenA (Q b) (G b) (M + 1)
            (keyOf Sh (evaluateHOLFiniteState (decClockHOLFinite s) body).2) = M + 1 := by
          rw [hkey']
          exact runLenA_full_step _ _ _ (setB Sh b) M (card_setB Sh b)
            (orbit_mem hnd hnf hpf hbc _ (key_mem hnd hnf hinv)) hfull
        rcases hnt with hn | hn
        · rw [h1, hn]
          exact ih _ hlt _ b rfl hctx hinv' hfull'
        · rw [h1, hn]
          exact ih _ hlt _ b rfl hctx hinv' hfull'
  let μ : PanSemStateFiniteExact width σ → Nat := fun s =>
    runLenA (Q s) (G s) (M + 1) (keyOf Sh s)
  have hM : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → CondTrue s c →
      Good (evaluateHOLFiniteState s (.while c body)).1 → μ s ≤ M := by
    intro s hs _ hg
    show runLenA (Q s) (G s) (M + 1) (keyOf Sh s) ≤ M
    have hle := runLenA_le (Q s) (G s) (M + 1) (keyOf Sh s)
    have hne : runLenA (Q s) (G s) (M + 1) (keyOf Sh s) ≠ M + 1 :=
      fun h => never _ s s rfl hs (inv_refl Sh s) h hg
    omega
  refine cost_while_good μ M hb hM ?_
  intro s hs hct hpos hg hexit hgt
  have hexit' : Normal (evaluateHOLFiniteState (decClockHOLFinite s) body).1 := hexit
  set s' := (evaluateHOLFiniteState (decClockHOLFinite s) body).2 with hs'
  have hdc : Inv Sh s (decClockHOLFinite s) := ⟨⟨s.locals, s.clock - 1, rfl⟩, frameSh_of_locals rfl⟩
  have hstep : Step c body Sh s (keyOf Sh s) (keyOf Sh s') :=
    ⟨decClockHOLFinite s, hdc, rfl, condTrue_decClock.mpr hct, hexit', rfl⟩
  obtain ⟨n1, f1⟩ := hpf (decClockHOLFinite s) hs.1 (gsat_nil _) (normal_good hexit')
  have hinv : Inv Sh s s' := inv_trans hdc ⟨n1, f1 (normal_loopExit hexit')⟩
  obtain ⟨hQ, hG⟩ := qf_gf_congr (c := c) (body := body) hinv
  have hqv : Q s (keyOf Sh s) = true := qf_true hstep
  have hGv : G s (keyOf Sh s) = keyOf Sh s' := gf_eq hstep
  have hMs := hM s hs hct hg
  show runLenA (Q s') (G s') (M + 1) (keyOf Sh s') < runLenA (Q s) (G s) (M + 1) (keyOf Sh s)
  simp only [μ] at hMs
  have hQ' : Q s' = Q s := hQ
  have hG' : G s' = G s := hG
  rw [hQ', hG']
  have h1 : runLenA (Q s) (G s) (M + 1) (keyOf Sh s) =
      runLenA (Q s) (G s) M (G s (keyOf Sh s)) + 1 := by
    simp [runLenA, hqv]
  rw [h1] at hMs ⊢
  rw [hGv] at hMs ⊢
  rw [runLenA_succ_of_lt _ _ _ _ (by omega)]
  omega

end InitECandidate.Solver.SourceCost.Arith
