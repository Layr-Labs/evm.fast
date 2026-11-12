import InitECandidate.Solver.MemSafe.Bal.BalInitCode

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

section gk
variable {C : Cfg} {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}

/-- **Assigning a typed, unprotected global** a word that fits its type keeps the tracking. -/
theorem trk_gset (hH : HooksLawful C H) (hA : Struct.AllocG C) {Γ : Gam} {t : State σ} {g : MlS} {k : FK}
    {w : BitVec 64} (h : Struct.Trk C H Γ0 s0 p0 PW Γ t) (hgt : C.GT.lookup g = some k)
    (hf : Fits Γ k w) (hpg : g ∉ C.PG) :
    Struct.Trk C H Γ0 s0 p0 PW Γ (setKvarHOLFinite .global g (.val (.word w)) t) := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpgs, hd, hbe⟩ := h
  have hne : ∀ g' ∈ [gHeap, gFrame, gScratch], g' ≠ g := fun g' hg' e => by
    rw [← e, hA.gt _ hg'] at hgt; cases hgt
  have hpt : ptrsOf (setKvarHOLFinite .global g (.val (.word w)) t) = ptrsOf t := by
    unfold ptrsOf
    rw [gword_setG_ne (hne gHeap (by simp)), gword_setG_ne (hne gFrame (by simp)),
      gword_setG_ne (hne gScratch (by simp))]
  have hpgn : ∀ g' ∈ C.PG, (setKvarHOLFinite .global g (.val (.word w)) t).globals.lookup g' =
      t.globals.lookup g' := fun g' hg' => setG_ne (fun e => hpg (e ▸ hg'))
  refine ⟨p, hpt.trans hp, hm, hx, hnf, ?_, hmod, fun g' hg' => (hpgn g' hg').trans (hpgs g' hg'), hd, hbe⟩
  obtain ⟨q, hq, hord, hL, hF, hT, hGl, hW⟩ := hG
  refine ⟨q, hpt.trans hq, hord, hL, hF, hT, fun g' k' hk' => ?_, fun o ho => ?_⟩
  · by_cases e : g' = g
    · subst e
      rw [hgt] at hk'
      cases hk'
      exact ⟨w, by unfold gword; rw [setG_self], hf⟩
    · obtain ⟨v, hv, hf'⟩ := hGl g' k' hk'
      exact ⟨v, (gword_setG_ne e).trans hv, hf'⟩
  · exact (hH.2 Γ t (setKvarHOLFinite .global g (.val (.word w)) t) o (hW o ho) rfl rfl (fun a _ => rfl) hpgn).1

end gk

end InitECandidate.Solver.MemSafe.Bal
