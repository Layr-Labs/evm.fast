import InitECandidate.Solver.MemSafe.Helpers.BnDiv

set_option autoImplicit false

/-!
# The 32-bit digit helpers: `u256_to_digits`, `digits_len`, `digits_to_u256`

* `funSpec_u256_to_digits`: `u256_to_digits(p, a)` (aligned `p`) keeps the globals, changes
  memory only in `[p, p + 64)` and leaves digit `k` of `a` (`digit a k`: the low or high 32 bits
  of limb `k / 2`) in the word at `p + 8 k`.
* `funSpec_digits_len`: `digits_len(p, n)` writes nothing and returns `n' ≤ n`; `n' = 0` only if
  the words at `p + 8 k`, `k < n`, are all zero.
* `pureSpec_digits_to_u256`.
* `digit_ne_zero`: a nonzero `u256` has a nonzero digit.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Digits -/

def mask32 : BitVec 64 := BitVec.ofNat 64 4294967295

/-- Digit `k` of the limbs `as`. -/
def digit (as : List (BitVec 64)) (k : Nat) : BitVec 64 :=
  if k % 2 = 0 then as.getD (k / 2) 0 &&& mask32 else as.getD (k / 2) 0 >>> (32 : Nat)

theorem limb_split (x : BitVec 64) :
    x.toNat = (x >>> (32 : Nat)).toNat * 2 ^ 32 + (x &&& mask32).toNat := by
  have h1 : (x >>> (32 : Nat)).toNat = x.toNat / 2 ^ 32 := by
    rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]
  have h2 : (x &&& mask32).toNat = x.toNat % 2 ^ 32 := by
    rw [BitVec.toNat_and, show mask32.toNat = 2 ^ 32 - 1 from rfl, Nat.and_two_pow_sub_one_eq_mod]
  rw [h1, h2]
  omega

/-- A nonzero limb has a nonzero digit. -/
theorem digit_ne_zero {as : List (BitVec 64)} {j : Nat} (hj : j < as.length)
    (h : as[j] ≠ 0) : digit as (2 * j) ≠ 0 ∨ digit as (2 * j + 1) ≠ 0 := by
  have e1 : digit as (2 * j) = as[j] &&& mask32 := by
    simp [digit, List.getD_eq_getElem?_getD, hj]
  have e2 : digit as (2 * j + 1) = as[j] >>> (32 : Nat) := by
    simp only [digit]
    rw [if_neg (by omega), show (2 * j + 1) / 2 = j by omega]
    simp [List.getD_eq_getElem?_getD, hj]
  rw [e1, e2]
  by_contra hc
  simp only [not_or, not_not] at hc
  apply h
  apply BitVec.eq_of_toNat_eq
  rw [limb_split as[j], hc.1, hc.2]
  rfl

/-! ## `u256_to_digits` -/

def u2dStore (c : Nat) (k : Nat) (e : ExpHOL 64) : ProgHOL 64 := .store (offP (nm "p") c) e

def u2dBody : ProgHOL 64 :=
  .seq (.store (lv (nm "p")) (.op .and [.rfield 0 (lv (nm "a")), cw 4294967295]))
  (.seq (.store (.op .add [lv (nm "p"), cw 8]) (.shift .lsr (.rfield 0 (lv (nm "a"))) (cw 32)))
  (.seq (.store (.op .add [lv (nm "p"), cw 16]) (.op .and [.rfield 1 (lv (nm "a")), cw 4294967295]))
  (.seq (.store (.op .add [lv (nm "p"), cw 24]) (.shift .lsr (.rfield 1 (lv (nm "a"))) (cw 32)))
  (.seq (.store (.op .add [lv (nm "p"), cw 32]) (.op .and [.rfield 2 (lv (nm "a")), cw 4294967295]))
  (.seq (.store (.op .add [lv (nm "p"), cw 40]) (.shift .lsr (.rfield 2 (lv (nm "a"))) (cw 32)))
  (.seq (.store (.op .add [lv (nm "p"), cw 48]) (.op .and [.rfield 3 (lv (nm "a")), cw 4294967295]))
  (.seq (.store (.op .add [lv (nm "p"), cw 56]) (.shift .lsr (.rfield 3 (lv (nm "a"))) (cw 32)))
    (.return (cw 0)))))))))

