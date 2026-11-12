import InitECandidate.Solver.MemSafe.Ini.SiDw

/-!
# `state_init`: assignments to ordinary globals (`journal_cap`, `journal_n`, `ts`)
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
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

/-- Assigning a global outside `hid` whose type admits the value keeps the ghost heap invariant,
when the global is unprotected or declared written. -/
theorem heap_setG {a : Act σ} (haC : a.C = Types.guestC) (haH : a.H = guestHooksR (σ := σ)) {Γ : Gam}
    {q : Ptrs} {t : State σ} {g : MlS} {v : BitVec 64} (hh : Heap a Γ q (gz t)) (hg : g ∉ hid)
    (hgp : g ∉ gHeap :: gFrame :: gScratch :: []) {k : FK}
    (hk : Types.guestC.GT.lookup g = some k) (hfit : ∀ Γ' : Gam, Fits Γ' k v)
    (hpg : g ∈ a.sg.gw ∨ g ∉ Types.guestC.PG) :
    Heap a Γ q (gz (setKvarHOLFinite .global g (.val (.word v)) t)) := by
  have hne : ∀ g', g' = gHeap ∨ g' = gFrame ∨ g' = gScratch → g' ≠ g := by
    intro g' h e
    apply hgp
    subst e
    rcases h with rfl | rfl | rfl <;> simp
  have hgl := gz_setKvar_ne hg (.val (.word v)) t
  obtain ⟨hG, hps, hmo, hext, hnf, hmod, hpgs, hng⟩ := hh
  have hpt : ptrsOf (gz (setKvarHOLFinite .global g (.val (.word v)) t)) = ptrsOf (gz t) := by
    unfold ptrsOf gword
    rw [hgl gHeap, hgl gFrame, hgl gScratch]
    simp [hne gHeap (Or.inl rfl), hne gFrame (Or.inr (Or.inl rfl)), hne gScratch (Or.inr (Or.inr rfl))]
  refine ⟨?_, hpt.trans hps, hmo, hext, hnf, hmod, ?_, hng⟩
  · rw [haC, haH] at hG ⊢
    refine G_swap hG rfl rfl rfl hpt ?_ ?_
    · intro g' k' hk'
      by_cases e : g' = g
      · subst e
        rw [hk] at hk'
        cases hk'
        exact ⟨v, by unfold gword; rw [hgl g']; simp, hfit Γ⟩
      · obtain ⟨-, -, -, -, -, -, hGl, -⟩ := hG
        obtain ⟨w, hw, hf⟩ := hGl g' k' hk'
        exact ⟨w, by unfold gword at hw ⊢; rw [hgl g']; simp [e]; exact hw, hf⟩
    · intro o ho hjt hjw
      exfalso
      obtain ⟨p, hp, hord, hL, -⟩ := hG
      have : gword (gz (setKvarHOLFinite .global g (.val (.word v)) t)) gJ = some 0 :=
        gword_gz_in (by simp [hid_mem, Hooks.gJ])
      rw [this] at hjw
      have := base_pos hord hL ho
      have h0 : o.base = 0 := (Option.some.inj hjw).symm
      rw [h0] at this
      simp at this
  · intro g' hg' hng'
    by_cases e : g' = g
    · subst e
      rcases hpg with h | h
      · exact absurd h hng'
      · exact absurd (haC ▸ hg') h
    · have := hpgs g' hg' hng'
      rw [hgl g'] at *
      simpa [e] using this

end InitECandidate.Solver.MemSafe.Ini
