import InitECandidate.Solver.MemSafe.Eb.Loop13

/-!
# `execute_block`: the transaction loop (`loop_walk`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

section lw
variable {E : EbE σ} {En : Env} {M : Nat} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem pa_decClock {En : Env} {S : FS} {s : State σ} (h : PA E En S s) : PA E En S (decClockHOLFinite s) :=
  ⟨pb_loc h.1 s.locals (s.clock - 1), h.2⟩

theorem loop_walk (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hPt : HypPt σ M) (hM : 2 ^ 24 + 2 ≤ M)
    {S : FS} {Z : List MlS} {w t r lg rl be0 c0 wd0 ntx0 nwd0 pl0 ptxs0 X : BitVec 64}
    (hled : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 0) (hS : SafeS S) (hT : Tidy Z S)
    (hzt : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hzp : ∀ g ∈ Z, ¬ (ptW.contains g = true))
    (hpl : S (Fct.obj pl0 tPL 136)) (h32 : S (Fct.pcv (pl0 + BitVec.ofNat 64 32) ptxs0))
    (h40 : S (Fct.pcv (pl0 + BitVec.ofNat 64 40) ntx0)) (hEn : En (nm "tx") = none)
    (hntx : En (nm "ntx") = some (.val (.word ntx0)))
    (hnext : Hoare σ guestCtx (PA E (EnL En X ptxs0 ntx0) (SLs S t r ntx0.toNat)) ebS33 QT) :
    Hoare σ guestCtx (PA E (EnL En X ptxs0 0) (SLs S t r 0)) ebS27 QT := by
  have hb50 := hled.bt
  have hnt : ∀ iv, (EnL En X ptxs0 iv) (nm "ntx") = some (.val (.word ntx0)) := fun iv => by
    simp (config := { decide := true }) [EnL, Env.set, hntx]
  have hi : ∀ iv, (EnL En X ptxs0 iv) (nm "i") = some (.val (.word iv)) := fun iv => by
    simp (config := { decide := true }) [EnL, Env.set]
  unfold ebS27
  refine hseqN (P1 := PA E (EnL En X ptxs0 ntx0) (SLs S t r ntx0.toNat)) ?_ hnext
  unfold ebS28
  let I : State σ → Prop := fun s => ∃ iv : BitVec 64, iv.toNat ≤ ntx0.toNat ∧
    PA E (EnL En X ptxs0 iv) (SLs S t r iv.toNat) s
  have hadd : ∀ iv : BitVec 64, iv.toNat < ntx0.toNat → (iv + BitVec.ofNat 64 1).toNat = iv.toNat + 1 := by
    intro iv hlt
    have h1 : (BitVec.ofNat 64 1).toNat = 1 := by decide
    rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]
  refine hoare_pre (P := I) (hoare_while (I := I) ?_ ?_ ?_) ?_
  · rintro s ⟨iv, hiv, hp⟩
    exact ⟨iv, hiv, pa_decClock hp⟩
  · refine hoare_pre (hoare_exists (P := fun (iv : BitVec 64) s => (iv.toNat ≤ ntx0.toNat ∧
      PA E (EnL En X ptxs0 iv) (SLs S t r iv.toNat) s) ∧ CondTrue s (.cmp .less (lv (nm "i")) (lv (nm "ntx")))) ?_)
      (fun s _ ⟨⟨iv, hiv, hp⟩, hc⟩ => ⟨iv, ⟨hiv, hp⟩, hc⟩)
    intro iv
    intro s hs ⟨⟨hiv, hp⟩, hc⟩ ht
    obtain ⟨w', hw, hne⟩ := hc
    obtain ⟨x, y, hx, hy, hcmp⟩ := cmp_true hw hne
    have ex := evI_lv_pa hp (hi iv) _ hx
    have ey := evI_lv_pa hp (hnt iv) _ hy
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at ex ey
    subst ex; subst ey
    have hlt : x.toNat < y.toNat := less_true' (by omega) (by omega) hcmp
    have hbody := loop_body hK hE0 hPt hM hled hS hT hzt hzp hpl h32 h40 hEn hlt s hs hp ht
    obtain ⟨hr, hp'⟩ := hbody
    refine ⟨fun _ => ⟨x + BitVec.ofNat 64 1, by rw [hadd x hlt]; omega, by rw [hadd x hlt]; exact hp'⟩, fun h => ?_, fun h => ?_, fun v h => ?_⟩
    all_goals (rw [hr] at h; cases h)
  · intro s _ ⟨iv, hiv, hp⟩ hc
    obtain ⟨x, y, hx, hy, hcmp⟩ := cmp_false hc
    have ex := evI_lv_pa hp (hi iv) _ hx
    have ey := evI_lv_pa hp (hnt iv) _ hy
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at ex ey
    subst ex; subst ey
    have hge : y.toNat ≤ x.toNat := less_false' (by omega) (by omega) hcmp
    have : x = y := BitVec.eq_of_toNat_eq (by omega)
    subst this
    exact ⟨rfl, hp⟩
  · intro s _ hp
    exact ⟨0, Nat.zero_le _, hp⟩

end lw

end InitECandidate.Solver.MemSafe.Eb
