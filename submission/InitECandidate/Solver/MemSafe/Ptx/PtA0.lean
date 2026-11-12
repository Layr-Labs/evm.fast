import InitECandidate.Solver.MemSafe.Ptx.PtEnc
import InitECandidate.Solver.MemSafe.Ptx.PtEv
import InitECandidate.Solver.MemSafe.Ptx.PtPre

/-!
# F3d: the walk's start (after `state_fresh_tx`) with the ghost entry allocator
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem fresh_gp0 {p p' : Ptrs} (h : p.Ordered) {a : BitVec 64} (hf : Fresh p p' a) : Fresh (gp0 p) p' a := by
  obtain ⟨h1, h2, h3, h4, h5, h6, -, -⟩ := h
  unfold Fresh gp0 at *
  simp only
  omega

theorem newFresh_gp0 {Γ Γ' : Gam} {p p' : Ptrs} (h : p.Ordered) (hn : NewFresh Γ Γ' p p') :
    NewFresh Γ Γ' (gp0 p) p' := by
  intro o ho a h1 h2
  rcases hn o ho a h1 h2 with h' | h'
  · exact Or.inl h'
  · exact Or.inr (fresh_gp0 h h')

/-- **`state_fresh_tx`'s result starts the walk**, anchored at the ghost allocator (`s0'` is the callee's entry
state: same memory and globals as the anchor `s0`). -/
theorem ptRun_of_qfin {Γ : Gam} {p : Ptrs} {s0 s0' t : State σ} (hord : p.Ordered)
    (hm : s0'.memory = s0.memory) (hg : s0'.globals = s0.globals)
    (hp : ptrsOf s0 = some p) (h : QFin Γ p s0' t) :
    ∃ Γ' p', PtRun noD Γ s0 (gp0 p) Γ' t p' ∧ StepD Γ p s0' Γ' p' t ∧
      (∃ w, gword t nmTs = some w ∧ ∃ o ∈ Γ', o.base = w ∧ o.ty = tTS) := by
  obtain ⟨Γ', p', hs, h1, h2, h3, h4, h5, he, hc, hts⟩ := h
  refine ⟨Γ', p', ⟨⟨p, hp, Or.inr rfl⟩, hs.hp', ?_, hs.ext, newFresh_gp0 hord hs.nf, hs.hG', ?_, ?_, h5, he, hc,
    gp0_ord hord, ?_⟩, hs, hts⟩
  · exact gp0_mono (ordered_of_G hs.hG' hs.hp') hs.mono.1
  · intro g hg' hn; rw [h3 g hg' hn, hg]
  · intro a ha
    obtain ⟨o, ho, k, hk, hp', e⟩ := ha
    have := h1 a ⟨o, (mem_nst.mp ho).1, k, hk, hp', e⟩
    exact ⟨fun _ => by rw [this, hm], fun v hv => by simp [noD] at hv⟩
  · intro g hg'; rw [h4 g hg', hg]

end InitECandidate.Solver.MemSafe.Ptx