theorem entry_u256_to_digits : fnEntry Guest.Software.guestFn_u256_to_digits =
    (nm "u256_to_digits", [(nm "p", .one), (nm "a", shK 4)], u2dBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_u256_to_digits : guestCode (nm "u256_to_digits") =
    some ([(nm "p", .one), (nm "a", shK 4)], u2dBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 64) (by decide)) ⟨_, rfl⟩
    entry_u256_to_digits

theorem store1_at {x : HolWordLab 64} {w : BitVec 64} {dom : BitVec 64 → Prop}
    {inst : DecidablePred dom} {m m' : Mem} (h : @panMemStoresHOL 64 _ w [x] dom inst m = some m') :
    m' w = x := by
  unfold panMemStoresHOL at h
  split at h
  · rename_i u hu
    simp only [panMemStoresHOL, Option.some.injEq] at h
    subst h
    unfold panMemStoreHOL at hu
    split at hu
    · cases hu; simp
    · cases hu
  · cases h

theorem wordOp_and2 (x y : BitVec 64) : wordOp BinOp.and [x, y] = some (x &&& y) := by
  show some (AndOp.and x (AndOp.and y (Complement.complement (0 : BitVec 64)))) = _
  congr 1
  show x &&& (y &&& ~~~(0 : BitVec 64)) = x &&& y
  have : (~~~(0 : BitVec 64)) = BitVec.allOnes 64 := by decide
  rw [this, BitVec.and_allOnes]

theorem ev_digit_even {t : State σ} {as : List (BitVec 64)} {j : Nat} (hj : j < as.length)
    (ha : t.locals.lookup (nm "a") = some (wv as)) :
    ev t (.op .and [.rfield j (lv (nm "a")), cw 4294967295]) =
      some (.val (.word (digit as (2 * j)))) := by
  rw [ev_op2 (ev_rfield_wv (by rw [ev_lv]; exact ha) hj) (ev_cw _ _), wordOpHOL, wordOp_and2]
  simp [digit, List.getD_eq_getElem?_getD, hj, mask32]

theorem ev_digit_odd {t : State σ} {as : List (BitVec 64)} {j : Nat} (hj : j < as.length)
    (ha : t.locals.lookup (nm "a") = some (wv as)) :
    ev t (.shift .lsr (.rfield j (lv (nm "a"))) (cw 32)) =
      some (.val (.word (digit as (2 * j + 1)))) := by
  rw [ev_shift (ev_rfield_wv (by rw [ev_lv]; exact ha) hj) (ev_cw _ _)]
  simp only [digit]
  rw [if_neg (by omega), show (2 * j + 1) / 2 = j by omega]
  simp [wordShiftHOL, List.getD_eq_getElem?_getD, hj]

/-- After `k` digit stores. -/
def U2D (s0 : State σ) (P : BitVec 64) (as : List (BitVec 64)) (k : Nat) (t : State σ) : Prop :=
  t.locals = s0.locals ∧ t.globals = s0.globals ∧
    ModifiesOnly (Overlap P.toNat 64) s0.memory t.memory ∧
    ∀ j, j < k → rd t.memory (P + BitVec.ofNat 64 (8 * j)) = digit as j

