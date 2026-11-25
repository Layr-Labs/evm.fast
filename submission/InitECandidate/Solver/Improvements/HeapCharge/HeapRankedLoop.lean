import InitECandidate.Solver.Improvements.AcceptedExactWhileCost
import InitECandidate.Solver.Improvements.AcceptedTransactionCountFacts
import InitECandidate.Solver.MemSafe.TxnCost.Bounds
import InitECandidate.Solver.MemSafe.Eb.Cost16
import InitECandidate.Solver.MemSafe.Eb.Loop14

/-! Adapted from the promoted Apache-2.0 Eb.Cost17 cost walk.
The frame hypothesis only requires positive allocation on a continuing transaction. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace HeapRankedLoop
open InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

def frontier {σ : Type} (s : State σ) : Nat := ((ptrsOf s).map Ptrs.hp).getD 0

theorem frontier_bounds {σ : Type} {E : EbE σ} {En : Env} {S : FS} {s : State σ}
    (hp : PA E En S s) : heapBase ≤ frontier s ∧ frontier s ≤ heapEnd := by
  obtain ⟨Γ, p, hr, _⟩ := hp.1
  have hord := ordered_of_G (ebRun_G hr) (ebRun_ptrs hr)
  simpa only [frontier, ebRun_ptrs hr, Option.map_some, Option.getD_some] using
    (show heapBase ≤ p.hp ∧ p.hp ≤ heapEnd from ⟨hord.1, hord.2.1⟩)

section lw17
variable {E : EbE σ} {En : Env} {M : Nat} {QT : Option (PanSemResultExact 64) → State σ → Prop}

/-- The cost of the loop and what follows it. -/
def heapLoopBudget (BT Bn : Nat) : Nat := 11440 * (bLB BT + 1) + Bn

