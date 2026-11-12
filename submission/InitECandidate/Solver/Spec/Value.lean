import InitECandidate.Solver.Spec.Hoare

/-!
# Multi-limb word structs as natural numbers

`wv ws` is the struct value of the word list `ws`; `wn ws` its little-endian value
(`ws[0]` least significant). `vnat k v` reads the first `k` limbs of any value as a
natural number (non-word fields count as `0`), so it is total and `< 2 ^ (64 k)`;
`lnat k s x` reads the local `x` of `s`.

`shrW` is the limb-wise right shift by one bit that the guest writes inline as
`<(u.0 >>> 1) | (u.1 << 63), ..., u.(k-1) >>> 1>` (`shrE`); `wn (shrW ws) = wn ws / 2`.
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

/-! ## Word structs -/

/-- The struct value of a word list. -/
def wv (ws : List (BitVec 64)) : ValueHOL 64 := .rStruct (ws.map fun w => .val (.word w))

/-- Little-endian value of a word list. -/
def wn : List (BitVec 64) → Nat
  | [] => 0
  | w :: ws => w.toNat + 2 ^ 64 * wn ws

@[simp] theorem wn_nil : wn [] = 0 := rfl
@[simp] theorem wn_cons (w : BitVec 64) (ws : List (BitVec 64)) :
    wn (w :: ws) = w.toNat + 2 ^ 64 * wn ws := rfl

theorem lt_two_pow_mul_add {a x k : Nat} (ha : a < 2 ^ 64) (hx : x < 2 ^ k) :
    a + 2 ^ 64 * x < 2 ^ (k + 64) := by
  have h3 : x + 1 ≤ 2 ^ k := hx
  rw [Nat.pow_add]
  calc a + 2 ^ 64 * x < 2 ^ 64 * (x + 1) := by rw [Nat.mul_succ]; omega
    _ ≤ 2 ^ 64 * 2 ^ k := Nat.mul_le_mul_left _ h3
    _ = 2 ^ k * 2 ^ 64 := Nat.mul_comm _ _

theorem wn_lt : ∀ ws : List (BitVec 64), wn ws < 2 ^ (64 * ws.length)
  | [] => by simp
  | w :: ws => by
      have h := lt_two_pow_mul_add w.isLt (wn_lt ws)
      rw [wn_cons, List.length_cons, Nat.mul_succ]
      exact h

theorem wv_inj {ws ws' : List (BitVec 64)} (h : wv ws = wv ws') : ws = ws' := by
  simp only [wv, ValueHOL.rStruct.injEq] at h
  induction ws generalizing ws' with
  | nil => cases ws' <;> simp_all
  | cons w ws ih =>
      cases ws' with
      | nil => simp at h
      | cons w' ws' =>
          simp only [List.map_cons, List.cons.injEq, ValueHOL.val.injEq,
            HolWordLab.word.injEq] at h
          rw [h.1, ih h.2]

/-- The shape of a struct of `k` words. -/
def shK (k : Nat) : ShapeHOL := .comb (List.replicate k .one)

theorem shapeOf_val (w : HolWordLab 64) : shapeOfHOLExact (.val w : ValueHOL 64) = .one := by
  rw [shapeOfHOLExact]

theorem shapeOf_rStruct (vs : List (ValueHOL 64)) :
    shapeOfHOLExact (.rStruct vs) = .comb (vs.map shapeOfHOLExact) := by
  rw [shapeOfHOLExact]

theorem shapeOf_wv (ws : List (BitVec 64)) : shapeOfHOLExact (wv ws) = shK ws.length := by
  rw [wv, shapeOf_rStruct, shK, List.map_map]
  congr 1
  induction ws with
  | nil => rfl
  | cons w ws ih =>
      simp only [List.map_cons, List.length_cons, List.replicate_succ, Function.comp_apply,
        shapeOf_val, ih]

