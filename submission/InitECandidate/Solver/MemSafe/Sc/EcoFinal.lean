import InitECandidate.Solver.MemSafe.Sc.Eco

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# `EcoHyp`, proved

* `funSpec_eco_V`: under `G`, a fitting address and `ReqOK eocCs`, a returned `<c, n>` of `ext_code_of`
  has `n ≤ 2^32` (the hybrid proof of `Eco.lean`, entered as in `Final.lean`).
* **`ecoHyp_proved : Calls.EcoHyp σ`**: the fold entry of `ext_code_of` (memory safety) together with
  the value fact: `n + 63 < 2^64`.
-/

namespace InitECandidate.Solver.MemSafe.Sc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type}

theorem funSpec_eco_V :
    FunSpec σ guestCtx (nm "ext_code_of") (fun vs s r t => Good (some r) → ¬ Abortive r →
      ∀ Γ, G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s →
        (∃ p, ptrsOf s = some p ∧ ArgsOK Types.guestC Γ p Frames.eocSg.params vs) →
        ReqOK Frames.eocCs s Γ → ValP r) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  have hT : CTabSound σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) ShardsJL.tab26 :=
    Frames.tab26_guestR
  have hcode : guestCtx.code.lookup (nm "ext_code_of") =
      some (ecoParams, ecoBody, .comb [.one, .one]) := by
    rw [hX]; exact code_eco
  have hcs : capsOK Types.guestC Frames.eocSg Frames.eocCs = true := by decide
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hreq
  obtain ⟨rfl, -, hvl, hbind⟩ := lookupCode_gen hcode hl
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hF.hH hF.hC hF.hal hF.hAC hF.hNS hcs hG hps hargs hreq
  obtain ⟨Θ, hig⟩ := init_ig (a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) Frames.eocSg
    Frames.eocCs vs s Γ p1) hF.hH hh ecoParams
    (by show Frames.eocSg.params.length = ecoParams.length; decide) hvl hargs
    (fun i hi hv => by rw [hloc]; exact hbind i hi hv) 0 ⟨[], []⟩ []
    (Nat.zero_le _) ⟨rfl, fun k td hk => by simp at hk⟩ (fun x av hx => by simp at hx)
  simp only [List.drop_zero] at hig
  have hGc : EcH (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) Frames.eocSg Frames.eocCs
      vs s Γ p1) :=
    ⟨ha, rfl, hT, rfl, rfl, winSpecs_guest (σ := σ) hX, rfl, rfl⟩
  have Hs := e1_sound hGc Γ Θ s hs ⟨hig, trivial⟩ (by rw [hr]; exact hgood)
  rw [hr] at Hs
  exact Hs.2 r rfl

/-- **`EcoHyp`**: `ext_code_of`'s tab26 summary with `EcoQ` (`n + 63 < 2^64`). -/
theorem ecoHyp_proved : Calls.EcoHyp σ := by
  have hs : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ext_code_of")
      Frames.eocSg Frames.eocCs := Frames.tab26_guestR _ _ _ Frames.eoc_mem
  unfold CSumm SumSpecA at hs
  unfold Calls.EcoHyp SumSpecA
  refine FunSpec.mono (FunSpec.and hs funSpec_eco_V) ?_
  rintro vs s r t ⟨h1, h2⟩ hg hna Γ hG hA hR
  obtain ⟨Γ', p, p', core, -⟩ := h1 hg hna Γ hG hA hR
  refine ⟨Γ', p, p', core, ?_⟩
  intro c n hr
  have := h2 hg hna Γ hG hA hR (wv [c, n]) hr c n rfl
  have h32 : (2 : Nat) ^ 32 < 2 ^ 64 - 63 := by norm_num
  omega

end InitECandidate.Solver.MemSafe.Sc

#print axioms InitECandidate.Solver.MemSafe.Sc.funSpec_eco_V
#print axioms InitECandidate.Solver.MemSafe.Sc.ecoHyp_proved