theorem cw_heap_loop_walk {BT Bn : Nat} (hPtC : HypPtCost σ M BT) (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty)
    (hPt : HypPt σ M) (hM : 2 ^ 24 + 2 ≤ M)
    {S : FS} {Z : List MlS} {w t r lg rl be0 c0 wd0 ntx0 nwd0 pl0 ptxs0 X : BitVec 64}
    (hled : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 0) (hS : SafeS S) (hT : Tidy Z S)
    (hzt : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hzp : ∀ g ∈ Z, ¬ (ptW.contains g = true))
    (hpl : S (Fct.obj pl0 tPL 136)) (h32 : S (Fct.pcv (pl0 + BitVec.ofNat 64 32) ptxs0))
    (h40 : S (Fct.pcv (pl0 + BitVec.ofNat 64 40) ntx0)) (hEn : En (nm "tx") = none)
    (hntx : En (nm "ntx") = some (.val (.word ntx0)))
    (hGrowth : ∀ (iv : BitVec 64) (hp0 : Nat), iv.toNat < ntx0.toNat →
      Hoare σ guestCtx (fun s => PA E (EnL En X ptxs0 iv) (SLs S t r iv.toNat) s ∧
        frontier s = hp0) ebS29
        (fun r' u => r' = none ∨ r' = some .continue → hp0 + 22000 ≤ frontier u))
    (hnext : CW (PA E (EnL En X ptxs0 ntx0) (SLs S t r ntx0.toNat)) ebS33 Bn QT) :
    CW (PA E (EnL En X ptxs0 0) (SLs S t r 0)) ebS27 (heapLoopBudget BT Bn) QT := by
  have hb50 := hled.bt24
  have hnt : ∀ iv, (EnL En X ptxs0 iv) (nm "ntx") = some (.val (.word ntx0)) := fun iv => by
    simp (config := { decide := true }) [EnL, Env.set, hntx]
  have hi : ∀ iv, (EnL En X ptxs0 iv) (nm "i") = some (.val (.word iv)) := fun iv => by
    simp (config := { decide := true }) [EnL, Env.set]
  have hH : HN (PA E (EnL En X ptxs0 0) (SLs S t r 0)) ebS28 (PA E (EnL En X ptxs0 ntx0) (SLs S t r ntx0.toNat)) := by
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
     have hbody := (cw_loop_body hPtC hK hE0 hPt hM hled hS hT hzt hzp hpl h32 h40 hEn hlt).2 s hs hp ht
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


  have hadd : ∀ iv : BitVec 64, iv.toNat < ntx0.toNat → (iv + BitVec.ofNat 64 1).toNat = iv.toNat + 1 := by
    intro iv hlt
    have h1 : (BitVec.ofNat 64 1).toNat = 1 := by decide
    rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]
  have hC : Inv.CostP σ guestCtx (PA E (EnL En X ptxs0 0) (SLs S t r 0)) ebS28 (11440 * (bLB BT + 1)) := by
    unfold ebS28
    let I : State σ → Prop := fun s => ∃ iv : BitVec 64, iv.toNat ≤ ntx0.toNat ∧
      PA E (EnL En X ptxs0 iv) (SLs S t r iv.toNat) s
    let μ (s : State σ) := (heapEnd - frontier s) / 22000 + 1
    have hlt_of : ∀ (iv : BitVec 64) (s : State σ), iv.toNat ≤ ntx0.toNat → PA E (EnL En X ptxs0 iv) (SLs S t r iv.toNat) s →
        CondTrue s (.cmp .less (lv (nm "i")) (lv (nm "ntx"))) → iv.toNat < ntx0.toNat := by
      intro iv s hiv hp hc
      obtain ⟨w', hw, hne⟩ := hc
      obtain ⟨x, y, hx, hy, hcmp⟩ := cmp_true hw hne
      have ex := evI_lv_pa hp (hi iv) _ hx
      have ey := evI_lv_pa hp (hnt iv) _ hy
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at ex ey
      subst ex; subst ey
      exact less_true' (by omega) (by omega) hcmp
    refine Inv.CostP.pre (P := I) (AcceptedExactWhileCost.costP_while_exact (I := I) μ 11440 (fun s ⟨iv, hiv, hp⟩ => ⟨iv, hiv, pa_decClock hp⟩)
      (fun s => rfl) ?_ ?_ ?_ ?_ ?_) (fun s _ hp => ⟨0, Nat.zero_le _, hp⟩)
    · intro s hs ⟨⟨iv, hiv, hp⟩, hc⟩ hg
      have hlt := hlt_of iv s hiv hp hc
      exact (cw_loop_body hPtC hK hE0 hPt hM hled hS hT hzt hzp hpl h32 h40 hEn hlt).1 s hs hp hg
    · intro s hs ⟨⟨iv, hiv, hp⟩, hc⟩ ht h
      have hlt := hlt_of iv s hiv hp hc
      obtain ⟨hr, hp'⟩ := (cw_loop_body hPtC hK hE0 hPt hM hled hS hT hzt hzp hpl h32 h40 hEn hlt).2 s hs hp ht
      rcases h with h | h
      · exact ⟨iv + BitVec.ofNat 64 1, by rw [hadd iv hlt]; omega, by rw [hadd iv hlt]; exact hp'⟩
      · rw [hr] at h; cases h
    · intro s _ ⟨iv, hiv, hp⟩ _
      obtain ⟨hl, hu⟩ := frontier_bounds hp
      change 2701131776 ≤ frontier s at hl
      change (2952790016 - frontier s) / 22000 + 1 ≤ 11440
      omega
    · intro s _ _ _
      exact Nat.zero_lt_succ _
    · intro k s hs ⟨⟨iv, hiv, hp⟩, hc, hk⟩ ht h
      have hlt := hlt_of iv s hiv hp hc
      obtain ⟨hr, hp'⟩ := (cw_loop_body hPtC hK hE0 hPt hM hled hS hT hzt hzp hpl h32 h40 hEn hlt).2 s hs hp ht
      have hg := hGrowth iv (frontier s) hlt s hs ⟨hp, rfl⟩ ht h
      obtain ⟨_, hmax⟩ := frontier_bounds hp'
      let u := (s.evaluateHOLFiniteState ebS29).2
      change frontier s + 22000 ≤ frontier u at hg
      change frontier u ≤ 2952790016 at hmax
      change (2952790016 - frontier s) / 22000 + 1 = k at hk
      change (2952790016 - frontier u) / 22000 + 1 < k
      omega
  exact cw_seq ⟨hC, hH⟩ hnext

end lw17

end HeapRankedLoop

#print axioms HeapRankedLoop.cw_heap_loop_walk
