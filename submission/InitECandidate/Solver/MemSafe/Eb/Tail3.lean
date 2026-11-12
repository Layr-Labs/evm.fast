import InitECandidate.Solver.MemSafe.Eb.Tail2
import InitECandidate.Solver.MemSafe.Aw.Bloom
import InitECandidate.Solver.MemSafe.Annot.DrvCfg
import InitECandidate.Solver.MemSafe.Helpers.GuestTypes

/-!
# `execute_block`: `logs_bloom` as `CallR`
The output buffer `O` (a fresh, unadopted allocation) has every object of `Γ` below it.
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

variable {σ : Type}

theorem awSpec_lb_closed : Aw.AWSpec σ guestCtx guestC (HR σ) (nm "logs_bloom") []
    (fun vs _ h0 => Aw.OutPre h0 vs) (fun _ _ _ _ => True) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  exact Aw.awSpec_logs_bloom hF.hX hF.hal Aw.domBelow_guestCtx hF.hH Helpers.tagSlots_guestC Annot.drv_allocG
    (Aw.awSpec_add_to_bloom hF.hX hF.hH Helpers.tagSlots_guestC Annot.drv_allocG tab_keccak)

theorem prot_lt_below {Γ : Gam} {p : Ptrs} {h : Nat} (hB : Aw.Below Γ h) (hord : p.Ordered)
    (hL : Layout guestC p Γ) {a : BitVec 64} (hx : ProtCell guestC Γ a) : a.toNat < h := by
  obtain ⟨o, ho, k, hk, -, rfl⟩ := hx
  obtain ⟨o', ho', hlo, hhi⟩ := cell_in hord hL ho hk
  have := hB o' ho'
  omega

theorem cr_lb (hK : HypKeepG σ) : CallR (σ := σ) (nm "logs_bloom")
    (fun vs _ Γ p => CPre Γ ∧ ∃ A O : BitVec 64, vs = [.val (.word A), .val (.word O)] ∧
      O.toNat % 8 = 0 ∧ heapBase ≤ O.toNat ∧ O.toNat ≤ p.hp ∧ Aw.Below Γ O.toNat) (fun _ _ _ _ => False)
    (fun _ _ _ _ _ _ _ _ => True) := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE ⟨hC, A, O, hvs, h8, hb, hle, hB⟩
  have hspec := awSpec_lb_closed (σ := σ) vs body callee rs hl s hs hloc r hr v hv
    Γ O.toNat p hG hp hB h8 hb hle ⟨O, by subst hvs; rfl, le_refl _, by
      have := (ordered_of_G hG hp).2.1; unfold heapEnd at this; omega⟩
  obtain ⟨Γ', p', hG', hp', hext, hnf, hB', hm, hmod, hpg, -⟩ := hspec
  have hord := ordered_of_G hG hp
  obtain ⟨q, hq, -, hL, -⟩ := id hG
  obtain rfl : p = q := (Option.some.inj (hq.symm.trans hp)).symm
  have hE' : EvCc (evaluateHOLFiniteState s body).2 := by
    have hF := Hooks.frameCfg_guestHooksR (σ := σ)
    obtain ⟨⟨e, he, hs1⟩, ⟨c, hc', hs2⟩⟩ := hE
    refine ⟨⟨e, ?_, hs1⟩, ⟨c, ?_, hs2⟩⟩
    · unfold gword; rw [hpg _ hF.pgEv (by simp)]; exact he
    · unfold gword; rw [hpg _ hF.pgCC (by simp)]; exact hc'
  have hJ' : JrNZ (evaluateHOLFiniteState s body).2 :=
    jrNZ_of_lookup (fun g hg => hpg g (by rcases jrGs_cases hg with rfl | rfl <;> decide) (by simp)) hJ
  have hst : StepD Γ p s Γ' p' (evaluateHOLFiniteState s body).2 := stepD_mk hp hp' hm hext hnf hG hG'
  obtain ⟨hst', -⟩ := stepD_keepG hK hC hst hE'
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
  exact ⟨keepG Γ', p', ⟨hst', hJ', hE', fun a ha _ => hfr a (Or.inl ha),
    plKeep_iff.mpr fun a ha => hfr a (Or.inr ha)⟩, trivial⟩

end InitECandidate.Solver.MemSafe.Eb
