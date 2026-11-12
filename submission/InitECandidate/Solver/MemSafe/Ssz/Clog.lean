import InitECandidate.Solver.MemSafe.Helpers.PureF
import InitECandidate.Solver.Spec.Rlp
import Guest.SoftwareAst

set_option autoImplicit false

/-!
# `ceil_log2`: the value

```
fun 1 ceil_log2(1 n) { var d = 0; while (1 << d) <+ n { d = d + 1; } return d; }
```

`CLog c K`: `K < 64` is the least `d` with `c ≤ 2 ^ d`. **`funSpec_ceil_log2`**: on the word `c`
(`c < 2^64`), every good result is the return of `K`; with `Helpers.PureSpec` (memory and globals
kept) this is **`funSpec_ceil_log2_val`**.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Ssz
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- `K` is the least `d < 64` with `c ≤ 2 ^ d`. -/
def CLog (c K : Nat) : Prop := K < 64 ∧ c ≤ 2 ^ K ∧ ∀ i < K, 2 ^ i < c

instance (c K : Nat) : Decidable (CLog c K) := by unfold CLog; infer_instance

def clCond : ExpHOL 64 := .cmp .lower (.shift .lsl (cw 1) (lv (nm "d"))) (lv (nm "n"))

def clBody : ProgHOL 64 :=
  .dec (nm "d") .one (cw 0)
    (.seq (.while clCond (.assign .local (nm "d") (.op .add [lv (nm "d"), cw 1])))
      (.return (lv (nm "d"))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_ceil_log2 : fnEntry Guest.Software.guestFn_ceil_log2 =
    (nm "ceil_log2", [(nm "n", .one)], clBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_ceil_log2 : guestCode (nm "ceil_log2") = some ([(nm "n", .one)], clBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 36) (by decide)) ⟨_, rfl⟩
    entry_ceil_log2

theorem ofNat_toNat_lt {x : Nat} (h : x < 2 ^ 64) : (BitVec.ofNat 64 x).toNat = x := by
  rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt h

/-- The condition at `d = i`, `n = c`. -/
theorem ev_clCond {s : State σ} {c i : Nat}
    (hn : s.locals.lookup (nm "n") = some (.val (.word (BitVec.ofNat 64 c))))
    (hd : s.locals.lookup (nm "d") = some (.val (.word (BitVec.ofNat 64 i)))) (hi : i < 64) :
    ev s clCond = some (.val (.word (if wordCmpHOL .lower ((1 : BitVec 64) <<< i) (BitVec.ofNat 64 c) then 1
      else 0))) := by
  have hi' : (BitVec.ofNat 64 i).toNat = i := ofNat_toNat_lt (by omega)
  have hs : ev s (.shift .lsl (cw 1) (lv (nm "d"))) = some (.val (.word ((1 : BitVec 64) <<< i))) := by
    rw [ev_shift (ev_cw _ 1) (ev_lw hd), hi']
    simp only [Flapjack.wordShiftHOL]
    rw [if_neg (by omega)]
    rfl
  unfold clCond
  rw [ev_cmp hs (ev_lw hn)]

theorem shl_one_toNat {i : Nat} (hi : i < 64) : ((1 : BitVec 64) <<< i).toNat = 2 ^ i := by
  rw [BitVec.toNat_shiftLeft]
  have h1 : (1 : BitVec 64).toNat = 1 := rfl
  rw [h1, Nat.one_shiftLeft]
  exact Nat.mod_eq_of_lt (Nat.pow_lt_pow_right (by omega) hi)

theorem clCond_true {c i : Nat} (hc : c < 2 ^ 64) (hi : i < 64)
    (h : wordCmpHOL .lower ((1 : BitVec 64) <<< i) (BitVec.ofNat 64 c) = true) : 2 ^ i < c := by
  have := lower_true h
  rw [shl_one_toNat hi, ofNat_toNat_lt hc] at this
  exact this

theorem clCond_false {c i : Nat} (hc : c < 2 ^ 64) (hi : i < 64)
    (h : wordCmpHOL .lower ((1 : BitVec 64) <<< i) (BitVec.ofNat 64 c) = false) : c ≤ 2 ^ i := by
  have := lower_false h
  rw [shl_one_toNat hi, ofNat_toNat_lt hc] at this
  exact this

/-- The loop invariant: `n = c`, `d = i` for some `i ≤ K`. -/
def CLI (c K : Nat) (s : State σ) : Prop :=
  s.locals.lookup (nm "n") = some (.val (.word (BitVec.ofNat 64 c))) ∧
    ∃ i, i ≤ K ∧ s.locals.lookup (nm "d") = some (.val (.word (BitVec.ofNat 64 i)))

/-- After the loop: `d = K`. -/
def CLE (K : Nat) (s : State σ) : Prop :=
  s.locals.lookup (nm "d") = some (.val (.word (BitVec.ofNat 64 K)))

theorem hoareG_clBody {c K : Nat} (hc : c < 2 ^ 64) (hK : CLog c K) :
    HoareG σ X (fun s => s.locals.lookup (nm "n") = some (.val (.word (BitVec.ofNat 64 c))))
      clBody (fun r _ => ∀ r', r = some r' → r' = .returned (.val (.word (BitVec.ofNat 64 K)))) := by
  obtain ⟨hK64, hcK, hlt⟩ := hK
  unfold clBody
  refine hoareG_dec fun s _ hn v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  refine hoareG_seq (R := fun r t => r = none ∧ CLE K t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_pre (P := CLI c K) ?_ (fun t _ ht => ?_)
    rotate_left
    · subst ht
      refine ⟨by rw [lk_set_ne _ _ (by decide)]; exact hn, 0, Nat.zero_le _, ?_⟩
      rw [lk_set_self]
    refine hoareG_while (I := CLI c K) (fun _ h => h) ?_ ?_
    · refine hoareG_assign fun t _ ⟨⟨hn', i, hiK, hd⟩, hct⟩ w hw _ => ?_
      obtain ⟨w', hw', hw0⟩ := condTrue_iff.mp hct
      have hi64 : i < 64 := by omega
      rw [ev_clCond hn' hd hi64] at hw'
      have hcmp : wordCmpHOL .lower ((1 : BitVec 64) <<< i) (BitVec.ofNat 64 c) = true := by
        by_contra hf
        simp only [Bool.not_eq_true] at hf
        rw [hf] at hw'
        simp only [Bool.false_eq_true, if_false, Option.some.injEq, ValueHOL.val.injEq,
          HolWordLab.word.injEq] at hw'
        exact hw0 hw'.symm
      have h2 := clCond_true hc hi64 hcmp
      have hiK' : i < K := by
        rcases Nat.lt_or_ge i K with h | h
        · exact h
        · exact absurd (Nat.lt_of_lt_of_le h2 (Nat.le_trans hcK (Nat.pow_le_pow_right (by omega) h)))
            (Nat.lt_irrefl _)
      rw [ev_add2 (ev_lw hd) (ev_cw _ 1)] at hw
      cases hw
      have he : BitVec.ofNat 64 i + BitVec.ofNat 64 1 = BitVec.ofNat 64 (i + 1) := by
        apply BitVec.eq_of_toNat_eq
        rw [BitVec.toNat_add, ofNat_toNat_lt (by omega), ofNat_toNat_lt (by omega),
          ofNat_toNat_lt (by omega)]
        omega
      refine ⟨fun _ => ⟨?_, i + 1, by omega, ?_⟩, fun h => absurd h (by simp),
        fun h => absurd h (by simp), fun r' h => absurd h (by simp)⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hn'
      · rw [lk_set_self, he]
    · intro t _ ⟨hn', i, hiK, hd⟩ h0
      have hi64 : i < 64 := by omega
      rw [ev_clCond hn' hd hi64] at h0
      have hcmp : wordCmpHOL .lower ((1 : BitVec 64) <<< i) (BitVec.ofNat 64 c) = false := by
        by_contra hf
        simp only [Bool.not_eq_false] at hf
        rw [hf] at h0
        simp only [if_true, Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h0
        exact absurd h0 (by decide)
      have h2 := clCond_false hc hi64 hcmp
      have hiK : i = K := by
        rcases Nat.lt_or_ge i K with h | h
        · exact absurd (Nat.lt_of_lt_of_le (hlt i h) h2) (Nat.lt_irrefl _)
        · omega
      subst hiK
      exact ⟨rfl, hd⟩
  · refine hoareG_return fun t _ ⟨_, hd⟩ v hv => ?_
    rw [ev_lv, hd] at hv
    cases hv
    intro r' hr'
    cases hr'
    rfl

/-- **`ceil_log2(c)` returns `K`.** -/
theorem funSpec_ceil_log2 (hX : X.code.lookup = guestCode) :
    FunSpec σ X (nm "ceil_log2") (fun vs _ r _ => Good (some r) → ∀ c K,
      vs = [.val (.word (BitVec.ofNat 64 c))] → c < 2 ^ 64 → CLog c K →
        r = .returned (.val (.word (BitVec.ofNat 64 K)))) := by
  intro vs body callee rs hl s hs hloc r hr hg c K hvs hc hK
  rw [hX] at hl
  obtain ⟨rfl, -, A, rfl, -, hA⟩ := lookupCode_one code_ceil_log2 hl
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  have H := hoareG_clBody (σ := σ) (X := X) hc hK s hs (by show s.locals.lookup _ = _; rw [hloc]; exact hA)
    (by rw [hr]; exact hg)
  rw [hr] at H
  exact H r rfl

/-- **`ceil_log2(c)` returns `K` and keeps memory and globals.** -/
theorem funSpec_ceil_log2_val (hX : X.code.lookup = guestCode) :
    FunSpec σ X (nm "ceil_log2") (fun vs s r t => Good (some r) → ∀ c K,
      vs = [.val (.word (BitVec.ofNat 64 c))] → c < 2 ^ 64 → CLog c K →
        r = .returned (.val (.word (BitVec.ofNat 64 K))) ∧ t.memory = s.memory ∧
          t.globals = s.globals) := by
  have hP : Helpers.PureSpec σ X (nm "ceil_log2") :=
    Helpers.pureSpec_of (by rw [hX]; exact code_ceil_log2) (by decide)
  refine (FunSpec.and (funSpec_ceil_log2 hX) hP).mono ?_
  intro vs s r t ⟨h1, h2⟩ hg c K hvs hc hK
  obtain ⟨hgl, hm, -⟩ := h2 hg
  exact ⟨h1 hg c K hvs hc hK, hm, hgl⟩

end InitECandidate.Solver.MemSafe.Ssz

#print axioms InitECandidate.Solver.MemSafe.Ssz.funSpec_ceil_log2_val
