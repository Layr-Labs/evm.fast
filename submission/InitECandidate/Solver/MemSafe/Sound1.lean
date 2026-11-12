import InitECandidate.Solver.MemSafe.Sound0

/-!
# Soundness infrastructure, part 2 (M1): restores, joins, multi-word stores

* `locals_restore`: the `dec` restore of a local, against the outer environment.
* `lookup_joinL`, `vok_join_left/right`, `locals_join_left/right`, `temps_join_left/right`,
  `ig_join_left/right`: joining abstract environments weakens the invariant soundly.
* `stores_many`: a store of `n` words changes exactly the cells `w + 8 i`, `i < n`.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-! ## Restore -/

theorem lookup_restL_ne {L : List (MlS × AV)} {x y : MlS} {old : Option AV} (h : y ≠ x) :
    (restL x old L).lookup y = L.lookup y := by
  unfold restL
  split
  · exact lookup_setL_ne h
  · exact lookup_filter_ne h

theorem locals_restore {A B : AEnv} {Γ Γ' : Gam} {Θ Θ' : List (BitVec 64 × Nat)}
    {s t : State σ} (hl : Later Γ Θ Γ' Θ') (hA : LocalsOK A Γ Θ s) (hB : LocalsOK B Γ' Θ' t)
    (x : MlS) :
    LocalsOK ⟨restL x (A.L.lookup x) B.L, B.T⟩ Γ' Θ'
      { t with locals := t.locals.resVarEq (x, s.locals.lookup x) } := by
  intro y bv hy
  show ∃ v, (t.locals.resVarEq (x, s.locals.lookup x)).lookup y = some v ∧ _
  rw [lookup_resVarEq_restore]
  by_cases hyx : y = x
  · subst hyx
    simp only [if_true]
    unfold restL at hy
    split at hy
    · rename_i av hav
      rw [lookup_setL_eq] at hy
      obtain ⟨v, hv, hok⟩ := hA y av hav
      refine ⟨v, hv, ?_⟩
      have := vok_later hl hok
      cases av <;> simp at hy <;> (try subst hy) <;> exact this
    · rw [lookup_filter_eq] at hy; cases hy
  · rw [if_neg hyx]
    rw [lookup_restL_ne hyx] at hy
    exact hB y bv hy

/-! ## Joins -/

theorem lookup_joinL {L M : List (MlS × AV)} {x : MlS} {w : AV}
    (h : (joinL L M).lookup x = some w) :
    ∃ u v, L.lookup x = some u ∧ M.lookup x = some v ∧ w = u.join v := by
  induction L with
  | nil => simp [joinL] at h
  | cons q L ih =>
      obtain ⟨z, u⟩ := q
      unfold joinL at h
      rw [List.filterMap_cons] at h
      by_cases hzx : z = x
      · subst hzx
        cases hm : M.lookup z with
        | none =>
            simp only [hm] at h
            obtain ⟨u', v, -, hv, -⟩ := ih h
            rw [hm] at hv; cases hv
        | some v =>
            simp only [hm, List.lookup_cons, beq_self_eq_true, Option.some.injEq] at h
            exact ⟨u, v, by simp, rfl, h.symm⟩
      · have hxz : (x == z) = false := by simp [Ne.symm hzx]
        have hL : ((z, u) :: L).lookup x = L.lookup x := by simp [List.lookup_cons, hxz]
        rw [hL]
        cases hm : M.lookup z with
        | none => simp only [hm] at h; exact ih h
        | some v =>
            simp only [hm, List.lookup_cons, hxz] at h
            exact ih h