theorem hoareG_u2dStep (hA : AlignedDom X) {s0 : State σ} {P : BitVec 64}
    {as : List (BitVec 64)} {k : Nat} (hk : k < 8) (hP : P.toNat + 64 ≤ 2 ^ 64)
    (hp : s0.locals.lookup (nm "p") = some (.val (.word P))) {e : ExpHOL 64}
    (he : ∀ t : State σ, t.locals = s0.locals → ev t e = some (.val (.word (digit as k)))) :
    HoareG σ X (U2D s0 P as k) (.store (offP (nm "p") (8 * k)) e)
      (fun r t => r = none ∧ U2D s0 P as (k + 1) t) := by
  refine hoareG_store fun t hs ⟨hloc, hgl, hmod, hd⟩ w v mem ha hv hst => ?_
  rw [he t hloc] at hv
  cases hv
  rw [flattenHOL] at hst
  obtain ⟨hm, hdom⟩ := store1_mod hst
  have hat := store1_at hst
  have hal : w.toNat % 8 = 0 := hA w (hs.2.1 ▸ hdom)
  rw [ev_offP (by rw [hloc]; exact hp)] at ha
  cases ha
  have hw : (P + BitVec.ofNat 64 (8 * k)).toNat = P.toNat + 8 * k := toNat_addc (by omega)
  refine ⟨rfl, hloc, hgl, hmod.trans (hm.mono fun a ha' => ha' ▸ overlap_word hal
    (by rw [hw]; omega) (by rw [hw]; omega)), fun j hj => ?_⟩
  by_cases hjk : j = k
  · subst hjk
    show rd mem _ = _
    rw [rd, hat]
  · have hne : P + BitVec.ofNat 64 (8 * j) ≠ P + BitVec.ofNat 64 (8 * k) := by
      intro h
      have := congrArg BitVec.toNat h
      rw [toNat_addc (by omega), hw] at this
      omega
    show rd mem _ = _
    rw [rd, hm _ hne]
    exact hd j (by omega)

/-- What `u256_to_digits` does. -/
def U2DSpec (vs : List (ValueHOL 64)) (s : State σ) (t : State σ) : Prop :=
  ∀ (P : BitVec 64) (as : List (BitVec 64)), vs = [.val (.word P), wv as] → as.length = 4 →
    P.toNat + 64 ≤ 2 ^ 64 →
    t.globals = s.globals ∧ ModifiesOnly (Overlap P.toNat 64) s.memory t.memory ∧
      ∀ k, k < 8 → rd t.memory (P + BitVec.ofNat 64 (8 * k)) = digit as k

theorem funSpec_u256_to_digits (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FunSpec σ X (nm "u256_to_digits") (fun vs s r t => Good (some r) → U2DSpec vs s t) := by
  refine funSpecG_of_hoareG fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hla, hlb⟩ := lookupCode_two code_u256_to_digits (by decide) hl
  intro t ht ht0 hg r' _ P as hvs hlen hP
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  subst ht0
  have hp : t.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hla
  have ha : t.locals.lookup (nm "a") = some (wv as) := by rw [hloc]; exact hlb
  let Fin : State σ → Prop := fun t' => t'.globals = t.globals ∧
    ModifiesOnly (Overlap P.toNat 64) t.memory t'.memory ∧
    ∀ j, j < 8 → rd t'.memory (P + BitVec.ofNat 64 (8 * j)) = digit as j
  have step : ∀ (k : Nat) (e : ExpHOL 64) (rest : ProgHOL 64), k < 8 →
      (∀ t' : State σ, t'.locals = t.locals → ev t' e = some (.val (.word (digit as k)))) →
      HoareG σ X (U2D t P as (k + 1)) rest (fun _ t' => Fin t') →
      HoareG σ X (U2D t P as k) (.seq (.store (offP (nm "p") (8 * k)) e) rest)
        (fun _ t' => Fin t') := fun k e rest hk he hr =>
    hoareG_seq (hoareG_u2dStep hA hk hP hp he) (fun _ _ _ hr' _ h => absurd h.1 hr')
      (hoareG_pre hr fun _ _ h => h.2)
  have h0 : U2D t P as 0 t := ⟨rfl, rfl, fun _ _ => rfl, fun j hj => absurd hj (by omega)⟩
  have hev : ∀ j, j < 4 → ∀ t' : State σ, t'.locals = t.locals →
      ev t' (.op .and [.rfield j (lv (nm "a")), cw 4294967295]) =
        some (.val (.word (digit as (2 * j)))) ∧
      ev t' (.shift .lsr (.rfield j (lv (nm "a"))) (cw 32)) =
        some (.val (.word (digit as (2 * j + 1)))) := fun j hj t' h' =>
    ⟨ev_digit_even (by omega) (by rw [h']; exact ha), ev_digit_odd (by omega) (by rw [h']; exact ha)⟩
  have hfin : HoareG σ X (U2D t P as 0) u2dBody (fun _ t' => Fin t') := by
    unfold u2dBody
    refine step 0 _ _ (by decide) (fun t' h => (hev 0 (by decide) t' h).1) ?_
    refine step 1 _ _ (by decide) (fun t' h => (hev 0 (by decide) t' h).2) ?_
    refine step 2 _ _ (by decide) (fun t' h => (hev 1 (by decide) t' h).1) ?_
    refine step 3 _ _ (by decide) (fun t' h => (hev 1 (by decide) t' h).2) ?_
    refine step 4 _ _ (by decide) (fun t' h => (hev 2 (by decide) t' h).1) ?_
    refine step 5 _ _ (by decide) (fun t' h => (hev 2 (by decide) t' h).2) ?_
    refine step 6 _ _ (by decide) (fun t' h => (hev 3 (by decide) t' h).1) ?_
    refine step 7 _ _ (by decide) (fun t' h => (hev 3 (by decide) t' h).2) ?_
    exact hoareG_return fun t' _ h _ _ => ⟨h.2.1, h.2.2.1, h.2.2.2⟩
  exact hfin t ht h0 hg

