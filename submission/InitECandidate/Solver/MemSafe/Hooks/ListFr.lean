import InitECandidate.Solver.MemSafe.Hooks.List
import InitECandidate.Solver.MemSafe.Hooks.JournalFr
import InitECandidate.Solver.MemSafe.Frames.NewTrk

/-!
# The frame driver's hook requirements for the journal-and-list family

* `relCfg_guestJL : RelCfg guestC guestHooksJL tEV refGJL` (a list header depends on its array:
  a heap array, or a scratch array directly below the header, i.e. an `adjTys` object);
* `rdHooks_guestJL : RdHooks guestHooksJL`;
* `NewHooksL` / **`newHooksL_guestJL`**: `frame_new`'s requirement with the frame-logs header
  hooked. `Frames.NewHooks` asks for a trivial hook on `tLSTs` (`triv`), which the list hook is not;
  `NewHooksL` drops `tLSTs` from `triv` (the array `tLSTAs` stays unhooked) and adds the `LstHooks`
  facts the `lst_new_scratch` spec of `HtabEntries/LstNewScratchL.lean` consumes. The switch
  for `frame_new`: replace `hNH.triv … tLSTs` by `HtabEntries.sumSpec_lst_new_scratchL`.
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Struct InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.Spec

variable {σ : Type}

theorem relCfg_guestJL : RelCfg guestC (guestHooksJL (σ := σ)) tEV refGJL := by
  refine ⟨guestHooksJL_shrinkR, heapPtrs_guest, globHeap_guest, ?_⟩
  intro Γ s o b p hL ho hw href x hx hxb
  rcases href with href | ⟨ht, hb⟩
  · exact relCfg_guestJ.refCases Γ s o b p hL ho hw.1 href x hx hxb
  · obtain ⟨-, -, -, -, -, y, hy, hyb, hyt, -⟩ := hw.2 ht
    obtain rfl : y = x := base_unique hL hy hx ((hyb.trans hb.symm).trans hxb.symm)
    rcases hyt with h | ⟨h, hhi⟩
    · left; rw [h]; rfl
    · right; right; right
      exact ⟨by rw [h]; simp [adjTys], hhi⟩

theorem rdHooks_guestJL : RdHooks (guestHooksJL (σ := σ)) where
  ret := by
    intro Γ s o o' ho' ht' j hj hf
    rcases hf with hf | hf
    · exact rdHooks_guestJ.ret Γ s o o' ho' ht' j hj hf
    · have hj' : j = 18 ∨ j = 19 ∨ j = 27 := by simpa using hj
      have hG := hf.2.1.2.1
      exact lfp_evck hf ho' (Or.inl ht') (by have := ev_size hG ho' ht'; omega) rfl
  b8 := fun Γ s o ht => ⟨rdHooks_guestJ.b8 Γ s o ht, fun ht' => by rw [ht] at ht'; exact absurd ht' (by decide)⟩

/-- `frame_new`'s hook requirements with a hooked frame-logs header: the EV hook from the
stack/memory invariant, trivial hooks on stack, memory and list-array objects, and the list
entries' requirements. -/
structure NewHooksL (H : Hooks σ) : Prop where
  ev : ∀ (Γ : Gam) (s : State σ) (o : Obj) (p : Ptrs), Layout guestC p Γ → o ∈ Γ → o.ty = tEV →
    EvSM Shards.sty Γ s.memory o → H.wf Γ s o
  triv : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tSTACK ∨ o.ty = tMEM ∨ o.ty = tLSTAs → H.wf Γ s o
  lst : LstHooks H

theorem newHooksL_guestJL : NewHooksL (guestHooksJL (σ := σ)) := by
  refine ⟨fun Γ s o p hL ho ht hsm => ?_, fun Γ s o h => ?_, lstHooks_guestJL⟩
  · have hk : hkOf o.ty = .ev := by rw [ht]; exact hkOf_tEV
    refine ⟨⟨(gwf_ev hk).2 ⟨ho, gamOK_of_layout hL, hsm⟩, fun hj => ?_⟩, fun hl => ?_⟩
    · rw [ht] at hj; exact absurd hj (by decide)
    · rw [ht] at hl; exact absurd hl tEV_not_lst
  · have hn : o.ty ∉ lstTys ∧ o.ty ≠ tJOURNAL ∧ hkOf o.ty = .none := by
      rcases h with h | h | h <;> rw [h] <;> decide
    exact ⟨⟨gwf_none hn.2.2, fun hj => absurd hj hn.2.1⟩, fun hl => absurd hl hn.1⟩

/-- `NewHooksL` with a trivial frame-logs hook is `Frames.NewHooks`. -/
theorem newHooks_of_L {H : Hooks σ} (h : NewHooksL H)
    (hl : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tLSTs → H.wf Γ s o) : NewHooks H :=
  ⟨h.ev, fun Γ s o ho => by
    rcases ho with ho | ho | ho | ho
    · exact h.triv Γ s o (Or.inl ho)
    · exact h.triv Γ s o (Or.inr (Or.inl ho))
    · exact hl Γ s o ho
    · exact h.triv Γ s o (Or.inr (Or.inr ho))⟩

end InitECandidate.Solver.MemSafe.Hooks
