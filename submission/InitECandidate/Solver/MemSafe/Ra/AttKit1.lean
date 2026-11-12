import InitECandidate.Solver.MemSafe.Ra.AttCode
import InitECandidate.Solver.MemSafe.Ra.AttGl

/-!
# `run_attempt`: call conversions (1)

`below_cpre`: a heap-only typing lies below the heap pointer. `cr_aw`: an above-writer spec (`AWSpec`, no protected global written) as a `CallR`
at `h0 = p.hp`, handing on its post.
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

theorem below_cpre {Γ : Gam} {p : Ptrs} (hC : CPre Γ) (hL : Layout guestC p Γ) : Aw.Below Γ p.hp :=
  fun o ho => ((live_of hL ho).1 (hC.1 o ho)).2

/-- An above-writer spec at a caller-chosen `h0` (every object below it). -/
theorem cr_awh {f : MlS} {P : List (ValueHOL 64) → State σ → Nat → Prop}
    {Post : List (ValueHOL 64) → State σ → ValueHOL 64 → State σ → Prop}
    (hf : Aw.AWSpec σ guestCtx guestC (HR σ) f [] P Post) :
    CallR (σ := σ) f (fun vs s Γ p => CPre Γ ∧ ∃ h0 : Nat, h0 % 8 = 0 ∧ heapBase ≤ h0 ∧ h0 ≤ p.hp ∧ Aw.Below Γ h0 ∧ P vs s h0)
      (fun _ _ _ _ => False) (fun vs s _ _ v t _ _ => Post vs s v t) := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE ⟨hC, h0, h8, hb, hle, hB, hP⟩
  have hord := ordered_of_G hG hp
  obtain ⟨q, hq, -, hL, -⟩ := id hG
  obtain rfl : p = q := (Option.some.inj (hq.symm.trans hp)).symm
  have hspec := hf vs body callee rs hl s hs hloc r hr v hv Γ h0 p hG hp hB h8 hb hle hP
  obtain ⟨Γ', p', hG', hp', hext, hnf, hB', hm, hmod, hpg, hpost⟩ := hspec
  have hE' : EvCc (evaluateHOLFiniteState s body).2 := by
    have hF := Hooks.frameCfg_guestHooksR (σ := σ)
    obtain ⟨⟨e, he, hs1⟩, ⟨c, hc', hs2⟩⟩ := hE
    refine ⟨⟨e, ?_, hs1⟩, ⟨c, ?_, hs2⟩⟩
    · unfold gword; rw [hpg _ hF.pgEv (by simp)]; exact he
    · unfold gword; rw [hpg _ hF.pgCC (by simp)]; exact hc'
  have hJ' : JrNZ (evaluateHOLFiniteState s body).2 :=
    jrNZ_of_lookup (fun g hg => hpg g (by rcases jrGs_cases hg with rfl | rfl <;> decide) (by simp)) hJ
  have hst : StepD Γ p s Γ' p' (evaluateHOLFiniteState s body).2 := stepD_mk hp hp' hm hext hnf hG hG'
  have hfr : ∀ a, (BCell guestC Γ a ∨ PlCell Γ a) →
      rd (evaluateHOLFiniteState s body).2.memory a = rd s.memory a := by
    intro a hx
    have ha : ProtCell guestC Γ a := hx.elim bCell_prot plCell_prot
    have hlt := prot_lt_below hB hord hL ha
    have := hmod a (by
      rintro (h | h | h)
      · omega
      · exact prot_notW hord hL ha h
      · exact h (prot_alloc hord hL ha))
    unfold rd; rw [this]
  exact ⟨Γ', p', ⟨hst, hJ', hE', fun a ha _ => hfr a (Or.inl ha),
    plKeep_iff.mpr fun a ha => hfr a (Or.inr ha)⟩, hpost⟩

/-- An above-writer spec at `h0 = p.hp`. -/
theorem cr_aw {f : MlS} {P : List (ValueHOL 64) → State σ → Nat → Prop}
    {Post : List (ValueHOL 64) → State σ → ValueHOL 64 → State σ → Prop}
    (hf : Aw.AWSpec σ guestCtx guestC (HR σ) f [] P Post) :
    CallR (σ := σ) f (fun vs s Γ p => CPre Γ ∧ P vs s p.hp) (fun _ _ _ _ => False)
      (fun vs s _ _ v t _ _ => Post vs s v t) := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE ⟨hC, hP⟩
  have hord := ordered_of_G hG hp
  obtain ⟨q, hq, -, hL, -⟩ := id hG
  obtain rfl : p = q := (Option.some.inj (hq.symm.trans hp)).symm
  exact cr_awh hf vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE
    ⟨hC, p.hp, hord.2.2.2.2.2.1, hord.1, le_rfl, below_cpre hC hL, hP⟩

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.cr_awh
