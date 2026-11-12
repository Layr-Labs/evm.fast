import InitECandidate.Solver.Spec.Mpt.Leaves.Slices
import Guest.SoftwareAst

set_option autoImplicit false

/-!
# Bounds on `bit_length64`, `u256_bit_length`, `u256_byte_length`

`bit_length64(x)` halves the remaining width six times (`32, 16, …, 1`): after the step of
shift `s`, `x < 2^s` and `n ≤ 64 - 2 s`, so it returns `n + x ≤ 64`. Hence `u256_bit_length`
returns `≤ 256` and `u256_byte_length` returns `≤ 32`, for every argument.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.WaveHelpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (State)

variable {σ : Type} {X : Ctx 64}

/-- A returned word bounded by `K`. -/
def RetLe (K : Nat) (r : Option (PanSemResultExact 64)) (_ : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ N : BitVec 64, v = .val (.word N) ∧ N.toNat ≤ K

theorem ev_lsr {s : State σ} {a : ExpHOL 64} {x : BitVec 64} (ha : ev s a = some (.val (.word x)))
    {k : Nat} (hk : k < 64) : ev s (.shift .lsr a (cw k)) = some (.val (.word (x >>> k))) := by
  rw [ev_shift ha (ev_cw _ k)]
  have hk' : (BitVec.ofNat 64 k).toNat = k := by rw [BitVec.toNat_ofNat]; omega
  simp only [wordShiftHOL, hk']
  rw [if_neg (by omega)]
  rfl

/-! ## `bit_length64` -/

def blStep (k : Nat) : ProgHOL 64 :=
  .ite (.cmp .notEqual (.shift .lsr (lv (nm "x")) (cw k)) (cw 0))
    (.seq (.assign .local (nm "n") (.op .add [lv (nm "n"), cw k]))
      (.assign .local (nm "x") (.shift .lsr (lv (nm "x")) (cw k))))
    .skip

def blBody : ProgHOL 64 :=
  .dec (nm "n") .one (cw 0)
    (.seq (blStep 32) (.seq (blStep 16) (.seq (blStep 8) (.seq (blStep 4) (.seq (blStep 2)
      (.seq (blStep 1) (.return (.op .add [lv (nm "n"), lv (nm "x")]))))))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_bit_length64 : fnEntry Guest.Software.guestFn_bit_length64 =
    (nm "bit_length64", [(nm "x", .one)], blBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_bit_length64 : guestCode (nm "bit_length64") = some ([(nm "x", .one)], blBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 77) (by decide)) ⟨_, rfl⟩
    entry_bit_length64

/-- The state after the step of width `w`: `x < 2^w`, `n ≤ M`. -/
def BL (w M : Nat) (t : State σ) : Prop :=
  ∃ N V : BitVec 64, t.locals.lookup (nm "n") = some (.val (.word N)) ∧
    t.locals.lookup (nm "x") = some (.val (.word V)) ∧ V.toNat < 2 ^ w ∧ N.toNat ≤ M

theorem bl_step (k M : Nat) (hk : 0 < k) (hk' : k ≤ 32) (hM : M + k < 2 ^ 64) :
    Hoare σ X (BL (2 * k) M) (blStep k) (fun r t => r = none ∧ BL k (M + k) t) := by
  unfold blStep
  refine hoare_ite ?_ ?_
  · refine hoare_seq (R := fun r t => r = none ∧ ∃ N V : BitVec 64,
        t.locals.lookup (nm "n") = some (.val (.word N)) ∧
        t.locals.lookup (nm "x") = some (.val (.word V)) ∧ V.toNat < 2 ^ (2 * k) ∧
        N.toNat ≤ M + k) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_assign fun s _ ⟨⟨N, V, hn, hx, hV, hN⟩, _⟩ v hv _ => ?_
      rw [ev_add2 (ev_lw hn) (ev_cw _ k)] at hv
      cases hv
      have e : (N + BitVec.ofNat 64 k).toNat = N.toNat + k := by
        rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := k) (by omega)]
        omega
      exact ⟨rfl, _, V, lk_set_self _ _ _, by rw [lk_set_ne _ _ (by decide)]; exact hx, hV,
        by rw [e]; omega⟩
    · refine hoare_assign fun s _ ⟨_, N, V, hn, hx, hV, hN⟩ v hv _ => ?_
      rw [ev_lsr (ev_lw hx) (by omega)] at hv
      cases hv
      refine ⟨rfl, N, _, by rw [lk_set_ne _ _ (by decide)]; exact hn, lk_set_self _ _ _, ?_, hN⟩
      rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]
      have : 2 ^ (2 * k) = 2 ^ k * 2 ^ k := by rw [← Nat.pow_add]; congr 1; omega
      rw [this] at hV
      exact Nat.div_lt_of_lt_mul hV
  · refine hoare_skip fun s _ ⟨⟨N, V, hn, hx, hV, hN⟩, hc⟩ => ⟨rfl, N, V, hn, hx, ?_, by omega⟩
    have h0 := notEqual_false (cmp_val_false hc (ev_lsr (ev_lw hx) (by omega)) (ev_cw _ 0))
    have h1 : (V >>> k).toNat = 0 := by rw [h0]; rfl
    rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow] at h1
    have hp : 0 < 2 ^ k := Nat.two_pow_pos k
    exact (Nat.div_eq_zero_iff_lt hp).mp h1

theorem bl_seq {w M : Nat} {p q : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {w' M' : Nat} (hp : Hoare σ X (BL w M) p (fun r t => r = none ∧ BL w' M' t))
    (hq : Hoare σ X (BL w' M') q Q) : Hoare σ X (BL w M) (.seq p q) Q :=
  hoare_seq hp (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre hq fun _ _ h => h.2)

/-- **`bit_length64` returns at most `64`.** -/
theorem funSpec_bit_length64_le (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "bit_length64") (fun _ _ r _ => ∀ v, r = .returned v →
      ∃ N : BitVec 64, v = .val (.word N) ∧ N.toNat ≤ 64) := by
  intro vs body callee rs hl s0 hs0 hloc r hr v hv
  subst hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsA, hA⟩ := lookupCode_one code_bit_length64 hl
  obtain ⟨V, rfl⟩ := val_of_shapeEq_one hsA
  have hx : s0.locals.lookup (nm "x") = some (.val (.word V)) := by rw [hloc]; exact hA
  suffices HH : Hoare σ X (fun t => t = s0) blBody (RetLe 64) by
    have := HH s0 hs0 rfl (by rw [hr]; trivial)
    rw [hr] at this
    exact this _ rfl
  unfold blBody
  refine hoare_dec fun s1 _ hs1 v1 hv1 _ => ?_
  subst s1
  rw [ev_cw] at hv1
  cases hv1
  refine hoare_conseq (Q := RetLe 64) ?_ (fun _ _ h => h) (fun _ _ _ _ h => h)
  refine hoare_pre (P := BL (2 * 32) 0) ?_ fun t _ ht => ?_
  · refine bl_seq (bl_step 32 0 (by decide) (by decide) (by decide)) ?_
    refine bl_seq (w := 2 * 16) (bl_step 16 32 (by decide) (by decide) (by decide)) ?_
    refine bl_seq (w := 2 * 8) (bl_step 8 48 (by decide) (by decide) (by decide)) ?_
    refine bl_seq (w := 2 * 4) (bl_step 4 56 (by decide) (by decide) (by decide)) ?_
    refine bl_seq (w := 2 * 2) (bl_step 2 60 (by decide) (by decide) (by decide)) ?_
    refine bl_seq (w := 2 * 1) (bl_step 1 62 (by decide) (by decide) (by decide)) ?_
    refine hoare_return fun t _ ⟨N, V', hn, hx', hV, hN⟩ w hw => fun w' hw' => ?_
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw'
    subst hw'
    rw [ev_add2 (ev_lw hn) (ev_lw hx')] at hw
    cases hw
    refine ⟨_, rfl, ?_⟩
    rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
    omega
  · subst ht
    exact ⟨_, V, lk_set_self _ _ _, by rw [lk_set_ne _ _ (by decide)]; exact hx, V.isLt, by simp⟩

/-! ## `u256_bit_length`, `u256_byte_length` -/

def ublBranch (j k : Nat) (nk : String) : ProgHOL 64 :=
  .ite (.cmp .notEqual (.rfield j (lv (nm "a"))) (cw 0))
    (.decCall (nm nk) .one (nm "bit_length64") [.rfield j (lv (nm "a"))]
      (.return (.op .add [cw k, lv (nm nk)])))
    .skip

def ublBody : ProgHOL 64 :=
  .seq (ublBranch 3 192 "n3") (.seq (ublBranch 2 128 "n2") (.seq (ublBranch 1 64 "n1")
    (.call none (nm "bit_length64") [.rfield 0 (lv (nm "a"))])))

def ubyBody : ProgHOL 64 :=
  .decCall (nm "n") .one (nm "u256_bit_length") [lv (nm "a")]
    (.return (.shift .lsr (.op .add [lv (nm "n"), cw 7]) (cw 3)))

def shA : ShapeHOL := .comb [.one, .one, .one, .one]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_u256_bit_length : fnEntry Guest.Software.guestFn_u256_bit_length =
    (nm "u256_bit_length", [(nm "a", shA)], ublBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_u256_byte_length : fnEntry Guest.Software.guestFn_u256_byte_length =
    (nm "u256_byte_length", [(nm "a", shA)], ubyBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_u256_bit_length :
    guestCode (nm "u256_bit_length") = some ([(nm "a", shA)], ublBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 78) (by decide)) ⟨_, rfl⟩
    entry_u256_bit_length

theorem code_u256_byte_length :
    guestCode (nm "u256_byte_length") = some ([(nm "a", shA)], ubyBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 79) (by decide)) ⟨_, rfl⟩
    entry_u256_byte_length

theorem ubl_branch (hC : X.code.lookup = guestCode) {j k : Nat} {nk : String} (hk : k ≤ 192)
    {P : State σ → Prop} : Hoare σ X P (ublBranch j k nk) (RetLe 256) := by
  unfold ublBranch
  refine hoare_ite ?_ (hoare_skip fun _ _ _ v h => absurd h (by simp))
  refine hoare_decCallS (funSpec_bit_length64_le hC) fun s _ _ vs _ callee v st hR _ _ => ?_
  obtain ⟨N, rfl, hN⟩ := hR _ rfl
  refine hoare_return fun t _ ht w hw => fun w' hw' => ?_
  subst ht
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw'
  subst hw'
  rw [ev_add2 (ev_cw _ k) (ev_lw (lk_set_self _ _ _))] at hw
  cases hw
  refine ⟨_, rfl, ?_⟩
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := k) (by omega),
    Nat.mod_eq_of_lt (by omega)]
  omega

theorem retLe_seq {K : Nat} {P : State σ → Prop} {p q : ProgHOL 64}
    (hp : Hoare σ X P p (RetLe K)) (hq : Hoare σ X (fun _ => True) q (RetLe K)) :
    Hoare σ X P (.seq p q) (RetLe K) :=
  hoare_seq hp (fun _ _ _ _ _ h => h) (hoare_pre hq fun _ _ _ => trivial)

/-- **`u256_bit_length` returns at most `256`.** -/
theorem funSpec_u256_bit_length_le (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "u256_bit_length") (fun _ _ r _ => ∀ v, r = .returned v →
      ∃ N : BitVec 64, v = .val (.word N) ∧ N.toNat ≤ 256) := by
  intro vs body callee rs hl s0 hs0 hloc r hr v hv
  subst hv
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_u256_bit_length hl
  suffices HH : Hoare σ X (fun t => t = s0) ublBody (RetLe 256) by
    have := HH s0 hs0 rfl (by rw [hr]; trivial)
    rw [hr] at this
    exact this _ rfl
  unfold ublBody
  refine retLe_seq (ubl_branch hC (by decide)) (retLe_seq (ubl_branch hC (by decide))
    (retLe_seq (ubl_branch hC (by decide)) ?_))
  refine hoare_tailCall (funSpec_bit_length64_le hC) fun s _ _ vs _ callee v st hR _ => ?_
  intro w hw
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
  subst hw
  obtain ⟨N, rfl, hN⟩ := hR _ rfl
  exact ⟨N, rfl, by omega⟩

/-- **`u256_byte_length` returns at most `32`.** -/
theorem funSpec_u256_byte_length_le (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "u256_byte_length") (fun _ _ r _ => ∀ v, r = .returned v →
      ∃ N : BitVec 64, v = .val (.word N) ∧ N.toNat ≤ 32) := by
  intro vs body callee rs hl s0 hs0 hloc r hr v hv
  subst hv
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_u256_byte_length hl
  suffices HH : Hoare σ X (fun t => t = s0) ubyBody (RetLe 32) by
    have := HH s0 hs0 rfl (by rw [hr]; trivial)
    rw [hr] at this
    exact this _ rfl
  unfold ubyBody
  refine hoare_decCallS (funSpec_u256_bit_length_le hC) fun s _ _ vs _ callee v st hR _ _ => ?_
  obtain ⟨N, rfl, hN⟩ := hR _ rfl
  refine hoare_return fun t _ ht w hw => fun w' hw' => ?_
  subst ht
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw'
  subst hw'
  rw [ev_lsr (ev_add2 (ev_lw (lk_set_self _ _ _)) (ev_cw _ 7)) (by decide)] at hw
  cases hw
  refine ⟨_, rfl, ?_⟩
  rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow, BitVec.toNat_add, BitVec.toNat_ofNat,
    Nat.mod_eq_of_lt (a := 7) (by decide), Nat.mod_eq_of_lt (by omega)]
  omega

end InitECandidate.Solver.MemSafe.WaveHelpers
