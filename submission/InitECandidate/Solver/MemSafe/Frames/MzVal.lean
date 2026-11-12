import InitECandidate.Solver.MemSafe.Frames.LstNew
import InitECandidate.Solver.Spec.Fq12.MemFp

/-!
# `memzero` zeroes its buffer

**`funSpec_memzeroZ`**: a returning `memzero(D, N)` with `D` and `N` 8-aligned and `N < 2^63`
leaves the word `0` in every aligned cell `D + j` (`j % 8 = 0`, `j < N`).

With `D` aligned the word loops (32- and 8-byte steps) run and leave the counter at `N`
(`N % 8 = 0`), so the byte loops do not run. The loop invariant `ZJ` says the aligned cells
below the counter (plus the offsets stored so far in the current block) hold `0`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Fq12

variable {σ : Type} {X : Ctx 64}

/-- The word-loop state: locals, counter `iv ≤ N` (8-aligned), and the aligned cells below
`iv + c` are zero. -/
def ZJ (D N iv : BitVec 64) (c : Nat) (t : State σ) : Prop :=
  t.locals.lookup (nm "dst") = some (.val (.word D)) ∧
  t.locals.lookup (nm "n") = some (.val (.word N)) ∧
  t.locals.lookup (nm "i") = some (.val (.word iv)) ∧ iv.toNat % 8 = 0 ∧ iv.toNat ≤ N.toNat ∧
  ∀ j, j % 8 = 0 → j < iv.toNat + c → t.memory (D + BitVec.ofNat 64 j) = .word 0

theorem hoare_stZ {D N iv : BitVec 64} {c : Nat} (hc8 : c % 8 = 0)
    (hb : iv.toNat + c + 8 ≤ N.toNat) :
    Hoare σ X (ZJ D N iv c) (.store (addrE c) (cw 0))
      (fun r t => r = none ∧ ZJ D N iv (c + 8) t) := by
  have hN := N.isLt
  refine hoare_store fun t _ ⟨hd, hn, hi, h8, hle, hz⟩ w val mem hw hval hmem => ?_
  rw [ev_addrE c hd hi (by omega)] at hw
  cases hw
  rw [ev_cw] at hval
  cases hval
  have hflat : flattenHOL (ValueHOL.val (HolWordLab.word (BitVec.ofNat 64 0)) : ValueHOL 64) =
      [.word (BitVec.ofNat 64 0)] := by rw [flattenHOL]
  rw [hflat] at hmem
  obtain ⟨-, rfl⟩ := stores_one hmem
  refine ⟨rfl, hd, hn, hi, h8, hle, fun j hj8 hj => ?_⟩
  show (if D + BitVec.ofNat 64 j = D + BitVec.ofNat 64 (iv.toNat + c) then _ else _) = _
  split
  · rfl
  · rename_i hne
    refine hz j hj8 ?_
    by_contra hc
    exact hne (by rw [show j = iv.toNat + c by omega])

theorem hoare_incZ {D N iv : BitVec 64} {step : Nat} (hs8 : step % 8 = 0)
    (hb : iv.toNat + step ≤ N.toNat) :
    Hoare σ X (ZJ D N iv step) (stRun step [])
      (fun r t => r = none ∧ ZJ D N (iv + BitVec.ofNat 64 step) 0 t) := by
  have hN := N.isLt
  have hst : (iv + BitVec.ofNat 64 step).toNat = iv.toNat + step := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := step) (by omega),
      Nat.mod_eq_of_lt (by omega)]
  refine hoare_assign fun t _ ⟨hd, hn, hi, h8, hle, hz⟩ v hv _ => ?_
  rw [ev_add2 (ev_lw hi) (ev_cw _ step)] at hv
  cases hv
  refine ⟨rfl, by rw [lk_set_ne _ _ (by decide)]; exact hd,
    by rw [lk_set_ne _ _ (by decide)]; exact hn, lk_set_self _ _ _, by rw [hst]; omega,
    by rw [hst]; exact hb, fun j hj8 hj => ?_⟩
  rw [hst] at hj
  exact hz j hj8 (by omega)