theorem eq_wv_of_shapes : ∀ {vs : List (ValueHOL 64)} {k : Nat},
    vs.map shapeOfHOLExact = List.replicate k .one →
    ∃ ws : List (BitVec 64), ws.length = k ∧ vs = ws.map fun w => .val (.word w)
  | [], k, h => by
      cases k with
      | zero => exact ⟨[], rfl, rfl⟩
      | succ k => simp at h
  | v :: vs, k, h => by
      cases k with
      | zero => simp at h
      | succ k =>
          simp only [List.map_cons, List.replicate_succ, List.cons.injEq] at h
          obtain ⟨ws, hl, hws⟩ := eq_wv_of_shapes h.2
          cases v with
          | val w =>
              cases w with
              | word w => exact ⟨w :: ws, by simp [hl], by simp [hws]⟩
          | rStruct _ => rw [shapeOf_rStruct] at h; cases h.1
          | nStruct _ _ => rw [shapeOfHOLExact] at h; cases h.1

/-- A value of shape `shK k` is a struct of `k` words. -/
theorem eq_wv_of_shape {v : ValueHOL 64} {k : Nat} (h : shapeOfHOLExact v = shK k) :
    ∃ ws : List (BitVec 64), ws.length = k ∧ v = wv ws := by
  cases v with
  | val w => rw [shapeOf_val] at h; cases h
  | nStruct _ _ => rw [shapeOfHOLExact] at h; cases h
  | rStruct vs =>
      rw [shapeOf_rStruct, shK, ShapeHOL.comb.injEq] at h
      obtain ⟨ws, hl, hws⟩ := eq_wv_of_shapes h
      exact ⟨ws, hl, by rw [hws]; rfl⟩

theorem eq_wv_of_shapeEq {v : ValueHOL 64} {k : Nat}
    (h : shapeEqHOL (shK k) (shapeOfHOLExact v) = true) :
    ∃ ws : List (BitVec 64), ws.length = k ∧ v = wv ws :=
  eq_wv_of_shape ((shapeEqHOL_eq_true _ _).mp h).symm

theorem eq_wv_of_shapeEq' {v : ValueHOL 64} {k : Nat}
    (h : shapeEqHOL (shapeOfHOLExact v) (shK k) = true) :
    ∃ ws : List (BitVec 64), ws.length = k ∧ v = wv ws :=
  eq_wv_of_shape ((shapeEqHOL_eq_true _ _).mp h)

/-! ## Reading any value as a number -/

/-- Little-endian value of a field list (non-word fields count as `0`). -/
def wnV : List (ValueHOL 64) → Nat
  | [] => 0
  | .val (.word w) :: rest => w.toNat + 2 ^ 64 * wnV rest
  | _ :: rest => 2 ^ 64 * wnV rest

theorem wnV_lt : ∀ l : List (ValueHOL 64), wnV l < 2 ^ (64 * l.length)
  | [] => by simp [wnV]
  | v :: rest => by
      have key : ∀ a : Nat, a < 2 ^ 64 → a + 2 ^ 64 * wnV rest < 2 ^ (64 * (rest.length + 1)) := by
        intro a ha
        rw [Nat.mul_succ]
        exact lt_two_pow_mul_add ha (wnV_lt rest)
      rw [List.length_cons]
      match v with
      | .val (.word w) => exact key _ w.isLt
      | .rStruct _ => have := key 0 (Nat.two_pow_pos _); simpa [wnV] using this
      | .nStruct _ _ => have := key 0 (Nat.two_pow_pos _); simpa [wnV] using this

/-- The first `k` limbs of a value, as a number. -/
def vnat (k : Nat) : ValueHOL 64 → Nat
  | .rStruct vs => wnV (vs.take k)
  | _ => 0

theorem vnat_lt (k : Nat) (v : ValueHOL 64) : vnat k v < 2 ^ (64 * k) := by
  unfold vnat
  split
  · rename_i vs
    have h := wnV_lt (vs.take k)
    have hl : (vs.take k).length ≤ k := List.length_take_le k vs
    exact Nat.lt_of_lt_of_le h (Nat.pow_le_pow_right (by decide) (by omega))
  · exact Nat.two_pow_pos _

theorem wnV_map : ∀ ws : List (BitVec 64),
    wnV (ws.map fun w => .val (.word w)) = wn ws
  | [] => rfl
  | w :: ws => by simp [wnV, wnV_map ws]

theorem vnat_wv {ws : List (BitVec 64)} {k : Nat} (h : ws.length = k) :
    vnat k (wv ws) = wn ws := by
  subst h
  simp only [vnat, wv]
  rw [List.take_of_length_le (by simp)]
  exact wnV_map ws