/-! ## `digits_len` -/

def dlAddr : ExpHOL 64 := .op .add [lv (nm "p"), .panop .mul [.op .sub [lv (nm "n"), cw 1], cw 8]]

def dlBody : ProgHOL 64 :=
  .seq (.while (.cmp .lower (cw 0) (lv (nm "n")))
      (.seq (.ite (.cmp .notEqual (.load .one dlAddr) (cw 0)) (.return (lv (nm "n"))) .skip)
        (.assign .local (nm "n") (.op .sub [lv (nm "n"), cw 1]))))
    (.return (cw 0))

theorem entry_digits_len : fnEntry Guest.Software.guestFn_digits_len =
    (nm "digits_len", [(nm "p", .one), (nm "n", .one)], dlBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_digits_len : guestCode (nm "digits_len") =
    some ([(nm "p", .one), (nm "n", .one)], dlBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 66) (by decide)) ⟨_, rfl⟩
    entry_digits_len

/-- The words at `p + 8 k`, `k ∈ [lo, hi)`, are zero. -/
def ZeroFrom (m : Mem) (P : BitVec 64) (lo hi : Nat) : Prop :=
  ∀ k, lo ≤ k → k < hi → rd m (P + BitVec.ofNat 64 (8 * k)) = 0

theorem dl_ne_false {x y : BitVec 64}
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notEqual x y = false) : x = y := by
  simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using h

theorem dl_off {NN : BitVec 64} (h1 : 1 ≤ NN.toNat) :
    (NN - BitVec.ofNat 64 1) * BitVec.ofNat 64 8 = BitVec.ofNat 64 (8 * (NN.toNat - 1)) := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_mul, toNat_sub1 h1, BitVec.toNat_ofNat, BitVec.toNat_ofNat,
    show (8 : Nat) % 2 ^ 64 = 8 from rfl, Nat.mul_comm]

theorem ev_dlAddr {t : State σ} {P NN : BitVec 64}
    (hp : t.locals.lookup (nm "p") = some (.val (.word P)))
    (hn : t.locals.lookup (nm "n") = some (.val (.word NN))) (h1 : 1 ≤ NN.toNat) :
    ev t dlAddr = some (.val (.word (P + BitVec.ofNat 64 (8 * (NN.toNat - 1))))) := by
  unfold dlAddr
  rw [ev_add2 (ev_lw hp) (ev_mul2 (ev_sub2 (ev_lw hn) (ev_cw _ 1)) (ev_cw _ 8)), dl_off h1]

