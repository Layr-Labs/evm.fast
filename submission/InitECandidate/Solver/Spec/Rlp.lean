import InitECandidate.Solver.Spec.CodeRlp

/-!
# The tick bound of `rlp_list_count`

```
fun 1 rlp_list_count(1 p, 1 len) {
  var count = 0; var off = 0;
  while off <+ len { var 1 total = rlp_item_total(p + off, len - off); off = off + total; count = count + 1; }
  return count; }
```

The step `total` is a callee result, so the syntactic analyzer cannot bound the loop. The
callee facts that bound it:

* `funRet_rlp_fail`: `rlp_fail` never returns (it raises `RlpErr`).
* `funRet_rlp_item_header`: `rlp_item_header(p, len)` returns `<h0, h1, kind>` with
  `1 ≤ h0 + h1 ≤ len` (as natural numbers; `HdrRet`). Every branch checks the claimed
  lengths against `len` before returning.
* `funRet_rlp_item_total`: `rlp_item_total(p, len)` returns a word `T` with
  `1 ≤ T ≤ len` (`TotRet`), whatever `rlp_validate_items` does.

So each completed iteration moves `off` forward by `T ∈ [1, len - off]` without wrapping:
the measure `len - off` drops (`countLoop_dec`), and the loop makes at most `2 ^ 64`
iterations. `rlp_list_count_cost`: with `Btot` a cost of `rlp_item_total`,
`CalleeCost σ X "rlp_list_count" (2 ^ 64 * (Btot + 2))`.
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

/-! ## Comparison facts -/

section cmp
variable {s : PanSemStateFiniteExact 64 σ}

theorem cmp_val_false {o : Cmp} {a b : ExpHOL 64} {x y : BitVec 64}
    (h : ev s (.cmp o a b) = some (.val (.word 0))) (ha : ev s a = some (.val (.word x)))
    (hb : ev s b = some (.val (.word y))) : wordCmpHOL o x y = false := by
  rw [ev_cmp ha hb] at h
  by_contra hc
  simp only [Bool.not_eq_false] at hc
  rw [if_pos hc] at h
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
  exact absurd h (by decide)

theorem cmp_val_true {o : Cmp} {a b : ExpHOL 64} {x y w : BitVec 64}
    (h : ev s (.cmp o a b) = some (.val (.word w))) (hw : w ≠ 0)
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y))) :
    wordCmpHOL o x y = true := by
  rw [ev_cmp ha hb] at h
  by_contra hc
  simp only [Bool.not_eq_true] at hc
  rw [hc] at h
  simp only [Bool.false_eq_true, if_false, Option.some.injEq, ValueHOL.val.injEq,
    HolWordLab.word.injEq] at h
  exact hw h.symm

theorem lower_false {x y : BitVec 64} (h : wordCmpHOL .lower x y = false) : y.toNat ≤ x.toNat := by
  simp only [wordCmpHOL, decide_eq_false_iff_not, BitVec.lt_def] at h
  omega

theorem lower_true {x y : BitVec 64} (h : wordCmpHOL .lower x y = true) : x.toNat < y.toNat := by
  simp only [wordCmpHOL, decide_eq_true_eq, BitVec.lt_def] at h
  exact h

theorem equal_false {x y : BitVec 64} (h : wordCmpHOL .equal x y = false) : x ≠ y := by
  simp only [wordCmpHOL, beq_eq_false_iff_ne] at h
  exact h

end cmp

theorem ev_lw {s : PanSemStateFiniteExact 64 σ} {x : MlS} {w : BitVec 64}
    (h : s.locals.lookup x = some (.val (.word w))) : ev s (lv x) = some (.val (.word w)) := by
  rw [ev_lv]; exact h

theorem lk_upd_ne (m : HolFiniteMapExact MlS (ValueHOL 64)) {x y : MlS} (v : ValueHOL 64)
    (h : x ≠ y) : (m.update (x, v)).lookup y = m.lookup y := lookup_update_ne m v h

/-! ## Generic shapes -/