variable {σ : Type}

/-- The local `x` of `s`, read as a `k`-limb number (`0` when absent). -/
def lnat (k : Nat) (s : PanSemStateFiniteExact 64 σ) (x : MlS) : Nat :=
  match s.locals.lookup x with
  | some v => vnat k v
  | none => 0

theorem lnat_lt (k : Nat) (s : PanSemStateFiniteExact 64 σ) (x : MlS) :
    lnat k s x < 2 ^ (64 * k) := by
  unfold lnat
  split
  · exact vnat_lt _ _
  · exact Nat.two_pow_pos _

theorem lnat_of_lookup {k : Nat} {s : PanSemStateFiniteExact 64 σ} {x : MlS}
    {ws : List (BitVec 64)} (h : s.locals.lookup x = some (wv ws)) (hl : ws.length = k) :
    lnat k s x = wn ws := by
  unfold lnat
  rw [h]
  exact vnat_wv hl

/-! ## The one-bit right shift -/

/-- Limb-wise right shift by one bit. -/
def shrW : List (BitVec 64) → List (BitVec 64)
  | [] => []
  | [w] => [w >>> (1 : Nat)]
  | w :: w' :: rest => ((w >>> (1 : Nat)) ||| (w' <<< (63 : Nat))) :: shrW (w' :: rest)

theorem length_shrW : ∀ ws : List (BitVec 64), (shrW ws).length = ws.length
  | [] => rfl
  | [_] => rfl
  | _ :: w' :: rest => by
      simp only [shrW, List.length_cons, length_shrW (w' :: rest)]

theorem toNat_shr_or (w w' : BitVec 64) :
    ((w >>> (1 : Nat)) ||| (w' <<< (63 : Nat))).toNat = w.toNat / 2 + 2 ^ 63 * (w'.toNat % 2) := by
  rw [BitVec.toNat_or, BitVec.toNat_ushiftRight, BitVec.toNat_shiftLeft, Nat.shiftRight_eq_div_pow,
    Nat.shiftLeft_eq]
  have hw := w.isLt
  have hlo : w.toNat / 2 ^ 1 < 2 ^ 63 := by omega
  have hhi : w'.toNat * 2 ^ 63 % 2 ^ 64 = 2 ^ 63 * (w'.toNat % 2) := by omega
  rw [hhi, Nat.or_comm, ← Nat.two_pow_add_eq_or_of_lt hlo]
  omega

theorem wn_shrW : ∀ ws : List (BitVec 64), wn (shrW ws) = wn ws / 2
  | [] => rfl
  | [w] => by
      simp only [shrW, wn_cons, wn_nil, BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow,
        Nat.mul_zero, Nat.add_zero]
      try omega
  | w :: w' :: rest => by
      have ih := wn_shrW (w' :: rest)
      rw [shrW, wn_cons, ih, toNat_shr_or]
      simp only [wn_cons] at ih ⊢
      have hw := w.isLt
      have hw' := w'.isLt
      omega

/-- The guest's inline shift expression on the `k`-limb local expression `x`,
fields `i, i+1, ...` (`n` of them). -/
def shrE (x : ExpHOL 64) : Nat → Nat → List (ExpHOL 64)
  | _, 0 => []
  | i, 1 => [.shift .lsr (.rfield i x) (.const 1)]
  | i, n + 2 =>
      .op .or [.shift .lsr (.rfield i x) (.const 1), .shift .lsl (.rfield (i + 1) x) (.const 63)] ::
        shrE x (i + 1) (n + 1)

section shift
variable {s : PanSemStateFiniteExact 64 σ}

theorem ev_rfield_wv {x : ExpHOL 64} {ws : List (BitVec 64)} (hx : ev s x = some (wv ws))
    {i : Nat} (hi : i < ws.length) : ev s (.rfield i x) = some (.val (.word ws[i])) := by
  rw [ev_rfield hx]
  simp [hi]

theorem ev_lsr1 {e : ExpHOL 64} {w : BitVec 64} (he : ev s e = some (.val (.word w))) :
    ev s (.shift .lsr e (.const 1)) = some (.val (.word (w >>> (1 : Nat)))) := by
  rw [ev_shift he (ev_const _)]
  simp [wordShiftHOL]

theorem ev_lsl63 {e : ExpHOL 64} {w : BitVec 64} (he : ev s e = some (.val (.word w))) :
    ev s (.shift .lsl e (.const 63)) = some (.val (.word (w <<< (63 : Nat)))) := by
  rw [ev_shift he (ev_const _)]
  simp [wordShiftHOL]

theorem ev_or2 {a b : ExpHOL 64} {x y : BitVec 64} (ha : ev s a = some (.val (.word x)))
    (hb : ev s b = some (.val (.word y))) :
    ev s (.op .or [a, b]) = some (.val (.word (x ||| y))) := by
  rw [ev_op2 ha hb]
  show some (ValueHOL.val (HolWordLab.word (x ||| (y ||| 0#64)))) = _
  rw [BitVec.or_zero]

theorem evs_shrE {x : ExpHOL 64} {ws : List (BitVec 64)} (hx : ev s x = some (wv ws)) :
    ∀ n i, ws.length = i + n →
      evs s (shrE x i n) = some ((shrW (ws.drop i)).map fun w => .val (.word w))
  | 0, i, h => by
      have : ws.drop i = [] := List.drop_eq_nil_of_le (by omega)
      rw [this]
      rfl
  | 1, i, h => by
      have hi : i < ws.length := by omega
      have hd : ws.drop i = [ws[i]] := by
        rw [List.drop_eq_getElem_cons hi]
        have : ws.drop (i + 1) = [] := List.drop_eq_nil_of_le (by omega)
        rw [this]
      rw [hd]
      exact evs_cons (ev_lsr1 (ev_rfield_wv hx hi)) evs_nil
  | n + 2, i, h => by
      have hi : i < ws.length := by omega
      have hi1 : i + 1 < ws.length := by omega
      have hd : ws.drop i = ws[i] :: ws[i + 1] :: ws.drop (i + 2) := by
        rw [List.drop_eq_getElem_cons hi, List.drop_eq_getElem_cons hi1]
      have hd1 : ws.drop (i + 1) = ws[i + 1] :: ws.drop (i + 2) := by
        rw [List.drop_eq_getElem_cons hi1]
      have ih := evs_shrE hx (n + 1) (i + 1) (by omega)
      rw [hd1] at ih
      rw [hd]
      exact evs_cons (ev_or2 (ev_lsr1 (ev_rfield_wv hx hi)) (ev_lsl63 (ev_rfield_wv hx hi1))) ih

/-- The inline shift of a `k`-limb struct is the limb-wise shift. -/
theorem ev_shr {x : ExpHOL 64} {ws : List (BitVec 64)} (hx : ev s x = some (wv ws)) :
    ev s (.rstruct (shrE x 0 ws.length)) = some (wv (shrW ws)) := by
  have := evs_shrE hx ws.length 0 (by omega)
  simp only [List.drop_zero] at this
  exact ev_rstruct this

end shift

/-! ## Bit length -/

/-- Number of significant bits (`0` for `0`). -/
def bitlen (n : Nat) : Nat := if n = 0 then 0 else n.log2 + 1

theorem bitlen_le_of_lt {n k : Nat} (h : n < 2 ^ k) : bitlen n ≤ k := by
  unfold bitlen
  split
  · omega
  · rename_i hn
    have := (Nat.log2_lt hn).mpr h
    omega

theorem bitlen_mono {m n : Nat} (h : m ≤ n) : bitlen m ≤ bitlen n := by
  by_cases hm : m = 0
  · simp [bitlen, hm]
  · have hn : n ≠ 0 := by omega
    have h1 : m < 2 ^ (n.log2 + 1) := Nat.lt_of_le_of_lt h Nat.lt_log2_self
    have := bitlen_le_of_lt h1
    simp only [bitlen, hn, if_false]
    exact this

theorem bitlen_half_lt {n : Nat} (h : n ≠ 0) : bitlen (n / 2) < bitlen n := by
  have h1 : n < 2 ^ (n.log2 + 1) := Nat.lt_log2_self
  have h2 : n / 2 < 2 ^ n.log2 := by
    rw [Nat.pow_succ] at h1
    omega
  have := bitlen_le_of_lt h2
  have hb : bitlen n = n.log2 + 1 := if_neg h
  rw [hb]
  omega

end InitECandidate.Solver.Spec
