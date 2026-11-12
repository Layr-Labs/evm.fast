import InitECandidate.Solver.Spec.Loop

/-!
# The tick bound of `modinv_bin`

Outer `while true` loop: measure `Φ = 2 (bitlen u + bitlen v) + [u odd ∧ v odd]` at the
loop head (`phi`, `muO`). A completed iteration halves `u` and `v` to odd numbers
(`halveLoop_hoare`), compares them (`funRet_u256_lt`) and replaces the larger one by
the (even) difference (`funRet_u256_sub`): if a halving happened the bit-length sum
dropped, otherwise both were odd and the indicator dropped (`phi_drop`). So the outer
loop runs at most `2 * 512 + 2 = 1026` iterations and each halving loop at most `257`.

`modinvBody_cost`: with callee costs `Bz Blt Bsub Bh Bms` of `u256_is_zero`, `u256_lt`,
`u256_sub`, `mod_half`, `mod_sub` (and `mod_half` escape-free), the body of `modinv_bin`
uses at most `1 + Bz + 1026 * (514 * Bh + Blt + Bsub + Bms + 1032)` ticks.
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

/-! ## The potential -/

def phi (a b : Nat) : Nat := 2 * (bitlen a + bitlen b) + (if a % 2 = 1 ∧ b % 2 = 1 then 1 else 0)

/-- The outer-loop measure: `phi` of the locals `u`, `v` read as `k`-limb numbers. -/
def muO (k : Nat) (u v : MlS) (s : PanSemStateFiniteExact 64 σ) : Nat :=
  phi (lnat k s u) (lnat k s v)

def onat (k : Nat) (o : Option (ValueHOL 64)) : Nat :=
  match o with
  | some v => vnat k v
  | none => 0

theorem lnat_eq_onat (k : Nat) (s : PanSemStateFiniteExact 64 σ) (u : MlS) :
    lnat k s u = onat k (s.locals.lookup u) := rfl

theorem onat_wv {k : Nat} {ws : List (BitVec 64)} (h : ws.length = k) :
    onat k (some (wv ws)) = wn ws := vnat_wv h

theorem relH_nat {k : Nat} {U0 : Option (ValueHOL 64)} {as : List (BitVec 64)}
    (h : RelH k U0 (some (wv as))) (hl : as.length = k) :
    wn as = onat k U0 ∨ bitlen (wn as) < bitlen (onat k U0) := by
  rcases h with h | ⟨as0, bs, h1, h2, h3, _, h5⟩
  · left; rw [← h, onat_wv hl]
  · right
    have : bs = as := (wv_inj (Option.some.inj h3)).symm
    subst this
    rw [h1, onat_wv h2]
    exact h5

theorem phi_drop {a0 b0 a1 b1 d : Nat} (ha1 : a1 % 2 = 1) (hb1 : b1 % 2 = 1)
    (hA : a1 = a0 ∨ bitlen a1 < bitlen a0) (hB : b1 = b0 ∨ bitlen b1 < bitlen b0)
    (hd : d ≤ a1) (hde : d % 2 = 0) : phi d b1 < phi a0 b0 := by
  have hm := bitlen_mono hd
  unfold phi
  have h1 : ¬ (d % 2 = 1 ∧ b1 % 2 = 1) := fun h => by omega
  rw [if_neg h1]
  rcases hA with rfl | hA <;> rcases hB with rfl | hB
  · rw [if_pos ⟨ha1, hb1⟩]; omega
  · split <;> omega
  · split <;> omega
  · split <;> omega

theorem phi_comm (a b : Nat) : phi a b = phi b a := by
  unfold phi
  have : (a % 2 = 1 ∧ b % 2 = 1) ↔ (b % 2 = 1 ∧ a % 2 = 1) := And.comm
  rw [if_congr this rfl rfl]
  omega

theorem muO_le (s : PanSemStateFiniteExact 64 σ) (u v : MlS) : muO 4 u v s ≤ 1025 := by
  unfold muO phi
  have := lnat_le_256 s u
  have := lnat_le_256 s v
  split <;> omega