theorem vok_join_left {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {u v : AV} {val : ValueHOL 64}
    (h : VOk Γ Θ u val) : VOk Γ Θ (u.join v) val := by
  unfold AV.join
  split
  · exact h
  · split
    · rename_i hw
      simp only [Bool.and_eq_true] at hw
      obtain ⟨w, rfl, -⟩ := vok_word hw.1 h
      exact ⟨w, rfl, trivial⟩
    · trivial

theorem vok_join_right {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {u v : AV} {val : ValueHOL 64}
    (h : VOk Γ Θ v val) : VOk Γ Θ (u.join v) val := by
  unfold AV.join
  split
  · rename_i he; subst he; exact h
  · split
    · rename_i hw
      simp only [Bool.and_eq_true] at hw
      obtain ⟨w, rfl, -⟩ := vok_word hw.2 h
      exact ⟨w, rfl, trivial⟩
    · trivial

theorem joinT_length (as bs : List (Option TD)) :
    (joinT as bs).length = max as.length bs.length := by
  induction as generalizing bs with
  | nil => cases bs <;> simp [joinT]
  | cons a as ih => cases bs <;> simp [joinT, ih] <;> omega

theorem joinT_some {as bs : List (Option TD)} {k : Nat} {td : TD}
    (h : (joinT as bs)[k]? = some (some td)) :
    as[k]? = some (some td) ∧ bs[k]? = some (some td) := by
  induction as generalizing bs k with
  | nil =>
      simp only [joinT, List.getElem?_map] at h
      cases hb : bs[k]? <;> simp [hb] at h
  | cons a as ih =>
      cases bs with
      | nil =>
          simp only [joinT, List.getElem?_map] at h
          cases hb : (a :: as)[k]? <;> simp [hb] at h
      | cons b bs =>
          cases k with
          | zero =>
              simp only [joinT, List.getElem?_cons_zero, Option.some.injEq] at h ⊢
              unfold joinTD at h
              split at h
              · split at h
                · rename_i he; cases h; subst he; exact ⟨rfl, rfl⟩
                · cases h
              · cases h
          | succ k =>
              simp only [joinT, List.getElem?_cons_succ] at h ⊢
              exact ih h

/-- Padding concrete temporaries to a longer list. -/
def padΘ (Θ : List (BitVec 64 × Nat)) (n : Nat) : List (BitVec 64 × Nat) :=
  Θ ++ List.replicate (n - Θ.length) (0, 0)

theorem padΘ_prefix (Θ : List (BitVec 64 × Nat)) (n : Nat) : Θ <+: padΘ Θ n :=
  List.prefix_append _ _

theorem padΘ_length {Θ : List (BitVec 64 × Nat)} {n : Nat} (h : Θ.length ≤ n) :
    (padΘ Θ n).length = n := by
  simp [padΘ]; omega

theorem locals_mono {A : AEnv} {Γ : Gam} {Θ Θ' : List (BitVec 64 × Nat)} {s : State σ}
    (hp : Θ <+: Θ') (h : LocalsOK A Γ Θ s) : LocalsOK A Γ Θ' s := fun x av hx =>
  let ⟨v, hv, hok⟩ := h x av hx; ⟨v, hv, vok_later ⟨ext_refl Γ, hp⟩ hok⟩

theorem ig_join_left {a : Act σ} {A B : AEnv} {Γ : Gam} {Θ : List (BitVec 64 × Nat)}
    {s : State σ} (h : IG a A Γ Θ s) :
    IG a (A.join B) Γ (padΘ Θ (max A.T.length B.T.length)) s := by
  obtain ⟨p, hh, ⟨hlen, ht⟩, hl⟩ := h
  have hpre := padΘ_prefix Θ (max A.T.length B.T.length)
  refine ⟨p, hh, ⟨?_, ?_⟩, ?_⟩
  · show _ = (joinT A.T B.T).length
    rw [joinT_length, padΘ_length (by omega)]
  · intro k td hk
    obtain ⟨hka, -⟩ := joinT_some hk
    obtain ⟨q, hq, hok⟩ := ht k td hka
    exact ⟨q, prefix_getElem? hpre hq, hok⟩
  · intro x av hx
    obtain ⟨u, v, hu, -, rfl⟩ := lookup_joinL hx
    obtain ⟨val, hval, hok⟩ := hl x u hu
    exact ⟨val, hval, vok_join_left (vok_later ⟨ext_refl Γ, hpre⟩ hok)⟩

theorem ig_join_right {a : Act σ} {A B : AEnv} {Γ : Gam} {Θ : List (BitVec 64 × Nat)}
    {s : State σ} (h : IG a B Γ Θ s) :
    IG a (A.join B) Γ (padΘ Θ (max A.T.length B.T.length)) s := by
  obtain ⟨p, hh, ⟨hlen, ht⟩, hl⟩ := h
  have hpre := padΘ_prefix Θ (max A.T.length B.T.length)
  refine ⟨p, hh, ⟨?_, ?_⟩, ?_⟩
  · show _ = (joinT A.T B.T).length
    rw [joinT_length, padΘ_length (by omega)]
  · intro k td hk
    obtain ⟨-, hkb⟩ := joinT_some hk
    obtain ⟨q, hq, hok⟩ := ht k td hkb
    exact ⟨q, prefix_getElem? hpre hq, hok⟩
  · intro x av hx
    obtain ⟨u, v, -, hv, rfl⟩ := lookup_joinL hx
    obtain ⟨val, hval, hok⟩ := hl x v hv
    exact ⟨val, hval, vok_join_right (vok_later ⟨ext_refl Γ, hpre⟩ hok)⟩

/-- Joining an `Option` environment on the left keeps a post. -/
theorem joinO_left {a : Act σ} {o o' : Option AEnv} {B : AEnv} {Γ : Gam}
    {Θ : List (BitVec 64 × Nat)} {s : State σ} (hB : o = some B) (h : IG a B Γ Θ s) :
    ∃ B' Θ', joinO o o' = some B' ∧ Θ <+: Θ' ∧ IG a B' Γ Θ' s := by
  subst hB
  cases o' with
  | none => exact ⟨B, Θ, rfl, List.prefix_refl _, h⟩
  | some C => exact ⟨_, _, rfl, padΘ_prefix _ _, ig_join_left h⟩

theorem joinO_right {a : Act σ} {o o' : Option AEnv} {B : AEnv} {Γ : Gam}
    {Θ : List (BitVec 64 × Nat)} {s : State σ} (hB : o' = some B) (h : IG a B Γ Θ s) :
    ∃ B' Θ', joinO o o' = some B' ∧ Θ <+: Θ' ∧ IG a B' Γ Θ' s := by
  subst hB
  cases o with
  | none => exact ⟨B, Θ, rfl, List.prefix_refl _, h⟩
  | some C => exact ⟨_, _, rfl, padΘ_prefix _ _, ig_join_right h⟩

/-! ## Multi-word stores -/

theorem stores_many {D : BitVec 64 → Prop} {inst : DecidablePred D} :
    ∀ (ws : List (HolWordLab 64)) (w : BitVec 64) (M M' : Mem), ws.length ≤ 2 ^ 32 →
      @panMemStoresHOL 64 _ w ws D inst M = some M' →
      ModifiesOnly (fun c => ∃ i < ws.length, c = w + BitVec.ofNat 64 (8 * i)) M M' ∧
        ∀ i (hi : i < ws.length), M' (w + BitVec.ofNat 64 (8 * i)) = ws[i] ∧
          D (w + BitVec.ofNat 64 (8 * i))
  | [], w, M, M', _, h => by
      simp only [panMemStoresHOL, Option.some.injEq] at h
      subst h
      exact ⟨fun _ _ => rfl, fun i hi => absurd hi (by simp)⟩
  | x :: xs, w, M, M', hlen, h => by
      unfold panMemStoresHOL at h
      unfold panMemStoreHOL at h
      split at h
      · rename_i M1 hM1
        split at hM1
        · rename_i hd
          simp only [Option.some.injEq] at hM1
          subst hM1
          have hb8 : panBytesInWord 64 = BitVec.ofNat 64 8 := rfl
          rw [hb8] at h
          have hlen' : xs.length ≤ 2 ^ 32 := by simp at hlen; omega
          obtain ⟨hmod, hval⟩ := stores_many xs (w + BitVec.ofNat 64 8) _ M' hlen' h
          -- the later cells differ from `w`
          have hne : ∀ i < xs.length,
              w + BitVec.ofNat 64 8 + BitVec.ofNat 64 (8 * i) ≠ w := by
            intro i hi he
            have := congrArg BitVec.toNat he
            simp only [BitVec.toNat_add, BitVec.toNat_ofNat] at this
            have h8 : 8 * i < 2 ^ 64 := by simp at hlen; omega
            omega
          have hshift : ∀ i, w + BitVec.ofNat 64 8 + BitVec.ofNat 64 (8 * i) =
              w + BitVec.ofNat 64 (8 * (i + 1)) := by
            intro i
            rw [BitVec.add_assoc]
            congr 1
            apply BitVec.eq_of_toNat_eq
            simp [BitVec.toNat_add, Nat.add_mod]
            omega
          refine ⟨fun c hc => ?_, fun i hi => ?_⟩
          · have h1 : M' c = (fun a => if a = w then x else M a) c := by
              refine hmod c (fun ⟨i, hi, he⟩ => hc ⟨i + 1, by simp; omega, ?_⟩)
              rw [he, hshift]
            rw [h1]
            have hcw : c ≠ w := fun he => hc ⟨0, by simp, by rw [he]; simp⟩
            simp [hcw]
          · cases i with
            | zero =>
                have hw0 : w + BitVec.ofNat 64 (8 * 0) = w := by simp
                rw [hw0]
                refine ⟨?_, hd⟩
                have h1 := hmod w (fun ⟨i, hi, he⟩ => hne i hi he.symm)
                rw [h1]
                simp
            | succ i =>
                have hi' : i < xs.length := by simp at hi; omega
                obtain ⟨hv, hdv⟩ := hval i hi'
                rw [← hshift]
                exact ⟨by rw [hv]; rfl, hdv⟩
        · simp at hM1
      · simp at h

end InitECandidate.Solver.MemSafe
