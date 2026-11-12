import InitECandidate.Solver.MemSafe.Ptx.PtC5

/-!
# F3d: `CallOK` for calls whose pointer arguments are safe buffers (`callOK_bufs`)
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

theorem callOK_bufs {E : PtE σ} {En : Env} {S : FS} {f : MlS} {sg : Sig} {cs : List Cap} {args : List (ExpHOL 64)}
    (hcs : CsOK cs) (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hjo : JrOut sg.gw) (hjn : ∀ g ∈ sg.gw, g = Hooks.gJn)
    (hfin : ptAllNames.contains f = true) (hlen : sg.params.length = args.length)
    (hpar : ∀ (i : Nat) (pt : MemSafe.PT), sg.params[i]? = some pt → pt = MemSafe.PT.any ∨ ∃ n, pt = MemSafe.PT.buf n ∧ n ≤ 24)
    (hbuf : ∀ s : State σ, PA E En S s → ∀ vs, evs s args = some vs → ∀ (i n : Nat), sg.params[i]? = some (MemSafe.PT.buf n) →
      ∃ w, vs[i]? = some (ValueHOL.val (HolWordLab.word w)) ∧ S (Fct.bufok0 w 24))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) : CallOK E En S f sg cs args := by
  have hnoba : ∀ (i j c d : Nat), sg.params[i]? ≠ some (MemSafe.PT.bufArg j c d) := by
    intro i j c d h
    rcases hpar i _ h with h' | ⟨n, h', -⟩ <;> cases h'
  refine callOK_gen hcs hgw hjo hjn hfin ?_ ?_ hnoba hGl
  · intro s hpa vs hvs D Γ p hr hL
    refine ⟨by rw [hlen, evs_length hvs], fun i pt v hpt hv => ?_⟩
    rcases hpar i pt hpt with rfl | ⟨n, rfl, hn⟩
    · trivial
    · obtain ⟨w, hw, hb⟩ := hbuf s hpa vs hvs i n hpt
      rw [hv] at hw; cases hw
      exact ⟨w, rfl, bufOK_le' (hL _ hb).1 hn⟩
  · intro s hpa vs hvs i w m hw hm
    obtain ⟨w', hw', hb⟩ := hbuf s hpa vs hvs i m hm
    obtain ⟨n, hn⟩ : ∃ n, n ≤ 24 ∧ True := ⟨0, by omega, trivial⟩
    rcases hpar i _ hm with h | ⟨n', h, hn'⟩
    · cases h
    · cases h
      simp only [argW, hw', wordOf] at hw
      cases hw
      exact ⟨24, hb, hn'⟩

end InitECandidate.Solver.MemSafe.Ptx