/-- What `digits_len(P, N)` may return. -/
def DLR (P N : BitVec 64) (m : Mem) (v : ValueHOL 64) : Prop :=
  ∃ N' : BitVec 64, v = .val (.word N') ∧ N'.toNat ≤ N.toNat ∧
    (N'.toNat = 0 → ZeroFrom m P 0 N.toNat)

/-- The loop invariant: `n ≤ N` and the words at indices `[n, N)` are zero. -/
def DLI (s0 : State σ) (P N : BitVec 64) (t : State σ) : Prop :=
  t.globals = s0.globals ∧ t.memory = s0.memory ∧
    t.locals.lookup (nm "p") = some (.val (.word P)) ∧
    ∃ NN : BitVec 64, t.locals.lookup (nm "n") = some (.val (.word NN)) ∧ NN.toNat ≤ N.toNat ∧
      ZeroFrom s0.memory P NN.toNat N.toNat

/-- After the test in the loop body. -/
def DLM (s0 : State σ) (P N : BitVec 64) (r : Option (PanSemResultExact 64)) (t : State σ) :
    Prop :=
  PlainR r ∧ t.globals = s0.globals ∧ t.memory = s0.memory ∧
    (r = none → t.locals.lookup (nm "p") = some (.val (.word P)) ∧
      ∃ NN : BitVec 64, t.locals.lookup (nm "n") = some (.val (.word NN)) ∧
      1 ≤ NN.toNat ∧ NN.toNat ≤ N.toNat ∧ ZeroFrom s0.memory P (NN.toNat - 1) N.toNat) ∧
    ∀ v, r = some (.returned v) → DLR P N s0.memory v

/-- After the loop. -/
def DLQ (s0 : State σ) (P N : BitVec 64) (r : Option (PanSemResultExact 64)) (t : State σ) :
    Prop :=
  t.globals = s0.globals ∧ t.memory = s0.memory ∧
    (r = none → ZeroFrom s0.memory P 0 N.toNat) ∧
    ∀ v, r = some (.returned v) → DLR P N s0.memory v

theorem hoareG_dlTest {s0 : State σ} {P N : BitVec 64} :
    HoareG σ X (fun t => DLI s0 P N t ∧ CondTrue t (.cmp .lower (cw 0) (lv (nm "n"))))
      (.ite (.cmp .notEqual (.load .one dlAddr) (cw 0)) (.return (lv (nm "n"))) .skip)
      (DLM s0 P N) := by
  refine hoareG_ite ?_ ?_
  · refine hoareG_return fun t _ h v hv => ?_
    obtain ⟨⟨⟨hg, hm, hp, NN, hn, hNN, -⟩, w, hw, hw0⟩, -⟩ := h
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_cw] at hx
    cases hx
    rw [ev_lw hn] at hy
    cases hy
    have h1 := lower_true hxy
    rw [BitVec.toNat_ofNat] at h1
    rw [ev_lw hn] at hv
    cases hv
    exact ⟨Or.inr ⟨_, rfl⟩, hg, hm, (fun h => nomatch h), fun v hv => by
      cases hv
      exact ⟨NN, rfl, hNN, fun h => absurd h (by omega)⟩⟩
  · refine hoareG_skip fun t _ h => ?_
    obtain ⟨⟨⟨hg, hm, hp, NN, hn, hNN, hz⟩, w, hw, hw0⟩, hc⟩ := h
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_cw] at hx
    cases hx
    rw [ev_lw hn] at hy
    cases hy
    have h1 := lower_true hxy
    rw [BitVec.toNat_ofNat] at h1
    have h1' : 1 ≤ NN.toNat := by omega
    obtain ⟨x', y', hx', hy', hxy'⟩ := cmp_false hc
    obtain ⟨a, ha, -, hv⟩ := ev_load_one hx'
    rw [ev_dlAddr hp hn h1'] at ha
    cases ha
    rw [ev_cw] at hy'
    cases hy'
    have hx0 := dl_ne_false hxy'
    subst hx0
    have hrd : rd s0.memory (P + BitVec.ofNat 64 (8 * (NN.toNat - 1))) = 0 := by
      rw [← hm, rd, ← ValueHOL.val.inj hv]
      rfl
    refine ⟨Or.inl rfl, hg, hm, fun _ => ⟨hp, NN, hn, h1', hNN, fun k hk1 hk2 => ?_⟩,
      (fun _ h => nomatch h)⟩
    by_cases hk : k = NN.toNat - 1
    · subst hk; exact hrd
    · exact hz k (by omega) hk2

theorem hoareG_dlLoop {s0 : State σ} {P N : BitVec 64} :
    HoareG σ X (DLI s0 P N)
      (.while (.cmp .lower (cw 0) (lv (nm "n")))
        (.seq (.ite (.cmp .notEqual (.load .one dlAddr) (cw 0)) (.return (lv (nm "n"))) .skip)
          (.assign .local (nm "n") (.op .sub [lv (nm "n"), cw 1]))))
      (DLQ s0 P N) := by
  refine hoareG_while (fun _ h => h) ?_ ?_
  · refine hoareG_seq hoareG_dlTest ?_ ?_
    · intro r t _ hr _ h
      obtain ⟨hpl, hg, hm, -, hret⟩ := h
      rcases hpl with h0 | ⟨v, rfl⟩
      · exact absurd h0 hr
      · exact ⟨(fun h => nomatch h), (fun h => nomatch h), (fun h => nomatch h),
          fun _ _ _ _ => ⟨hg, hm, (fun h => nomatch h), hret⟩⟩
    · refine hoareG_assign fun t _ h v hv _ => ?_
      obtain ⟨-, hg, hm, hnn, -⟩ := h
      obtain ⟨hp, NN, hn, h1, hle, hz⟩ := hnn rfl
      rw [ev_sub2 (ev_lw hn) (ev_cw _ 1)] at hv
      cases hv
      have hI : DLI s0 P N (setVarHOLFinite (nm "n") (.val (.word (NN - BitVec.ofNat 64 1))) t) := by
        refine ⟨hg, hm, ?_, _, lk_set_self _ _ _, ?_, ?_⟩
        · rw [lk_set_ne _ _ (by decide)]; exact hp
        · rw [toNat_sub1 h1]; omega
        · rw [toNat_sub1 h1]; exact hz
      exact ⟨fun _ => hI, (fun h => nomatch h), (fun h => nomatch h), (fun _ h => nomatch h)⟩
  · intro t _ h h0
    obtain ⟨hg, hm, -, NN, hn, -, hz⟩ := h
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false h0
    rw [ev_cw] at hx
    cases hx
    rw [ev_lw hn] at hy
    cases hy
    have h1 := lower_false hxy
    rw [BitVec.toNat_ofNat] at h1
    exact ⟨hg, hm, fun _ k _ hk => hz k (by omega) hk, (fun _ h => nomatch h)⟩

/-- What `digits_len` returns, for the arguments `vs`. -/
def DLRet (vs : List (ValueHOL 64)) (m : Mem) (v : ValueHOL 64) : Prop :=
  ∀ P N : BitVec 64, vs = [.val (.word P), .val (.word N)] → DLR P N m v

theorem funSpec_digits_len (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "digits_len") (fun vs s r t => Good (some r) →
      t.globals = s.globals ∧ t.memory = s.memory ∧ ∀ v, r = .returned v → DLRet vs s.memory v) := by
  refine funSpecG_of_hoareG fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_digits_len (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hB'
  intro t ht ht0 hg
  subst ht0
  have hI : DLI t P N t := ⟨rfl, rfl, by rw [hloc]; exact hla, N, by rw [hloc]; exact hlb,
    Nat.le_refl _, fun k h1 h2 => absurd h2 (by omega)⟩
  have hseq : HoareG σ X (DLI t P N) dlBody (DLQ t P N) := by
    unfold dlBody
    refine hoareG_seq hoareG_dlLoop (fun _ _ _ _ _ h => h) ?_
    refine hoareG_return fun t' _ h v hv => ?_
    obtain ⟨hg', hm', hz, -⟩ := h
    rw [ev_cw] at hv
    cases hv
    exact ⟨hg', hm', (fun h => nomatch h), fun v hv => by
      cases hv
      exact ⟨_, rfl, by rw [BitVec.toNat_ofNat]; omega, fun _ => hz rfl⟩⟩
  have hq := hseq t ht hI hg
  intro r' hr'
  rw [hr'] at hq
  obtain ⟨hg', hm', -, hret⟩ := hq
  refine ⟨hg', hm', fun v hv P' N' hvs => ?_⟩
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  exact hret v (by rw [hv])

end InitECandidate.Solver.MemSafe.Helpers
