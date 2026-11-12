import InitECandidate.Solver.MemSafe.Wg.Csr5
import InitECandidate.Solver.MemSafe.Wg.Loop

/-!
# Wg: `process_general_purpose_requests`, kit (loops over any bound, loads of arbitrary words)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- **The counter loop over any bound.** The body holds for `iv < N` (so `N < 2^63` and `iv + 1 < 2^63`); at exit some `P iv` holds. -/
theorem hoare_cnt2 {P : BitVec 64 → State σ → Prop} {ci cn : MlS} {N : BitVec 64} {body : ProgHOL 64}
    (hclk : ∀ iv s, P iv s → P iv (decClockHOLFinite s))
    (hval : ∀ iv s, P iv s → s.locals.lookup ci = some (.val (.word iv)) ∧ s.locals.lookup cn = some (.val (.word N)))
    (hbody : ∀ iv : BitVec 64, iv.toNat < N.toNat → N.toNat < 2 ^ 63 →
      Hoare σ guestCtx (P iv) body (fun r t => r = none ∧ P (iv + BitVec.ofNat 64 1) t)) :
    Hoare σ guestCtx (P (BitVec.ofNat 64 0)) (.while (.cmp .less (lv ci) (lv cn)) body)
      (fun r t => r = none ∧ ∃ iv, P iv t) := by
  let I : State σ → Prop := fun s => ∃ iv : BitVec 64, iv.toNat < 2 ^ 63 ∧ P iv s
  have hval' : ∀ (iv : BitVec 64) (s : State σ) (x y : BitVec 64), P iv s → ev s (lv ci) = some (.val (.word x)) →
      ev s (lv cn) = some (.val (.word y)) → x = iv ∧ y = N := by
    intro iv s x y hp hx hy
    obtain ⟨l1, l2⟩ := hval iv s hp
    have e1 : ev s (lv ci) = some (.val (.word iv)) := l1
    have e2 : ev s (lv cn) = some (.val (.word N)) := l2
    rw [e1] at hx; rw [e2] at hy
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx hy
    exact ⟨hx.symm, hy.symm⟩
  have hlt_of : ∀ x y : BitVec 64, x.toNat < 2 ^ 63 →
      Flapjack.Compiler.Encoders.Asm.wordCmpHOL .less x y = true → y.toNat < 2 ^ 63 ∧ x.toNat < y.toNat := by
    intro x y hx h
    simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess, hx,
      if_true] at h
    by_cases hy : y.toNat < 2 ^ 63
    · simp only [hy, if_true, decide_eq_true_eq] at h
      exact ⟨hy, h⟩
    · simp only [hy, if_false] at h; cases h
  refine hoare_pre (P := I) (hoare_while (I := I) ?_ ?_ ?_) ?_
  · rintro s ⟨iv, hiv, hp⟩
    exact ⟨iv, hiv, hclk iv s hp⟩
  · refine hoare_pre (hoare_exists (P := fun (iv : BitVec 64) s => (iv.toNat < 2 ^ 63 ∧ P iv s) ∧
      CondTrue s (.cmp .less (lv ci) (lv cn))) ?_) (fun s _ ⟨⟨iv, hiv, hp⟩, hc⟩ => ⟨iv, ⟨hiv, hp⟩, hc⟩)
    intro iv s hs ⟨⟨hiv, hp⟩, hc⟩ ht
    obtain ⟨w', hw, hne⟩ := hc
    obtain ⟨x, y, hx, hy, hcmp⟩ := cmp_true hw hne
    obtain ⟨rfl, rfl⟩ := hval' iv s x y hp hx hy
    obtain ⟨hy63, hlt⟩ := hlt_of x y hiv hcmp
    obtain ⟨hr, hp'⟩ := hbody x hlt hy63 s hs hp ht
    refine ⟨fun _ => ⟨x + BitVec.ofNat 64 1, by rw [add_one_toNat hlt]; omega, hp'⟩, fun h => ?_, fun h => ?_, fun v h => ?_⟩
    all_goals (rw [hr] at h; cases h)
  · intro s _ ⟨iv, hiv, hp⟩ hc
    exact ⟨rfl, iv, hp⟩
  · intro s _ hp
    exact ⟨BitVec.ofNat 64 0, by simp, hp⟩

section dl
variable {E : EbE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

/-- `var n = lds a; body` where the loaded word is arbitrary: the continuation holds for every word. -/
theorem hdec_ld {n : MlS} {a : ExpHOL 64} {body : ProgHOL 64} (hQT : ResIns n QT)
    (hk : ∀ w : BitVec 64, Hoare σ guestCtx (PA E (En.set n (.val (.word w))) S) body QT) :
    Hoare σ guestCtx (PA E En S) (.dec n .one (.load .one a) body) QT := by
  refine hdecK hQT fun s hs hP v hv hsh => ?_
  obtain ⟨d, rfl⟩ := Eb.ev_load_word hv
  exact hoare_pre (hk d) fun t _ ht => by subst ht; exact pa_set hP n _

end dl

end InitECandidate.Solver.MemSafe.Wg
