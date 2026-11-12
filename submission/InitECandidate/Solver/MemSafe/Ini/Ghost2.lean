import InitECandidate.Solver.MemSafe.Ini.Ghost
import InitECandidate.Solver.MemSafe.Ini.Final

/-!
# `G` under a change of globals

`G_swap`: `G` for a state with the same memory and allocator but other globals, once the typed globals point to objects
of `Γ` and the journal hook is re-established (`JHooks.jn`). `g_gz`: `G Γ s` gives `G Γ (gz s)`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}

theorem G_swap {Γ : Gam} {u u' : State σ} (hG : G Types.guestC (guestHooksR (σ := σ)) Γ u)
    (hm : u'.memory = u.memory) (hd : u'.memaddrs = u.memaddrs) (hb : u'.be = u.be)
    (hp : ptrsOf u' = ptrsOf u)
    (hGl : ∀ g k, Types.guestC.GT.lookup g = some k → ∃ v, gword u' g = some v ∧ Fits Γ k v)
    (hj : ∀ o ∈ Γ, o.ty = Types.tJOURNAL → jrW Γ u' o) : G Types.guestC (guestHooksR (σ := σ)) Γ u' := by
  obtain ⟨p, hps, hord, hL, hF, hT, -, hW⟩ := hG
  refine ⟨p, hp.trans hps, hord, hL, by rw [hm]; exact hF, by rw [hm]; exact hT, hGl, fun o ho => ?_⟩
  exact jHooks_guestR.jn Γ u u' o (hW o ho) hm hd hb (hj o ho)

theorem ptrsOf_gz (s : State σ) : ptrsOf (gz s) = ptrsOf s := by
  have h1 : gHeap ∉ hid := by decide
  have h2 : gFrame ∉ hid := by decide
  have h3 : gScratch ∉ hid := by decide
  unfold ptrsOf gword gz
  simp only [zeroH_notin h1, zeroH_notin h2, zeroH_notin h3]

theorem gword_gz_notin {s : State σ} {g : MlS} (h : g ∉ hid) : gword (gz s) g = gword s g := by
  unfold gword gz
  simp only [zeroH_notin h]

theorem gword_gz_in {s : State σ} {g : MlS} (h : g ∈ hid) : gword (gz s) g = some 0 := by
  unfold gword gz
  simp only [zeroH_in h]

theorem hid_nptr {g : MlS} (h : g ∈ hid) : ∃ t, Types.guestC.GT.lookup g = some (.nptr t) := by
  rcases hid_mem.mp h with rfl | rfl | rfl | rfl
  · exact ⟨_, Types.gt_ws⟩
  · exact ⟨_, Types.gt_bs⟩
  · exact ⟨_, Types.gt_sk_buf⟩
  · exact ⟨_, Types.gt_journal⟩

theorem base_pos {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout Types.guestC p Γ) {o : Obj}
    (ho : o ∈ Γ) : 0 < o.base.toNat := by
  obtain ⟨-, -, -, -, hlive⟩ := hL.1 o ho
  obtain ⟨d1, d2, d3, d4, d5, -⟩ := hord
  have : 0 < heapBase := by decide
  have : 0 < heapEnd := by decide
  unfold Obj.lo at hlive
  cases hr : (Types.guestC.ty o.ty).region <;> rw [hr] at hlive <;> simp only [Region.Live] at hlive <;>
    omega

theorem g_gz {Γ : Gam} {s : State σ} (hG : G Types.guestC (guestHooksR (σ := σ)) Γ s) :
    G Types.guestC (guestHooksR (σ := σ)) Γ (gz s) := by
  obtain ⟨p, hps, hord, hL, -⟩ := id hG
  refine G_swap hG rfl rfl rfl (ptrsOf_gz s) ?_ ?_
  · intro g k hk
    by_cases hg : g ∈ hid
    · obtain ⟨t, ht⟩ := hid_nptr hg
      rw [ht] at hk
      cases hk
      exact ⟨0, gword_gz_in hg, Or.inl (by unfold nullMax; decide)⟩
    · obtain ⟨-, -, -, -, -, -, hGl, -⟩ := hG
      obtain ⟨v, hv, hf⟩ := hGl g k hk
      exact ⟨v, by rw [gword_gz_notin hg]; exact hv, hf⟩
  · intro o ho hjt hjw
    exfalso
    have : gword (gz s) gJ = some 0 := gword_gz_in (by simp [hid_mem, Hooks.gJ])
    rw [this] at hjw
    have := base_pos hord hL ho
    have h0 : o.base = 0 := (Option.some.inj hjw).symm
    rw [h0] at this
    simp at this

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.g_gz
