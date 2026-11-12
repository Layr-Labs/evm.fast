import InitECandidate.Solver.MemSafe.Wg.Core
import InitECandidate.Solver.MemSafe.Bal.Ub9

/-!
# Wg: `incorporate_tx_into_block` as a `CallR`
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

/-- `capPW_notBP` with only the two hypotheses it uses (`gl` is not needed for a `SumSpecA` conversion). -/
theorem capPW_notBP' {cs : List Cap} (hks : ∀ c ∈ cs, ∀ k ∈ c.ks, 8 * k + 8 ≤ (guestC.ty c.t).minSz)
    (hty : ∀ c ∈ cs, c.t ∉ blockTys ∧ c.t ∉ PlTys) {p : Ptrs} {Γ : Gam} (hord : p.Ordered)
    (hL : Layout guestC p Γ) {s : State σ} {a : BitVec 64} (hw : CapPW cs s Γ a) :
    ¬ BCell guestC Γ a ∧ ¬ PlCell Γ a := by
  obtain ⟨c, hc, ⟨e, ⟨he, het, -⟩, k, hk, rfl⟩ | ⟨-, e, he, hty', k, hks', rfl⟩⟩ := hw
  · have hmin := (hL.1 e he).2.2.2.1
    have hks2 : e.HasSlot k := by
      have := hks c hc k hk
      rw [het] at hmin
      unfold Obj.HasSlot; omega
    have hne : e.ty ∉ blockTys ++ PlTys := by
      rw [het]
      intro hin
      rcases List.mem_append.mp hin with h | h
      · exact (hty c hc).1 h
      · exact (hty c hc).2 h
    refine ⟨?_, ?_⟩
    · rintro ⟨o, ho, hty', k', hk', -, he'⟩
      obtain ⟨rfl, -⟩ := cell_inj hord hL he ho hks2 hk' he'
      exact hne (List.mem_append.mpr (Or.inl hty'))
    · rintro ⟨o, ho, hty', k', hk', -, he'⟩
      obtain ⟨rfl, -⟩ := cell_inj hord hL he ho hks2 hk' he'
      exact hne (List.mem_append.mpr (Or.inr hty'))
  · have hne : e.ty ∉ blockTys ++ PlTys := by
      intro hin
      rcases hty' with h | h
      · rw [h] at hin
        simp only [List.mem_append] at hin
        exact hin.elim (hty c hc).1 (hty c hc).2
      · exact absurd (ownBase_big _ hin) (by omega)
    refine ⟨?_, ?_⟩
    · rintro ⟨o, ho, hty'', k', hk', -, he'⟩
      obtain ⟨rfl, -⟩ := cell_inj hord hL he ho hks' hk' he'
      exact hne (List.mem_append.mpr (Or.inl hty''))
    · rintro ⟨o, ho, hty'', k', hk', -, he'⟩
      obtain ⟨rfl, -⟩ := cell_inj hord hL he ho hks' hk' he'
      exact hne (List.mem_append.mpr (Or.inr hty''))

theorem icc_ty : ∀ c ∈ Bal.icc, c.t ∉ blockTys ∧ c.t ∉ PlTys := by decide
theorem icc_ks' : ∀ c ∈ Bal.icc, ∀ k ∈ c.ks, 8 * k + 8 ≤ (guestC.ty c.t).minSz := by
  intro c hc k hk; rw [Bal.icc_ks c hc] at hk; cases hk

theorem cr_incorporate (hgs : Bal.HGS σ) : CallR (σ := σ) (nm "incorporate_tx_into_block")
    (fun vs s Γ p => ArgsOK guestC Γ p Bal.biSig.params vs ∧ Bal.UbPre vs s Γ) (fun _ _ _ _ => False)
    (fun vs s Γ p v t Γ' p' => RetOK Γ' p p' vs Bal.biSig.ret v ∧ (Bal.biSig.grows = false → NewFresh Γ Γ' p p) ∧
      Bal.B4Post vs s Γ (.returned v) t Γ') := by
  refine callR_of_sumSpecA (Bal.sumSpec_incorporate_tx_into_block hgs) ⟨by decide, by decide⟩ (by decide) ?_
  intro vs s Γ a hG hw
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  rcases hw with h | h
  · exact capPW_notBP' icc_ks' icc_ty hord hL h
  · exact laPW_notBP hord hL h

end InitECandidate.Solver.MemSafe.Wg