/-- A block of zero word stores at offsets `c, c + 8, …` (`n` of them, ending at `step`). -/
theorem hoare_runZ {D N iv : BitVec 64} {step : Nat} (hs8 : step % 8 = 0)
    (hb : iv.toNat + step ≤ N.toNat) :
    ∀ (n c : Nat), c % 8 = 0 → c + 8 * n = step →
      Hoare σ X (ZJ D N iv c) (stRun step ((List.range' c n 8).map zw))
        (fun r t => r = none ∧ ZJ D N (iv + BitVec.ofNat 64 step) 0 t)
  | 0, c, _, hcn => by
      have : c = step := by omega
      subst this
      exact hoare_incZ hs8 hb
  | n + 1, c, hc8, hcn => by
      show Hoare σ X (ZJ D N iv c) (.seq (.store (addrE c) (cw 0))
        (stRun step ((List.range' (c + 8) n 8).map zw))) _
      refine hoare_seq (hoare_stZ hc8 (by omega)) (fun r t _ hr _ h => absurd h.1 hr) ?_
      exact hoare_pre (hoare_runZ hs8 hb n (c + 8) (by omega) (by omega)) (fun t _ h => h.2)

theorem guard_ge {D N iv : BitVec 64} {c : Nat} {t : State σ} {step : Nat} (hs : step ≤ 32)
    (hN : N.toNat < 2 ^ 63) (hz : ZJ D N iv c t)
    (hc : CondTrue t (.cmp .notLower (lv (nm "n")) (.op .add [lv (nm "i"), cw step]))) :
    iv.toNat + step ≤ N.toNat := by
  obtain ⟨-, hn, hi, -, hle, -⟩ := hz
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hn] at hx; cases hx
  rw [ev_add2 (ev_lw hi) (ev_cw _ step)] at hy; cases hy
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Bool.not_eq_true',
    decide_eq_false_iff_not, BitVec.lt_def, BitVec.toNat_add, BitVec.toNat_ofNat] at hxy
  rw [Nat.mod_eq_of_lt (a := step) (by omega), Nat.mod_eq_of_lt (by omega)] at hxy
  omega

theorem guard_ge_false {D N iv : BitVec 64} {c : Nat} {t : State σ} {step : Nat} (hs : step ≤ 32)
    (hN : N.toNat < 2 ^ 63) (hz : ZJ D N iv c t)
    (hc : ev t (.cmp .notLower (lv (nm "n")) (.op .add [lv (nm "i"), cw step])) =
      some (.val (.word 0))) :
    N.toNat < iv.toNat + step := by
  obtain ⟨-, hn, hi, -, hle, -⟩ := hz
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
  rw [ev_lw hn] at hx; cases hx
  rw [ev_add2 (ev_lw hi) (ev_cw _ step)] at hy; cases hy
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Bool.not_eq_false',
    decide_eq_true_eq, BitVec.lt_def, BitVec.toNat_add, BitVec.toNat_ofNat] at hxy
  rw [Nat.mod_eq_of_lt (a := step) (by omega), Nat.mod_eq_of_lt (by omega)] at hxy
  omega

/-- A word loop keeps `ZJ` (at block offset `0`). -/
theorem hoare_loopZ {D N : BitVec 64} {step n : Nat} (hs8 : step % 8 = 0) (hs : step ≤ 32)
    (hn : 8 * n = step) (hN : N.toNat < 2 ^ 63) :
    Hoare σ X (fun t => ∃ iv, ZJ D N iv 0 t) (stLoop step ((List.range' 0 n 8).map zw))
      (fun r t => r = none ∧ ∃ iv, ZJ D N iv 0 t ∧ N.toNat < iv.toNat + step) := by
  refine hoare_while (fun s ⟨iv, h⟩ => ⟨iv, h⟩) ?_ ?_
  · intro s hs' ⟨⟨iv, hz⟩, hc⟩ ht
    have hb := guard_ge hs hN hz hc
    have H := hoare_runZ (X := X) hs8 hb n 0 rfl (by omega) s hs' hz ht
    obtain ⟨hr, hz'⟩ := H
    rw [hr]
    exact ⟨fun _ => ⟨_, hz'⟩, nofun, nofun, fun _ => nofun⟩
  · intro s _ ⟨iv, hz⟩ hc
    exact ⟨rfl, iv, hz, guard_ge_false hs hN hz hc⟩

/-- The tail: the byte loops do not run once the counter is `N`. -/
theorem hoare_tailZ {D N : BitVec 64} (hN : N.toNat < 2 ^ 63) :
    Hoare σ X (ZJ D N N 0)
      (.seq (stLoop 8 [zb 0, zb 1, zb 2, zb 3, zb 4, zb 5, zb 6, zb 7])
        (.seq (stLoop1 [zb 0]) (.return (cw 0))))
      (fun r t => ∀ v, r = some (.returned v) →
        ∀ j, j % 8 = 0 → j < N.toNat → t.memory (D + BitVec.ofNat 64 j) = .word 0) := by
  refine hoare_seq (R := fun r t => r = none ∧ ZJ D N N 0 t) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_while (fun s h => h) ?_ (fun s _ h _ => ⟨rfl, h⟩)
    intro s _ ⟨hz, hc⟩ _
    have := guard_ge (by omega) hN hz hc
    omega
  refine hoare_seq (R := fun r t => r = none ∧ ZJ D N N 0 t) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_pre (hoare_while (fun s h => h) ?_ (fun s _ h _ => ⟨rfl, h⟩)) (fun t _ h => h.2)
    intro s _ ⟨⟨_, hn, hi, _⟩, hc⟩ _
    obtain ⟨w, hw, hw0⟩ := hc
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lw hi] at hx; cases hx
    rw [ev_lw hn] at hy; cases hy
    have := lower_true hxy
    omega
  · refine hoare_return fun t _ h v _ v' hv' j hj8 hj => ?_
    exact h.2.2.2.2.2.2 j hj8 (by omega)

theorem and7_eq {D : BitVec 64} (h : D.toNat % 8 = 0) :
    D &&& (BitVec.ofNat 64 7 &&& ~~~0) = 0 := by
  have h7 : BitVec.ofNat 64 7 &&& ~~~0 = BitVec.ofNat 64 7 := by decide
  rw [h7]
  apply BitVec.eq_of_toNat_eq
  have h0 : (0 : BitVec 64).toNat = 0 := rfl
  rw [BitVec.toNat_and, BitVec.toNat_ofNat, h0]
  have : (7 : Nat) = 2 ^ 3 - 1 := rfl
  rw [Nat.mod_eq_of_lt (by decide : 7 < 2 ^ 64), this, Nat.and_two_pow_sub_one_eq_mod]
  omega

/-- What a returning `memzero(D, N)` leaves in its buffer. -/
def MzZ (vs : List (ValueHOL 64)) (t : State σ) : Prop :=
  ∀ D N : BitVec 64, vs = [.val (.word D), .val (.word N)] → D.toNat % 8 = 0 →
    N.toNat % 8 = 0 → N.toNat < 2 ^ 63 →
    ∀ j, j % 8 = 0 → j < N.toNat → t.memory (D + BitVec.ofNat 64 j) = .word 0

/-- **`memzero` zeroes its aligned buffer.** -/
theorem funSpec_memzeroZ (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memzero") (fun vs _ r t => ∀ v, r = .returned v → MzZ vs t) := by
  have H := funSpec_of_hoare (σ := σ) (X := X) (f := nm "memzero")
    (R := fun vs _ _ t => MzZ vs t) ?_
  · intro vs body callee rs hl s hs hloc r hr v hv
    exact H vs body callee rs hl s hs hloc r hr v hv
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA, hB, hla, hlb⟩ := lookupCode_two Fq12.code_memzero (by decide) hl
  obtain ⟨dst, rfl⟩ := val_of_shapeEq_one hA
  obtain ⟨n, rfl⟩ := val_of_shapeEq_one hB
  by_cases hpre : dst.toNat % 8 = 0 ∧ n.toNat % 8 = 0 ∧ n.toNat < 2 ^ 63
  swap
  · intro s _ _ _ v _ D N hDN hD hN hN'
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hDN
    obtain ⟨rfl, rfl⟩ := hDN
    exact absurd ⟨hD, hN, hN'⟩ hpre
  obtain ⟨hD8, hN8, hN⟩ := hpre
  have hd0 : s0.locals.lookup (nm "dst") = some (.val (.word dst)) := by rw [hloc]; exact hla
  have hn0 : s0.locals.lookup (nm "n") = some (.val (.word n)) := by rw [hloc]; exact hlb
  refine hoare_dec fun s _ hs v hv _ => ?_
  subst s
  cases hv
  have hz0 : ZJ dst n (BitVec.ofNat 64 0) 0 (setVarHOLFinite (nm "i")
      (.val (.word (BitVec.ofNat 64 0))) s0) :=
    ⟨by rw [lk_set_ne _ _ (by decide)]; exact hd0, by rw [lk_set_ne _ _ (by decide)]; exact hn0,
      lk_set_self _ _ _, by simp, by simp, fun j _ hj => by simp at hj⟩
  have hpost : ∀ (r : Option (PanSemResultExact 64)) (t : State σ), (∀ v, r = some (.returned v) →
      ∀ j, j % 8 = 0 → j < n.toNat → t.memory (dst + BitVec.ofNat 64 j) = .word 0) →
      ∀ v, r = some (.returned v) → MzZ [.val (.word dst), .val (.word n)]
        { t with locals := t.locals.resVarEq (nm "i", s0.locals.lookup (nm "i")) } := by
    intro r t h v hv D N hDN _ _ _ j hj8 hj
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hDN
    obtain ⟨rfl, rfl⟩ := hDN
    exact h v hv j hj8 hj
  refine hoare_post ?_ (fun r t _ _ h => hpost r t h)
  refine hoare_pre (P := ZJ dst n (BitVec.ofNat 64 0) 0) ?_ (fun t _ ht => by subst ht; exact hz0)
  refine hoare_seq (R := fun r t => r = none ∧ ZJ dst n n 0 t) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_pre (P := fun t => ∃ iv, ZJ dst n iv 0 t) ?_ (fun t _ h => ⟨_, h.1⟩)
      refine hoare_seq (hoare_loopZ (n := 4) (by decide) (by decide) rfl hN)
        (fun r t _ hr _ h => absurd h.1 hr) ?_
      refine hoare_pre (P := fun t => ∃ iv, ZJ dst n iv 0 t)
        (hoare_post (hoare_loopZ (n := 1) (by decide) (by decide) rfl hN) ?_)
        (fun t _ ⟨_, iv, hz, _⟩ => ⟨iv, hz⟩)
      intro r t _ _ ⟨hr, iv, hz, hlt⟩
      refine ⟨hr, ?_⟩
      obtain ⟨hd, hn', hi, h8, hle, hzz⟩ := hz
      have hiv : iv = n := BitVec.eq_of_toNat_eq (by omega)
      subst hiv
      exact ⟨hd, hn', hi, h8, hle, hzz⟩
    · intro s _ ⟨⟨hd, _⟩, hc⟩ _
      exfalso
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_op2 (ev_lw hd) (ev_cw _ 7)] at hx
      rw [ev_cw] at hy
      cases hy
      have hx' : x = dst &&& (BitVec.ofNat 64 7 &&& ~~~0) := by
        revert hx
        show (match some (dst &&& (BitVec.ofNat 64 7 &&& ~~~0)) with
          | some a => some (ValueHOL.val (HolWordLab.word a)) | none => none) =
            some (.val (.word x)) → _
        intro h
        simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
        exact h.symm
      rw [hx', and7_eq hD8] at hxy
      exact equal_false hxy rfl
  · exact hoare_pre (hoare_tailZ hN) (fun t _ h => h.2)

end InitECandidate.Solver.MemSafe.Frames