/-! ## Pieces of the outer body -/

theorem hoare_pure {p : Prop} {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop} {c : ProgHOL 64}
    (h : p → Hoare σ X P c Q) : Hoare σ X (fun s => p ∧ P s) c Q :=
  fun s hs ⟨hp, hP⟩ ht => h hp s hs hP ht

theorem guard_hoare {P : PanSemStateFiniteExact 64 σ → Prop} {u x : MlS} {k : Nat} :
    Hoare σ X P (guardRet u x k) (fun r t => (r = none ∧ P t) ∨ ∃ v, r = some (.returned v)) := by
  refine hoare_ite (hoare_ite ?_ ?_) ?_
  · exact hoare_return fun _ _ _ v _ => Or.inr ⟨v, rfl⟩
  · exact hoare_skip fun _ _ h => Or.inl ⟨rfl, h.1.1⟩
  · exact hoare_skip fun _ _ h => Or.inl ⟨rfl, h.1⟩

theorem evs_lv2 {s : PanSemStateFiniteExact 64 σ} {u v : MlS} {vs : List (ValueHOL 64)}
    (h : evs s [lv u, lv v] = some vs) :
    ∃ U V, vs = [U, V] ∧ s.locals.lookup u = some U ∧ s.locals.lookup v = some V := by
  obtain ⟨U, vs1, rfl, hU, h1⟩ := evs_cons_inv h
  obtain ⟨V, vs2, rfl, hV, h2⟩ := evs_cons_inv h1
  simp only [evs, evalListHOLExact, Option.some.injEq] at h2
  subst h2
  exact ⟨U, V, rfl, hU, hV⟩

theorem ev_ult {s : PanSemStateFiniteExact 64 σ} {ult : MlS} {p : Prop} [Decidable p]
    (h : s.locals.lookup ult = some (.val (.word (if p then 1 else 0)))) :
    ev s (.cmp .equal (lv ult) (cw 0)) = some (.val (.word (if p then 0 else 1))) := by
  rw [ev_cmp (by rw [ev_lv]; exact h) (ev_cw _ 0)]
  by_cases hp : p <;> simp [hp, Flapjack.Compiler.Encoders.Asm.wordCmpHOL]

theorem sub_of_le {a b : Nat} (ha : a < 2 ^ 256) (hb : b < 2 ^ 256) (h : b ≤ a) :
    (a + 2 ^ (64 * 4) - b) % 2 ^ (64 * 4) = a - b := by
  rw [show 64 * 4 = 256 from rfl]
  rw [show a + 2 ^ 256 - b = (a - b) + 2 ^ 256 * 1 by omega, Nat.add_mul_mod_self_left,
    Nat.mod_eq_of_lt (by omega)]

theorem wn_lt4 {ws : List (BitVec 64)} (h : ws.length = 4) : wn ws < 2 ^ 256 := by
  have := wn_lt ws; rw [h] at this; exact this

