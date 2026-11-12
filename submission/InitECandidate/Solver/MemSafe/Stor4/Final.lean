import InitECandidate.Solver.MemSafe.Stor4.Main

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# `set_storage`'s capability summary (sonnet-sset)

**`setStorageSumm`**: `Stor3.SetStorageSumm σ`, by the hybrid of the fold checker and a hand step.
The checker (`chk_sound`) proves the `throw` test, the `htab_new` branch and the tail from
`var v = alloc(32)`; the structural cases of `chk_sound` (`seq`, `dec`, `decCall`) are re-proved
with the continuation as a hypothesis (`Sound.lean`), which lets `inner = m.1` be typed
`gp tHTh32` from the typed `htab_get` (`Get.lean`, `funSpec_get_fits`: a found value of a `tHTt20`
table fits `ptr tHTh32`) and `m.0 ≠ 0`.
-/

namespace InitECandidate.Solver.MemSafe.Stor4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.Stor3 (ssSig ssCaps)

variable {σ : Type}

theorem chk_tail_ex : ∃ okT, chk ssE AJ ssTail = some okT := by
  obtain ⟨o, ho⟩ := Option.isSome_iff_exists.mp chk_tail
  exact ⟨o, ho⟩

/-- **`set_storage`'s capability summary.** -/
theorem setStorageSumm : Stor3.SetStorageSumm σ := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  have hT : CTabSound σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) ShardsJL.tab26 :=
    Frames.tab26_guestR
  have hcode : guestCtx.code.lookup (nm "set_storage") = some (ssParams, ssBody, .one) := by
    rw [hX]; exact code_ss
  have hcs : capsOK Types.guestC ssSig ssCaps = true := by decide
  obtain ⟨okT, hokT⟩ := chk_tail_ex
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hreq
  obtain ⟨rfl, -, hvl, hbind⟩ := lookupCode_gen hcode hl
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hF.hH hF.hC hF.hal hF.hAC hF.hNS hcs hG hps hargs hreq
  obtain ⟨Θ, hig⟩ := init_ig (a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) ssSig ssCaps
    vs s Γ p1) hF.hH hh ssParams (by show ssSig.params.length = ssParams.length; decide) hvl hargs
    (fun i hi hv => by rw [hloc]; exact hbind i hi hv) 0 ⟨[], []⟩ []
    (Nat.zero_le _) ⟨rfl, fun k td hk => by simp at hk⟩ (fun x av hx => by simp at hx)
  simp only [List.drop_zero] at hig
  have Hs := top_sound (a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) ssSig ssCaps
    vs s Γ p1) ha rfl hT rfl rfl (winSpecs_guest (σ := σ) hX) rfl rfl hokT Γ Θ s
    hs hig (by rw [hr]; exact hgood)
  rw [hr] at Hs
  have core : ∃ Γ' p', Ext Γ Γ' ∧ Heap (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) ssSig ssCaps
      vs s Γ p1) Γ' p' (evaluateHOLFiniteState s ssBody).2 ∧
      (∀ v, r = .returned v → RetOK Γ' p1 p' vs ssSig.ret v) := by
    rcases r with _ | _ | _ | _ | _ | v | ⟨e, v⟩ | e
    all_goals first
      | (obtain ⟨B, Γ', Θ', -, hlat, p', hh', -, -⟩ := Hs
         exact ⟨Γ', p', hlat.1, hh', fun v h => by cases h⟩)
      | (obtain ⟨Γ', p', he, hh', hret⟩ := Hs
         exact ⟨Γ', p', he, hh', fun v' h => by cases h; exact hret⟩)
      | (rcases Hs with hab | ⟨Γ', p', he, hh'⟩
         · exact absurd hab hna
         · exact ⟨Γ', p', he, hh', fun v h => by cases h⟩)
  obtain ⟨Γ', p', hext, hh', hret⟩ := core
  exact ⟨Γ', p1, p', act_exit hcs hps hext hh' hret, trivial⟩

end InitECandidate.Solver.MemSafe.Stor4

#print axioms InitECandidate.Solver.MemSafe.Stor4.funSpec_get_fits
#print axioms InitECandidate.Solver.MemSafe.Stor4.setStorageSumm
