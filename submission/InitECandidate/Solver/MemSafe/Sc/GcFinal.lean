import InitECandidate.Solver.MemSafe.Sc.GcMain

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# `get_code`'s value fact

**`funSpec_get_code_V`**: under `G`, fitting arguments and `ReqOK gcCaps`, a returned `<x, y>` of
`get_code` has `y ≤ 2^32`. The entry is `Final`'s (`act_entry`, `init_ig`); the body is `top_gc`.
-/

namespace InitECandidate.Solver.MemSafe.Sc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type}

theorem funSpec_get_code_V :
    FunSpec σ guestCtx (nm "get_code") (fun vs s r t => Good (some r) → ¬ Abortive r →
      ∀ Γ, G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s →
        (∃ p, ptrsOf s = some p ∧ ArgsOK Types.guestC Γ p gcSig.params vs) →
        ReqOK gcCaps s Γ → ValP r) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  have hT : CTabSound σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) ShardsJL.tab26 :=
    Frames.tab26_guestR
  have hcode : guestCtx.code.lookup (nm "get_code") = some (gcParams, gcBody, .comb [.one, .one]) := by
    rw [hX]; exact code_gc
  have hcs : capsOK Types.guestC gcSig gcCaps = true := by decide
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hreq
  obtain ⟨rfl, -, hvl, hbind⟩ := lookupCode_gen hcode hl
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hF.hH hF.hC hF.hal hF.hAC hF.hNS hcs hG hps hargs hreq
  obtain ⟨Θ, hig⟩ := init_ig (a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) gcSig gcCaps
    vs s Γ p1) hF.hH hh gcParams (by show gcSig.params.length = gcParams.length; decide) hvl hargs
    (fun i hi hv => by rw [hloc]; exact hbind i hi hv) 0 ⟨[], []⟩ []
    (Nat.zero_le _) ⟨rfl, fun k td hk => by simp at hk⟩ (fun x av hx => by simp at hx)
  simp only [List.drop_zero] at hig
  have hGc : GcH (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) gcSig gcCaps vs s Γ p1) :=
    ⟨ha, rfl, hT, rfl, rfl, winSpecs_guest (σ := σ) hX, rfl, rfl⟩
  have Hs := top_gc hGc Γ Θ s hs ⟨hig, trivial⟩ (by rw [hr]; exact hgood)
  rw [hr] at Hs
  exact Hs.2 r rfl

end InitECandidate.Solver.MemSafe.Sc

#print axioms InitECandidate.Solver.MemSafe.Sc.funSpec_get_code_V
