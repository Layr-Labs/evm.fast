import InitECandidate.Solver.MemSafe.Hooks.Journal
import InitECandidate.Solver.MemSafe.Frames.GuestRel
import InitECandidate.Solver.MemSafe.Frames.RetData

/-!
# The frame driver's hook requirements for the journal family

`relCfg_guestJ : RelCfg guestC guestHooksJ tEV refGJ` (the release law and its dependency
targets: a journal depends on heap objects only) and `rdHooks_guestJ : RdHooks guestHooksJ`,
the counterparts of `Frames.relCfg_guest` / `Frames.rdHooks_guest`.
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Struct InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.Spec

variable {σ : Type}

theorem heap_hdr : ∀ t ∈ hdrTys, t ≠ tHTs20 → (guestC.ty t).region = .heap := by decide

theorem relCfg_guestJ : RelCfg guestC (guestHooksJ (σ := σ)) tEV refGJ := by
  refine ⟨guestHooksJ_shrinkR, heapPtrs_guest, globHeap_guest, ?_⟩
  intro Γ s o b p hL ho hw href x hx hxb
  rcases href with href | ⟨ht, hj, n, hn, i, hi, hb⟩
  · exact relCfg_guest.refCases Γ s o b p hL ho hw.1 href x hx hxb
  · left
    obtain ⟨-, -, n', c, hn', -, -, -, -, he⟩ := hw.2 ht hj
    rw [hn] at hn'
    cases hn'
    obtain ⟨y, hyΓ, hyb, hyk, hys, ⟨z, hzΓ, hzb, hzt, -⟩, hv⟩ := he i hi
    rcases hb with hb | hb | ⟨hf, w, hwΓ, hwb, hwk, hb⟩
    · obtain rfl : y = x := base_unique hL hyΓ hx ((hyb.trans hb.symm).trans hxb.symm)
      exact heap_hdr _ (hkOf_tab hyk) hys
    · obtain rfl : z = x := base_unique hL hzΓ hx ((hzb.trans hb.symm).trans hxb.symm)
      rw [hzt]; rfl
    · obtain rfl : w = y := base_unique hL hwΓ hyΓ (hwb.trans hyb.symm)
      obtain ⟨t', ht', hr⟩ := valK_heap hwk
      have hfit := hv hf
      rw [ht'] at hfit
      obtain ⟨v, hvΓ, hvb, hvt⟩ := hfit
      obtain rfl : v = x := base_unique hL hvΓ hx ((hvb.trans hb.symm).trans hxb.symm)
      rw [hvt]; exact hr

theorem rdHooks_guestJ : RdHooks (guestHooksJ (σ := σ)) where
  ret := by
    intro Γ s o o' ho' ht' j hj hf
    rcases hf with hf | hf
    · exact rdHooks_guest.ret Γ s o o' ho' ht' j hj hf
    · have hj' : j = 18 ∨ j = 19 ∨ j = 27 := by simpa using hj
      have hG := (hf.2.1 hf.2.2.1).2.1
      exact jfp_evck hf ho' (Or.inl ht') (by have := ev_size hG ho' ht'; omega) rfl
  b8 := fun Γ s o ht => ⟨rdHooks_guest.b8 Γ s o ht, fun ht' => absurd (ht'.symm.trans ht) (by decide)⟩

end InitECandidate.Solver.MemSafe.Hooks
