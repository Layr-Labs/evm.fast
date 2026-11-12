import InitECandidate.Solver.MemSafe.Ra.AttKit8

/-!
# `run_attempt`: the empty-transaction check loop (`raS20`)

`while i < ntx { if SLICE_LEN(txs, i) == 0 { throw BlockErr 4 }  i = i + 1 }`: reads only, so the walk state is kept; it runs `ntx` times, `ntx < 2^24`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

section loop
variable {E : EbE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop} {ntx0 : BitVec 64}

theorem cw_loop20 {Bk : Nat} (hnt : ntx0.toNat < 2 ^ 24) (hntx : En (nm "ntx") = some (.val (.word ntx0)))
    (hnext : CW (PA E (En.set (nm "i") (.val (.word ntx0))) S) raS21 Bk QT) :
    CW (PA E (En.set (nm "i") (.val (.word 0))) S) raS20 ((2 ^ 24 + 1) * (0 + 1) + Bk) QT := by
  have hnt' : ∀ iv : BitVec 64, (En.set (nm "i") (.val (.word iv))) (nm "ntx") = some (.val (.word ntx0)) := fun iv => by
    rw [env_set_ne En _ (by decide)]; exact hntx
  have hi : ∀ iv : BitVec 64, (En.set (nm "i") (.val (.word iv))) (nm "i") = some (.val (.word iv)) := fun iv => env_set_self _ _ _
  have hadd : ∀ iv : BitVec 64, iv.toNat < ntx0.toNat → (iv + BitVec.ofNat 64 1).toNat = iv.toNat + 1 := by
    intro iv hlt
    have h1 : (BitVec.ofNat 64 1).toNat = 1 := by decide
    rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]
  let I : State σ → Prop := fun s => ∃ iv : BitVec 64, iv.toNat ≤ ntx0.toNat ∧ PA E (En.set (nm "i") (.val (.word iv))) S s
  have hlt_of : ∀ (iv : BitVec 64) (s : State σ), iv.toNat ≤ ntx0.toNat → PA E (En.set (nm "i") (.val (.word iv))) S s →
      CondTrue s (.cmp .less (lv (nm "i")) (lv (nm "ntx"))) → iv.toNat < ntx0.toNat := by
    intro iv s hiv hp hc
    obtain ⟨w', hw, hne⟩ := hc
    obtain ⟨x, y, hx, hy, hcmp⟩ := cmp_true hw hne
    have ex := evI_lv_pa hp (hi iv) _ hx
    have ey := evI_lv_pa hp (hnt' iv) _ hy
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at ex ey
    subst ex; subst ey
    exact less_true' (by omega) (by omega) hcmp
  have hbodyHN : ∀ (iv : BitVec 64), iv.toNat < ntx0.toNat →
      HN (PA E (En.set (nm "i") (.val (.word iv))) S) (.seq (.ite (.cmp .equal (.load .one (.op .add [lv (nm "txs"),
          .panop .mul [lv (nm "i"), cw 16], cw 8])) (cw 0)) (.raise (nm "BlockErr") (cw 4)) .skip)
        (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))
        (PA E (En.set (nm "i") (.val (.word (iv + BitVec.ofNat 64 1)))) S) := by
    intro iv hlt
    refine hn_seq hn_guard (hn_post (hassignT (n := nm "i") ⟨_, hi iv⟩ (w' := iv + BitVec.ofNat 64 1) ?_) ?_)
    · intro s hp v hv
      have := evI_add (evI_lv_pa hp (hi iv)) (evI_cw s 1) v hv
      exact this
    · intro t _ ht
      refine pa_mono ht (fun x w hx => ?_) (fun f hf => hf)
      by_cases hxi : x = nm "i"
      · subst hxi; simpa [Env.set] using hx
      · simpa [Env.set, hxi] using hx
  have hbodyCost : Cost σ guestCtx (.seq (.ite (.cmp .equal (.load .one (.op .add [lv (nm "txs"),
          .panop .mul [lv (nm "i"), cw 16], cw 8])) (cw 0)) (.raise (nm "BlockErr") (cw 4)) .skip)
        (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))) 0 := by
    have h1 := cost_ite (σ := σ) (X := guestCtx)
      (c := (.cmp .equal (.load .one (.op .add [lv (nm "txs"), .panop .mul [lv (nm "i"), cw 16], cw 8])) (cw 0)))
      (cost_raise (nm "BlockErr") (cw 4)) cost_skip
    have h2 := cost_seq h1 (cost_assign (σ := σ) (X := guestCtx) .local (nm "i") (.op .add [lv (nm "i"), cw 1]))
    simpa using h2
  unfold raS20
  refine cw_seq (P := PA E (En.set (nm "i") (.val (.word 0))) S) (R := PA E (En.set (nm "i") (.val (.word ntx0))) S) ⟨?_, ?_⟩ hnext
  · -- cost
    refine Inv.CostP.pre (P := I) (Inv.costP_while (I := I) (fun s => match s.locals.lookup (nm "i") with
        | some (.val (.word w)) => ntx0.toNat - w.toNat
        | _ => 0) (2 ^ 24) (fun s ⟨iv, hiv, hp⟩ => ⟨iv, hiv, pa_decClock hp⟩) (fun s => rfl) ?_ ?_ ?_ ?_)
      (fun s _ hp => ⟨0, Nat.zero_le _, hp⟩)
    · exact Inv.costP_of_cost hbodyCost
    · intro s hs ⟨⟨iv, hiv, hp⟩, hc⟩ ht h
      have hlt := hlt_of iv s hiv hp hc
      obtain ⟨hr, hp'⟩ := hbodyHN iv hlt s hs hp ht
      rcases h with h | h
      · exact ⟨iv + BitVec.ofNat 64 1, by rw [hadd iv hlt]; omega, hp'⟩
      · rw [hr] at h; cases h
    · intro s _ ⟨iv, hiv, hp⟩ hc
      have := hp.2 (nm "i") _ (hi iv)
      simp only [this]
      omega
    · intro k s hs ⟨⟨iv, hiv, hp⟩, hc, hk⟩ ht h
      have hlt := hlt_of iv s hiv hp hc
      obtain ⟨hr, hp'⟩ := hbodyHN iv hlt s hs hp ht
      rcases h with h | h
      · have e1 := hp.2 (nm "i") _ (hi iv)
        have e2 := hp'.2 (nm "i") _ (hi (iv + BitVec.ofNat 64 1))
        simp only [e1] at hk
        simp only [e2]
        rw [hadd iv hlt]
        omega
      · rw [hr] at h; cases h
  · -- hoare
    refine hoare_pre (P := I) (hoare_while (I := I) ?_ ?_ ?_) ?_
    · rintro s ⟨iv, hiv, hp⟩
      exact ⟨iv, hiv, pa_decClock hp⟩
    · intro s hs ⟨⟨iv, hiv, hp⟩, hc⟩ ht
      have hlt := hlt_of iv s hiv hp hc
      obtain ⟨hr, hp'⟩ := hbodyHN iv hlt s hs hp ht
      refine ⟨fun _ => ⟨iv + BitVec.ofNat 64 1, by rw [hadd iv hlt]; omega, hp'⟩, fun h => ?_, fun h => ?_, fun v h => ?_⟩
      all_goals (rw [hr] at h; cases h)
    · intro s _ ⟨iv, hiv, hp⟩ hc
      obtain ⟨x, y, hx, hy, hcmp⟩ := cmp_false hc
      have ex := evI_lv_pa hp (hi iv) _ hx
      have ey := evI_lv_pa hp (hnt' iv) _ hy
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at ex ey
      subst ex; subst ey
      have hge : y.toNat ≤ x.toNat := less_false' (by omega) (by omega) hcmp
      have : x = y := BitVec.eq_of_toNat_eq (by omega)
      subst this
      exact ⟨rfl, hp⟩
    · intro s _ hp
      exact ⟨0, Nat.zero_le _, hp⟩

end loop

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.cw_loop20