/-- The post "returns a value satisfying `φ`" (and never completes normally). -/
def RetOnly (φ : ValueHOL 64 → Prop) (r : Option (PanSemResultExact 64))
    (_ : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ v, r = some (.returned v) ∧ φ v

theorem retOnly_ne_none {φ : ValueHOL 64 → Prop} {r : Option (PanSemResultExact 64)}
    {t : PanSemStateFiniteExact 64 σ} (h : RetOnly φ r t) : r ≠ none := by
  obtain ⟨v, rfl, -⟩ := h; simp

/-- `if c { a }; k` where `a` never completes normally. -/
theorem hoare_ite_skip_seq {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    {c : ExpHOL 64} {a k : ProgHOL 64}
    (ha : Hoare σ X (fun s => P s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) a
      (fun r t => r ≠ none ∧ Q r t))
    (hk : Hoare σ X (fun s => P s ∧ ev s c = some (.val (.word 0))) k Q) :
    Hoare σ X P (.seq (.ite c a .skip) k) Q := by
  refine hoare_seq (R := fun r t => (r = none ∧ P t ∧ ev t c = some (.val (.word 0))) ∨
      (r ≠ none ∧ Q r t))
    (hoare_ite (hoare_post ha (fun _ _ _ _ h => Or.inr h))
      (hoare_skip fun _ _ h => Or.inl ⟨rfl, h.1, h.2⟩)) ?_ ?_
  · intro r t _ hr _ h
    rcases h with h | h
    · exact absurd h.1 hr
    · exact h.2
  · refine hoare_pre hk ?_
    intro s _ h
    rcases h with h | h
    · exact ⟨h.2.1, h.2.2⟩
    · exact absurd rfl h.1

/-- A `return` whose value satisfies `φ`. -/
theorem hoare_return_only {P : PanSemStateFiniteExact 64 σ → Prop} {φ : ValueHOL 64 → Prop}
    {e : ExpHOL 64} (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → φ v) :
    Hoare σ X P (.return e) (fun r t => r ≠ none ∧ RetOnly φ r t) :=
  hoare_return fun s hs hp v hv => ⟨by simp, v, rfl, h s hs hp v hv⟩

/-! ## `rlp_fail` -/

theorem funRet_rlp_fail (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "rlp_fail") (fun _ _ => False) := by
  apply funRet_never_of
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_rlp_fail hl
  exact hoare_seq (R := fun _ _ => False) hoare_raise (fun _ _ _ _ _ h => h.elim)
    (fun _ _ h => h.elim)

/-! ## `rlp_item_header` -/

/-- `<h0, h1, kind>` with `1 ≤ h0 + h1 ≤ L`. -/
def HdrOk (L : BitVec 64) (v : ValueHOL 64) : Prop :=
  ∃ a b c : BitVec 64, v = .rStruct [.val (.word a), .val (.word b), .val (.word c)] ∧
    1 ≤ a.toNat + b.toNat ∧ a.toNat + b.toNat ≤ L.toNat

def HdrRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∃ P L : BitVec 64, vs = [.val (.word P), .val (.word L)] ∧ HdrOk L v

/-- The header locals: `p`, `len`, and `len ≠ 0`. -/
def HInv (P L : BitVec 64) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  s.locals.lookup (nm "p") = some (.val (.word P)) ∧
    s.locals.lookup (nm "len") = some (.val (.word L)) ∧ L.toNat ≠ 0

theorem hInv_set {P L : BitVec 64} {s : PanSemStateFiniteExact 64 σ} {x : MlS} (v : ValueHOL 64)
    (hp : x ≠ nm "p") (hl : x ≠ nm "len") (h : HInv P L s) : HInv P L (setVarHOLFinite x v s) :=
  ⟨by rw [lk_set_ne _ _ hp]; exact h.1, by rw [lk_set_ne _ _ hl]; exact h.2.1, h.2.2⟩

theorem ev_lenm1 {P L : BitVec 64} {s : PanSemStateFiniteExact 64 σ} (h : HInv P L s) :
    ev s (.op .sub [lv (nm "len"), cw 1]) = some (.val (.word (L - 1))) :=
  ev_sub2 (ev_lw h.2.1) (ev_cw _ 1)

theorem toNat_lenm1 {L : BitVec 64} (h : L.toNat ≠ 0) : (L - 1).toNat = L.toNat - 1 := by
  bv_omega

/-- A guard `(len - 1) <+ x` that passed: `x ≤ len - 1`. -/
theorem lenLt_false {P L : BitVec 64} {s : PanSemStateFiniteExact 64 σ} (h : HInv P L s)
    {x : MlS} {N : BitVec 64} (hx : s.locals.lookup x = some (.val (.word N)))
    (hc : ev s (lenLt (lv x)) = some (.val (.word 0))) : N.toNat + 1 ≤ L.toNat := by
  have h1 := lower_false (cmp_val_false hc (ev_lenm1 h) (ev_lw hx))
  have h2 := toNat_lenm1 h.2.2
  have h3 := h.2.2
  omega

/-- The short-string and short-list branches: `<1, n, kind>` with `n ≤ len - 1`. -/
theorem shortRet {L N : BitVec 64} {s : PanSemStateFiniteExact 64 σ} (k : Nat)
    (hn : s.locals.lookup (nm "n") = some (.val (.word N))) (hle : N.toNat + 1 ≤ L.toNat)
    {v : ValueHOL 64} (hv : ev s (.rstruct [cw 1, lv (nm "n"), cw k]) = some v) : HdrOk L v := by
  have h1 : ev s (.rstruct [cw 1, lv (nm "n"), cw k]) =
      some (.rStruct [.val (.word (BitVec.ofNat 64 1)), .val (.word N),
        .val (.word (BitVec.ofNat 64 k))]) :=
    ev_rstruct (evs_cons (ev_cw _ 1) (evs_cons (ev_lw hn) (evs_cons (ev_cw _ k) evs_nil)))
  rw [h1] at hv
  cases hv
  refine ⟨_, _, _, rfl, ?_, ?_⟩ <;> simp only [BitVec.toNat_ofNat] <;> omega

/-- The header locals together with `b`. -/
def HInvB (P L B : BitVec 64) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  HInv P L s ∧ s.locals.lookup (nm "b") = some (.val (.word B))

theorem ev_sub_b {P L B : BitVec 64} {s : PanSemStateFiniteExact 64 σ} (h : HInvB P L B s)
    (k : Nat) {v : ValueHOL 64} (hv : ev s (.op .sub [lv (nm "b"), cw k]) = some v) :
    v = .val (.word (B - BitVec.ofNat 64 k)) := by
  rw [ev_sub2 (ev_lw h.2) (ev_cw _ k)] at hv
  exact (Option.some.inj hv).symm

theorem hdrShortStr_hoare (hC : X.code.lookup = guestCode) (P L B : BitVec 64) :
    Hoare σ X (HInvB P L B) hdrShortStr (fun r t => r ≠ none ∧ RetOnly (HdrOk L) r t) := by
  have hf := funRet_rlp_fail (σ := σ) hC
  refine hoare_dec fun s _ hs v hv _ => ?_
  rw [ev_sub_b hs 128 hv]
  generalize B - BitVec.ofNat 64 128 = N
  refine hoare_pre (P := fun t => HInv P L t ∧
      t.locals.lookup (nm "n") = some (.val (.word N))) ?_ ?_
  · refine hoare_post (Q := fun r t => r ≠ none ∧ RetOnly (HdrOk L) r t) ?_
      (fun r t _ _ h => h)
    refine hoare_guard_seq hf ?_
    refine hoare_seq (R := fun r t => r = none ∧ HInv P L t ∧
        t.locals.lookup (nm "n") = some (.val (.word N)) ∧ N.toNat + 1 ≤ L.toNat) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_ite ?_ ?_
      · refine hoare_post (hoare_guard hf) ?_
        intro r t _ _ ⟨h1, ⟨⟨⟨h2, h3⟩, h4⟩, _⟩, _⟩
        exact ⟨h1, h2, h3, lenLt_false h2 h3 h4⟩
      · exact hoare_skip fun t _ ⟨⟨⟨h2, h3⟩, h4⟩, _⟩ => ⟨rfl, h2, h3, lenLt_false h2 h3 h4⟩
    · exact hoare_return_only fun t _ ⟨_, _, hn, hle⟩ w hw => shortRet 0 hn hle hw
  · intro t _ ht
    subst ht
    exact ⟨hInv_set _ (by decide) (by decide) hs.1, lk_set_self _ _ _⟩

theorem hdrShortList_hoare (hC : X.code.lookup = guestCode) (P L B : BitVec 64) :
    Hoare σ X (HInvB P L B) hdrShortList (fun r t => r ≠ none ∧ RetOnly (HdrOk L) r t) := by
  have hf := funRet_rlp_fail (σ := σ) hC
  refine hoare_dec fun s _ hs v hv _ => ?_
  rw [ev_sub_b hs 192 hv]
  generalize B - BitVec.ofNat 64 192 = N
  refine hoare_pre (P := fun t => HInv P L t ∧
      t.locals.lookup (nm "n") = some (.val (.word N))) ?_ ?_
  · refine hoare_post (Q := fun r t => r ≠ none ∧ RetOnly (HdrOk L) r t) ?_
      (fun r t _ _ h => h)
    refine hoare_guard_seq hf ?_
    exact hoare_return_only fun t _ ⟨⟨h2, h3⟩, h4⟩ w hw => shortRet 1 h3 (lenLt_false h2 h3 h4) hw
  · intro t _ ht
    subst ht
    exact ⟨hInv_set _ (by decide) (by decide) hs.1, lk_set_self _ _ _⟩

theorem hdrLong_hoare (hC : X.code.lookup = guestCode) (P L B : BitVec 64) (base kind : Nat) :
    Hoare σ X (HInvB P L B) (hdrLong base kind) (fun r t => r ≠ none ∧ RetOnly (HdrOk L) r t) := by
  have hf := funRet_rlp_fail (σ := σ) hC
  refine hoare_dec fun s _ hs v hv _ => ?_
  rw [ev_sub_b hs base hv]
  generalize B - BitVec.ofNat 64 base = LL
  refine hoare_pre (P := fun t => HInv P L t ∧
      t.locals.lookup (nm "ll") = some (.val (.word LL))) ?_ ?_
  · refine hoare_post (Q := fun r t => r ≠ none ∧ RetOnly (HdrOk L) r t) ?_
      (fun r t _ _ h => h)
    refine hoare_guard_seq hf ?_
    refine hoare_decCallS (funSpec_true _) ?_
    intro t _ ⟨⟨hI, hll⟩, hc⟩ _ _ _ w st _ _ hsh
    have hLL := lenLt_false hI hll hc
    obtain ⟨N, rfl⟩ := val_of_shapeEq_one' hsh
    refine hoare_pre (P := fun u => HInv P L u ∧
        u.locals.lookup (nm "ll") = some (.val (.word LL)) ∧
        u.locals.lookup (nm "n") = some (.val (.word N))) ?_ ?_
    · refine hoare_post (Q := fun r u => r ≠ none ∧ RetOnly (HdrOk L) r u) ?_
        (fun r u _ _ h => h)
      refine hoare_guard_seq hf ?_
      refine hoare_guard_seq hf ?_
      refine hoare_return_only ?_
      intro u _ ⟨⟨⟨hI', hll', hn'⟩, _⟩, hc2⟩ w hw
      have h2 := lower_false (cmp_val_false hc2 (ev_sub2 (ev_lenm1 hI') (ev_lw hll')) (ev_lw hn'))
      have hL := hI'.2.2
      have hv' : ev u (.rstruct [.op .add [cw 1, lv (nm "ll")], lv (nm "n"), cw kind]) =
          some (.rStruct [.val (.word (BitVec.ofNat 64 1 + LL)), .val (.word N),
            .val (.word (BitVec.ofNat 64 kind))]) :=
        ev_rstruct (evs_cons (ev_add2 (ev_cw _ 1) (ev_lw hll'))
          (evs_cons (ev_lw hn') (evs_cons (ev_cw _ kind) evs_nil)))
      rw [hv'] at hw
      cases hw
      refine ⟨_, _, _, rfl, ?_, ?_⟩ <;> bv_omega
    · intro u _ hu
      subst hu
      refine ⟨hInv_set _ (by decide) (by decide) hI, ?_, lk_set_self _ _ _⟩
      rw [lk_set_ne _ _ (by decide)]
      exact hll
  · intro t _ ht
    subst ht
    exact ⟨hInv_set _ (by decide) (by decide) hs.1, lk_set_self _ _ _⟩

theorem hdrDispatch_hoare (hC : X.code.lookup = guestCode) (P L B : BitVec 64) :
    Hoare σ X (HInvB P L B) hdrDispatch (RetOnly (HdrOk L)) := by
  refine hoare_ite_skip_seq (Q := RetOnly (HdrOk L)) ?_ ?_
  · refine hoare_return_only fun s _ ⟨⟨hI, _⟩, _⟩ v hv => ?_
    have h0 : ev s (.rstruct [cw 0, cw 1, cw 0]) =
        some (.rStruct [.val (.word (BitVec.ofNat 64 0)), .val (.word (BitVec.ofNat 64 1)),
          .val (.word (BitVec.ofNat 64 0))]) := rfl
    rw [h0] at hv
    cases hv
    have := hI.2.2
    refine ⟨_, _, _, rfl, ?_, ?_⟩ <;> simp only [BitVec.toNat_ofNat] <;> omega
  · refine hoare_ite_skip_seq (Q := RetOnly (HdrOk L))
      (hoare_pre (hdrShortStr_hoare hC P L B) (fun _ _ h => h.1.1)) ?_
    refine hoare_ite_skip_seq (Q := RetOnly (HdrOk L))
      (hoare_pre (hdrLong_hoare hC P L B 183 0) (fun _ _ h => h.1.1.1)) ?_
    refine hoare_ite_skip_seq (Q := RetOnly (HdrOk L)) (hoare_pre (hdrShortList_hoare hC P L B)
      (fun _ _ h => h.1.1.1.1)) ?_
    exact hoare_conseq (hdrLong_hoare hC P L B 247 1) (fun _ _ h => h.1.1.1.1)
      (fun _ _ _ _ h => h.2)

theorem hdrBody_hoare (hC : X.code.lookup = guestCode) (P L : BitVec 64) :
    Hoare σ X (fun s => s.locals.lookup (nm "p") = some (.val (.word P)) ∧
      s.locals.lookup (nm "len") = some (.val (.word L))) hdrBody (RetP (HdrOk L)) := by
  refine hoare_guard_seq (funRet_rlp_fail hC) ?_
  refine hoare_dec fun s _ ⟨⟨hp, hl⟩, hc⟩ v hv _ => ?_
  have hL : L.toNat ≠ 0 := by
    have := equal_false (cmp_val_false hc (ev_lw hl) (ev_cw _ 0))
    intro h0
    exact this (BitVec.eq_of_toNat_eq (by simpa using h0))
  obtain ⟨B, rfl, -⟩ := ev_loadByte_word hv
  refine hoare_conseq (hdrDispatch_hoare hC P L B) ?_ ?_
  · intro t _ ht
    subst ht
    exact ⟨hInv_set _ (by decide) (by decide) ⟨hp, hl, hL⟩, lk_set_self _ _ _⟩
  · intro r t _ _ ⟨w, hw, hok⟩ v hv
    rw [hw] at hv
    cases hv
    exact hok

/-- **`rlp_item_header` returns `<h0, h1, kind>` with `1 ≤ h0 + h1 ≤ len`.** -/
theorem funRet_rlp_item_header (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "rlp_item_header") HdrRet := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA, hB, hla, hlb⟩ := lookupCode_two code_rlp_item_header (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hA
  obtain ⟨L, rfl⟩ := val_of_shapeEq_one hB
  refine hoare_conseq (hdrBody_hoare hC P L) ?_ ?_
  · intro s _ hs
    rw [hs]
    exact ⟨hla, hlb⟩
  · intro r t _ _ h v hv
    exact ⟨P, L, rfl, h v hv⟩

/-! ## `rlp_item_total` -/

/-- `rlp_item_total(p, len)` returns a word `T` with `1 ≤ T ≤ len`. -/
def TotRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∃ P L T : BitVec 64, vs = [.val (.word P), .val (.word L)] ∧ v = .val (.word T) ∧
    1 ≤ T.toNat ∧ T.toNat ≤ L.toNat

theorem funRet_rlp_item_total (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "rlp_item_total") TotRet := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA, hB, hla, hlb⟩ := lookupCode_two code_rlp_item_total (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hA
  obtain ⟨L, rfl⟩ := val_of_shapeEq_one hB
  refine hoare_conseq (P := fun s => s.locals.lookup (nm "p") = some (.val (.word P)) ∧
      s.locals.lookup (nm "len") = some (.val (.word L)))
    (Q := RetP (fun v => ∃ T : BitVec 64, v = .val (.word T) ∧ 1 ≤ T.toNat ∧ T.toNat ≤ L.toNat))
    ?_ ?_ ?_
  · refine hoare_decCallS (funSpec_of_funRet (funRet_rlp_item_header hC)) ?_
    intro s _ ⟨hp, hl⟩ vs hvs callee v st hR _ _
    have hvs' : vs = [.val (.word P), .val (.word L)] := by
      rw [evs_cons (ev_lw hp) (evs_cons (ev_lw hl) evs_nil)] at hvs
      exact (Option.some.inj hvs).symm
    subst hvs'
    obtain ⟨P', L', heq, a, b, c, rfl, h1, h2⟩ := hR v rfl
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at heq
    obtain ⟨rfl, rfl⟩ := heq
    refine hoare_pre (P := fun u => u.locals.lookup (nm "h") =
        some (.rStruct [.val (.word a), .val (.word b), .val (.word c)])) ?_ ?_
    · refine hoare_seq (R := fun r u => r = none ∧ u.locals.lookup (nm "h") =
          some (.rStruct [.val (.word a), .val (.word b), .val (.word c)])) ?_
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoare_ite ?_ ?_
        · exact hoare_callD (funSpec_true _) fun u _ ⟨hu, _⟩ _ _ _ _ _ _ _ => ⟨rfl, hu⟩
        · exact hoare_skip fun u _ ⟨hu, _⟩ => ⟨rfl, hu⟩
      · refine hoare_return fun u _ ⟨_, hu⟩ w hw => ?_
        have hfa : ev u (.rfield 0 (lv (nm "h"))) = some (.val (.word a)) := by
          rw [ev_rfield (by rw [ev_lv]; exact hu)]; rfl
        have hfb : ev u (.rfield 1 (lv (nm "h"))) = some (.val (.word b)) := by
          rw [ev_rfield (by rw [ev_lv]; exact hu)]; rfl
        rw [ev_add2 hfa hfb] at hw
        cases hw
        exact retP_returned _ ⟨a + b, rfl, by bv_omega, by bv_omega⟩
    · intro u _ hu
      subst hu
      exact lk_set_self _ _ _
  · intro s _ hs
    rw [hs]
    exact ⟨hla, hlb⟩
  · intro r t _ _ h v hv
    obtain ⟨T, rfl, h1, h2⟩ := h v hv
    exact ⟨P, L, T, rfl, rfl, h1, h2⟩

/-! ## The loop of `rlp_list_count` -/

/-- A word local as a number (`0` when absent or not a word). -/
def lw (s : PanSemStateFiniteExact 64 σ) (x : MlS) : Nat :=
  match s.locals.lookup x with
  | some (.val (.word w)) => w.toNat
  | _ => 0

theorem lw_of {s : PanSemStateFiniteExact 64 σ} {x : MlS} {w : BitVec 64}
    (h : s.locals.lookup x = some (.val (.word w))) : lw s x = w.toNat := by
  unfold lw; rw [h]

theorem lw_lt (s : PanSemStateFiniteExact 64 σ) (x : MlS) : lw s x < 2 ^ 64 := by
  unfold lw
  split
  · rename_i w _; exact w.isLt
  · exact Nat.two_pow_pos _

/-- The loop measure `len - off`. -/
def countMu (s : PanSemStateFiniteExact 64 σ) : Nat := lw s (nm "len") - lw s (nm "off")

theorem countMu_le (s : PanSemStateFiniteExact 64 σ) : countMu s ≤ 2 ^ 64 - 1 := by
  have := lw_lt s (nm "len")
  unfold countMu
  omega

/-- A completed iteration moves `off` forward by `rlp_item_total`'s result `T ∈ [1, len - off]`. -/
theorem countLoop_dec (hC : X.code.lookup = guestCode) (k : Nat) :
    Hoare σ X (fun s => True ∧ CondTrue s countCond ∧ countMu s = k) countLoopBody
      (fun r t => r = none ∨ r = some .continue → countMu t < k) := by
  refine hoare_decCallS (funSpec_of_funRet (funRet_rlp_item_total hC)) ?_
  intro s _ ⟨_, ⟨w, hw, hw0⟩, hk⟩ vs hvs callee v st hR _ _
  obtain ⟨O, Ln, hO, hLn, hlt⟩ := cmp_true hw hw0
  have hlt' := lower_true hlt
  rw [ev_lv] at hO hLn
  -- the second argument is `len - off`
  obtain ⟨V1, vs1, rfl, -, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨V2, vs2, rfl, hV2, hvs2⟩ := evs_cons_inv hvs1
  rw [ev_sub2 (ev_lw hLn) (ev_lw hO)] at hV2
  cases hV2
  obtain ⟨_, L', T, heq, rfl, hT1, hT2⟩ := hR v rfl
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at heq
  obtain ⟨-, rfl, -⟩ := heq
  have hk' : k = Ln.toNat - O.toNat := by rw [← hk, countMu, lw_of hLn, lw_of hO]
  have hT2' : T.toNat ≤ Ln.toNat - O.toNat := by
    rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; omega)] at hT2
    exact hT2
  refine hoare_pre (P := fun u => u.locals.lookup (nm "off") = some (.val (.word O)) ∧
      u.locals.lookup (nm "len") = some (.val (.word Ln)) ∧
      u.locals.lookup (nm "total") = some (.val (.word T))) ?_ ?_
  · refine hoare_seq (R := fun r u => r = none ∧
        u.locals.lookup (nm "off") = some (.val (.word (O + T))) ∧
        u.locals.lookup (nm "len") = some (.val (.word Ln))) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_assign fun u _ ⟨hu1, hu2, hu3⟩ x hx _ => ?_
      rw [ev_add2 (ev_lw hu1) (ev_lw hu3)] at hx
      cases hx
      refine ⟨rfl, lk_set_self _ _ _, ?_⟩
      rw [lk_set_ne _ _ (by decide)]
      exact hu2
    · refine hoare_assign fun u _ ⟨_, hu1, hu2⟩ x _ _ => ?_
      intro _
      unfold countMu
      have e1 : ({ (setVarHOLFinite (nm "count") x u) with
          locals := (setVarHOLFinite (nm "count") x u).locals.resVarEq
            (nm "total", (s.locals).lookup (nm "total")) } :
            PanSemStateFiniteExact 64 σ).locals.lookup (nm "off") =
          some (.val (.word (O + T))) := by
        show ((setVarHOLFinite (nm "count") x u).locals.resVarEq _).lookup _ = _
        rw [lookup_resVarEq_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
        exact hu1
      have e2 : ({ (setVarHOLFinite (nm "count") x u) with
          locals := (setVarHOLFinite (nm "count") x u).locals.resVarEq
            (nm "total", (s.locals).lookup (nm "total")) } :
            PanSemStateFiniteExact 64 σ).locals.lookup (nm "len") =
          some (.val (.word Ln)) := by
        show ((setVarHOLFinite (nm "count") x u).locals.resVarEq _).lookup _ = _
        rw [lookup_resVarEq_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
        exact hu2
      rw [lw_of e1, lw_of e2, hk']
      have hOT : (O + T).toNat = O.toNat + T.toNat := by
        rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by have := Ln.isLt; omega)]
      rw [hOT]
      omega
  · intro u _ hu
    subst hu
    refine ⟨?_, ?_, lk_set_self _ _ _⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hO
    · rw [lk_set_ne _ _ (by decide)]; exact hLn

/-! ## Costs -/

theorem countBody_cost (hC : X.code.lookup = guestCode) {Btot : Nat}
    (htot : CalleeCost σ X (nm "rlp_item_total") Btot) :
    Cost σ X countBody (2 ^ 64 * (Btot + 2)) := by
  have H := hdec_of_hoare (σ := σ) (X := X) (c := countCond) (body := countLoopBody) countMu
    (fun _ => True) (fun _ => rfl) (fun _ h => h) (countLoop_dec hC)
  have hw := cost_while (σ := σ) (X := X) (c := countCond) countMu (2 ^ 64 - 1)
    (cost_decCall htot (cost_seq (cost_assign _ _ _) (cost_assign _ _ _)))
    (fun s _ _ => countMu_le s) (fun s hs hc _ hexit => H s hs hc trivial hexit)
  refine (cost_dec (cost_dec (cost_seq hw (cost_return _)))).mono ?_
  rw [show 2 ^ 64 - 1 + 1 = 2 ^ 64 from rfl, Nat.add_zero]
  exact Nat.mul_le_mul_left _ (by omega)

/-- **Tick bound of `rlp_list_count`**, given a cost bound `Btot` of `rlp_item_total`. -/
theorem rlp_list_count_cost (hC : X.code.lookup = guestCode) {Btot : Nat}
    (htot : CalleeCost σ X (nm "rlp_item_total") Btot) :
    CalleeCost σ X (nm "rlp_list_count") (2 ^ 64 * (Btot + 2)) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_two code_rlp_list_count (by decide) hl
  exact countBody_cost hC htot

end InitECandidate.Solver.Spec