/-- The tail `var ult = u256_lt(u, v); if ult == 0 {...} else {...}` decreases `phi`. -/
theorem modinvTail_hoare (hC : X.code.lookup = guestCode) {u v x1 x2 m ult : MlS}
    (huv : u ≠ v) (hux1 : u ≠ x1) (hvx1 : v ≠ x1) (hux2 : u ≠ x2) (hvx2 : v ≠ x2)
    (hlu : ult ≠ u) (hlv : ult ≠ v) (U0 V0 : Option (ValueHOL 64)) :
    Hoare σ X (fun t => (RelH 4 U0 (t.locals.lookup u) ∧ OddL 4 u t) ∧
        RelH 4 V0 (t.locals.lookup v) ∧ OddL 4 v t)
      (modinvTail u v x1 x2 m ult)
      (fun r t => r = none ∨ r = some .continue → muO 4 u v t < phi (onat 4 U0) (onat 4 V0)) := by
  refine hoare_decCall (funRet_u256_lt hC) ?_
  intro s _ ⟨⟨hRu, hOu⟩, hRv, hOv⟩ vs hvs w hR _
  obtain ⟨U, V, rfl, hU, hV⟩ := evs_lv2 hvs
  obtain ⟨as, bs, has, hbs, hvs', rfl⟩ := hR
  simp only [List.cons.injEq, and_true] at hvs'
  obtain ⟨rfl, rfl⟩ := hvs'
  have hoa := hOu as hU has
  have hob := hOv bs hV hbs
  have hA := relH_nat (hU ▸ hRu) has
  have hB := relH_nat (hV ▸ hRv) hbs
  have hla := wn_lt4 has
  have hlb := wn_lt4 hbs
  -- locals of the continuation state
  have key : ∀ t : PanSemStateFiniteExact 64 σ,
      t.locals = s.locals.update (ult, .val (.word (if wn as < wn bs then 1 else 0))) →
      t.locals.lookup u = some (wv as) ∧ t.locals.lookup v = some (wv bs) ∧
      t.locals.lookup ult = some (.val (.word (if wn as < wn bs then 1 else 0))) := by
    intro t ht
    rw [ht, lookup_update_ne _ _ hlu, lookup_update_ne _ _ hlv, lookup_update_self]
    exact ⟨hU, hV, rfl⟩
  -- the restored state reads `u`, `v` from the inner state
  have restore : ∀ t : PanSemStateFiniteExact 64 σ,
      muO 4 u v { t with locals := t.locals.resVarEq (ult, s.locals.lookup ult) } = muO 4 u v t := by
    intro t
    unfold muO
    rw [lnat_eq_onat, lnat_eq_onat, lnat_eq_onat 4 t, lnat_eq_onat 4 t]
    simp only []
    rw [lookup_resVarEq_ne _ _ hlu, lookup_resVarEq_ne _ _ hlv]
  refine hoare_ite ?_ ?_
  · -- `u = u256_sub(u, v); x1 = mod_sub(x1, x2, m)` when `¬ (u < v)`
    refine hoare_seq (R := fun r t => r = none ∧ ¬ wn as < wn bs ∧ ∃ ds : List (BitVec 64),
        ds.length = 4 ∧ t.locals.lookup u = some (wv ds) ∧ t.locals.lookup v = some (wv bs) ∧
        wn ds = (wn as + 2 ^ (64 * 4) - wn bs) % 2 ^ (64 * 4))
      (hoare_call (funRet_u256_sub hC) ?_) (fun r t _ hr _ hR => absurd hR.1 hr)
      (hoare_call (funRet_true _) ?_)
    · intro t _ ⟨ht, c, hc, hc0⟩ vs' hvs' d hd _ t' _ ht'
      obtain ⟨htu, htv, htl⟩ := key t ht
      have hlt : ¬ wn as < wn bs := by
        intro hl
        rw [ev_ult htl, if_pos hl] at hc
        exact hc0 (by simpa using hc.symm)
      obtain ⟨U', V', rfl, hU', hV'⟩ := evs_lv2 hvs'
      rw [htu] at hU'; rw [htv] at hV'
      cases hU'; cases hV'
      obtain ⟨as', bs', _, _, hvs'', ds, es, hds, hes, rfl, hwn⟩ := hd
      simp only [List.cons.injEq, and_true] at hvs''
      have e1 := wv_inj hvs''.1; have e2 := wv_inj hvs''.2
      subst e1; subst e2
      have : es = [] := List.eq_nil_of_length_eq_zero hes
      subst this
      simp only [List.append_nil] at ht'
      refine ⟨rfl, hlt, ds, hds, ?_, ?_, hwn⟩
      · rw [ht', lookup_update_self]
      · rw [ht', lookup_update_ne _ _ huv]; exact htv
    · intro t _ ⟨_, hlt, ds, hds, htu, htv, hwn⟩ _ _ _ _ _ t' _ ht' _
      rw [restore]
      unfold muO
      rw [lnat_eq_onat, lnat_eq_onat, ht', lookup_update_ne _ _ (Ne.symm hux1),
        lookup_update_ne _ _ (Ne.symm hvx1),
        htu, htv, onat_wv hds, onat_wv hbs, hwn, sub_of_le hla hlb (by omega)]
      exact phi_drop hoa hob hA hB (by omega) (by omega)
  · -- `v = u256_sub(v, u); x2 = mod_sub(x2, x1, m)` when `u < v`
    refine hoare_seq (R := fun r t => r = none ∧ wn as < wn bs ∧ ∃ ds : List (BitVec 64),
        ds.length = 4 ∧ t.locals.lookup u = some (wv as) ∧ t.locals.lookup v = some (wv ds) ∧
        wn ds = (wn bs + 2 ^ (64 * 4) - wn as) % 2 ^ (64 * 4))
      (hoare_call (funRet_u256_sub hC) ?_) (fun r t _ hr _ hR => absurd hR.1 hr)
      (hoare_call (funRet_true _) ?_)
    · intro t _ ⟨ht, hc⟩ vs' hvs' d hd _ t' _ ht'
      obtain ⟨htu, htv, htl⟩ := key t ht
      have hlt : wn as < wn bs := by
        by_contra hl
        rw [ev_ult htl, if_neg hl] at hc
        simp at hc
      obtain ⟨V', U', rfl, hV', hU'⟩ := evs_lv2 hvs'
      rw [htu] at hU'; rw [htv] at hV'
      cases hU'; cases hV'
      obtain ⟨bs', as', _, _, hvs'', ds, es, hds, hes, rfl, hwn⟩ := hd
      simp only [List.cons.injEq, and_true] at hvs''
      have e1 := wv_inj hvs''.1; have e2 := wv_inj hvs''.2
      subst e1; subst e2
      have : es = [] := List.eq_nil_of_length_eq_zero hes
      subst this
      simp only [List.append_nil] at ht'
      refine ⟨rfl, hlt, ds, hds, ?_, ?_, hwn⟩
      · rw [ht', lookup_update_ne _ _ (Ne.symm huv)]; exact htu
      · rw [ht', lookup_update_self]
    · intro t _ ⟨_, hlt, ds, hds, htu, htv, hwn⟩ _ _ _ _ _ t' _ ht' _
      rw [restore]
      unfold muO
      rw [lnat_eq_onat, lnat_eq_onat, ht', lookup_update_ne _ _ (Ne.symm hux2),
        lookup_update_ne _ _ (Ne.symm hvx2),
        htu, htv, onat_wv has, onat_wv hds, hwn, sub_of_le hlb hla (by omega), phi_comm,
        phi_comm (onat 4 U0)]
      exact phi_drop hob hoa hB hA (by omega) (by omega)

/-- A completed (normal or `continue`) iteration of the outer loop decreases `muO`. -/
theorem modinvOuter_dec (hC : X.code.lookup = guestCode) {u v x1 x2 m ult : MlS}
    (huv : u ≠ v) (hux1 : u ≠ x1) (hvx1 : v ≠ x1) (hux2 : u ≠ x2) (hvx2 : v ≠ x2)
    (hlu : ult ≠ u) (hlv : ult ≠ v) (k : Nat) :
    Hoare σ X (fun s => True ∧ CondTrue s (cw 1) ∧ muO 4 u v s = k)
      (modinvOuter u v x1 x2 m ult)
      (fun r t => r = none ∨ r = some .continue → muO 4 u v t < k) := by
  have hret : ∀ (r : Option (PanSemResultExact 64)) (t : PanSemStateFiniteExact 64 σ),
      r ≠ none → (r = none ∨ ∃ v : ValueHOL 64, r = some (.returned v)) →
      (r = none ∨ r = some .continue → muO 4 u v t < k) := by
    intro r t hr h hc
    rcases h with h | ⟨w, rfl⟩
    · exact absurd h hr
    · rcases hc with h | h <;> cases h
  refine hoare_seq guard_hoare (fun r t _ hr _ h => hret r t hr (h.imp_left And.left)) ?_
  refine hoare_seq guard_hoare (fun r t _ hr _ h => hret r t hr (h.imp_left And.left)) ?_
  refine hoare_pre (P := fun s => ∃ U0 V0 : Option (ValueHOL 64), s.locals.lookup u = U0 ∧
      s.locals.lookup v = V0 ∧ phi (onat 4 U0) (onat 4 V0) = k) ?_ ?_
  · refine hoare_exists fun U0 => hoare_exists fun V0 => ?_
    refine hoare_pre (P := fun s => phi (onat 4 U0) (onat 4 V0) = k ∧
        (s.locals.lookup v = V0 ∧ RelH 4 U0 (s.locals.lookup u))) ?_
      (fun s _ ⟨h1, h2, h3⟩ => ⟨h3, h2, Or.inl h1⟩)
    refine hoare_pure fun hk => ?_
    subst hk
    refine hoare_seq (halveLoop_hoare hux1 _ ?_ U0) (fun r t _ hr _ hR => absurd hR.1 hr) ?_
    · intro s t ht h1
      rw [ht v (Ne.symm huv) hvx1]; exact h1
    refine hoare_pre (P := fun s => (RelH 4 U0 (s.locals.lookup u) ∧ OddL 4 u s) ∧
        RelH 4 V0 (s.locals.lookup v)) ?_
      (fun s _ ⟨_, h1, h3, h4⟩ => ⟨⟨h3, h4⟩, Or.inl h1⟩)
    refine hoare_seq (halveLoop_hoare hvx2 _ ?_ V0) (fun r t _ hr _ hR => absurd hR.1 hr) ?_
    · intro s t ht ⟨h1, h2⟩
      have hu : t.locals.lookup u = s.locals.lookup u := ht u huv hux2
      exact ⟨by rw [hu]; exact h1, fun ws hw hl => h2 ws (by rw [← hu]; exact hw) hl⟩
    exact hoare_pre (modinvTail_hoare hC huv hux1 hvx1 hux2 hvx2 hlu hlv U0 V0)
      (fun s _ ⟨_, ⟨h1, h2⟩, h3, h4⟩ => ⟨⟨h1, h2⟩, h3, h4⟩)
  · intro s _ hk
    have hk' : muO 4 u v s = k := by
      rcases hk with ⟨-, ⟨-, -, -, h⟩ | ⟨_, h⟩⟩ | ⟨_, h⟩
      · exact h
      · cases h
      · cases h
    exact ⟨_, _, rfl, rfl, hk'⟩

/-! ## Costs -/

theorem guard_cost {u x : MlS} {k : Nat} : Cost σ X (guardRet u x k) 0 :=
  (cost_ite (cost_ite (cost_return _) cost_skip) cost_skip).mono (by simp)

theorem modinvTail_cost {u v x1 x2 m ult : MlS} {Blt Bsub Bms : Nat}
    (hlt : CalleeCost σ X (nm "u256_lt") Blt) (hsub : CalleeCost σ X (nm "u256_sub") Bsub)
    (hms : CalleeCost σ X (nm "mod_sub") Bms) :
    Cost σ X (modinvTail u v x1 x2 m ult) (Blt + Bsub + Bms + 3) :=
  (cost_decCall hlt (cost_ite (cost_seq (cost_callTo hsub) (cost_callTo hms))
    (cost_seq (cost_callTo hsub) (cost_callTo hms)))).mono (by omega)

/-- One iteration of the outer loop: two guards, two halving loops (`≤ 257` iterations
each), the comparison and the subtraction. -/
theorem modinvOuter_cost {u v x1 x2 m ult : MlS} (hux1 : u ≠ x1) (hvx2 : v ≠ x2)
    {Blt Bsub Bh Bms : Nat}
    (hlt : CalleeCost σ X (nm "u256_lt") Blt) (hsub : CalleeCost σ X (nm "u256_sub") Bsub)
    (hh : CalleeCost σ X (nm "mod_half") Bh) (hms : CalleeCost σ X (nm "mod_sub") Bms)
    (hesc : CalleeEscFree σ X (nm "mod_half")) :
    Cost σ X (modinvOuter u v x1 x2 m ult) (514 * Bh + Blt + Bsub + Bms + 1031) :=
  (cost_seq guard_cost (cost_seq guard_cost (cost_seq (halveLoop_cost (m := m) hux1 hh hesc)
    (cost_seq (halveLoop_cost (m := m) hvx2 hh hesc) (modinvTail_cost hlt hsub hms))))).mono
    (by omega)

/-- The outer loop of `modinv_bin` runs at most `1026` iterations. -/
theorem modinvLoop_cost (hC : X.code.lookup = guestCode) {Blt Bsub Bh Bms : Nat}
    (hlt : CalleeCost σ X (nm "u256_lt") Blt) (hsub : CalleeCost σ X (nm "u256_sub") Bsub)
    (hh : CalleeCost σ X (nm "mod_half") Bh) (hms : CalleeCost σ X (nm "mod_sub") Bms)
    (hesc : CalleeEscFree σ X (nm "mod_half")) :
    Cost σ X modinvLoop (1026 * (514 * Bh + Blt + Bsub + Bms + 1032)) := by
  have H := hdec_of_hoare (σ := σ) (X := X) (c := cw 1)
    (body := modinvOuter (nm "u") (nm "v") (nm "x1") (nm "x2") (nm "m") (nm "ult"))
    (muO 4 (nm "u") (nm "v")) (fun _ => True) (fun _ => rfl) (fun _ h => h)
    (modinvOuter_dec hC (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
      (by decide))
  exact (cost_while (muO 4 (nm "u") (nm "v")) 1025
    (modinvOuter_cost (by decide) (by decide) hlt hsub hh hms hesc)
    (fun s _ _ => muO_le s _ _) (fun s hs hc _ hexit => H s hs hc trivial hexit)).mono
    (by omega)

/-- **Tick bound of `modinv_bin`.** For the code map of the challenge run, the body of
`modinv_bin` uses at most `1 + Bz + 1026 * (514 * Bh + Blt + Bsub + Bms + 1032)` ticks,
given cost bounds of its callees and that `mod_half` raises no exception. -/
theorem modinvBody_cost (hC : X.code.lookup = guestCode) {Bz Blt Bsub Bh Bms : Nat}
    (hz : CalleeCost σ X (nm "u256_is_zero") Bz)
    (hlt : CalleeCost σ X (nm "u256_lt") Blt) (hsub : CalleeCost σ X (nm "u256_sub") Bsub)
    (hh : CalleeCost σ X (nm "mod_half") Bh) (hms : CalleeCost σ X (nm "mod_sub") Bms)
    (hesc : CalleeEscFree σ X (nm "mod_half")) :
    Cost σ X modinvBody (1 + Bz + 1026 * (514 * Bh + Blt + Bsub + Bms + 1032)) :=
  (cost_decCall hz (cost_seq (cost_ite (cost_return _) cost_skip)
    (cost_dec (cost_dec (cost_dec (cost_dec
      (cost_seq (modinvLoop_cost hC hlt hsub hh hms hesc) (cost_return _)))))))).mono
    (by omega)

/-- The same bound for every body the code map installs under `modinv_bin`. -/
theorem modinv_bin_cost (hC : X.code.lookup = guestCode) {Bz Blt Bsub Bh Bms : Nat}
    (hz : CalleeCost σ X (nm "u256_is_zero") Bz)
    (hlt : CalleeCost σ X (nm "u256_lt") Blt) (hsub : CalleeCost σ X (nm "u256_sub") Bsub)
    (hh : CalleeCost σ X (nm "mod_half") Bh) (hms : CalleeCost σ X (nm "mod_sub") Bms)
    (hesc : CalleeEscFree σ X (nm "mod_half")) :
    CalleeCost σ X (nm "modinv_bin") (1 + Bz + 1026 * (514 * Bh + Blt + Bsub + Bms + 1032)) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_two code_modinv_bin (by decide) hl
  exact modinvBody_cost hC hz hlt hsub hh hms hesc

end InitECandidate.Solver.Spec
