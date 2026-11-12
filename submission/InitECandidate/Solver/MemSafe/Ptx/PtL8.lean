import InitECandidate.Solver.MemSafe.Ptx.PtD23

/-!
# F3e: `callOK_memcpy`
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

theorem memcpy_fin : ptAllNames.contains (nm "memcpy") = true := by decide_cbv

/-- `CallOK` for `memcpy(d, s, nn)`: the destination is a safe buffer of at least `nn` bytes. -/
theorem callOK_memcpy {E : PtE σ} {En : Env} {S : FS} {args : List (ExpHOL 64)}
    (hbuf : ∀ s : State σ, PA E En S s → ∀ vs, evs s args = some vs →
      ∃ (d sv nn : BitVec 64) (m : Nat), vs = [.val (.word d), .val (.word sv), .val (.word nn)] ∧
        nn.toNat ≤ m ∧ S (Fct.bufok0 d m))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) :
    CallOK E En S (nm "memcpy") ⟨[.bufArg 2 1 0, .any, .any], [], [], false⟩ [] args where
  csok := csOK_nil
  gw := ⟨by simp, by simp⟩
  jo := by intro g _ h; simp at h
  jn := by intro g h; simp at h
  fin := memcpy_fin
  argsok := by
    intro s hpa vs hvs D Γ p hr hL
    obtain ⟨d, sv, nn, m, rfl, hle, hb⟩ := hbuf s hpa vs hvs
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | _ | i
    · simp at hpt hv; subst hpt hv
      exact ⟨d, nn, rfl, rfl, by simpa using bufOK_le' (hL _ hb).1 hle⟩
    · simp at hpt; subst hpt; trivial
    · simp at hpt; subst hpt; trivial
    · simp at hpt
  memok := by
    intro s hpa vs hvs g hg a hrd hcells
    obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
    have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
    obtain ⟨d, sv, nn, m, rfl, hle, hb⟩ := hbuf s hpa vs hvs
    obtain ⟨i, w, hw, h⟩ := hcells
    rcases h with ⟨n', hn, hov⟩ | ⟨j, c, d', x, hj, hx, hov⟩
    · rcases i with _ | _ | _ | i <;> simp at hn
    · rcases i with _ | _ | _ | i <;> simp at hj
      obtain ⟨rfl, rfl, rfl⟩ := hj
      simp only [argW, wordOf, List.getElem?_cons_zero, List.getElem?_cons_succ, Option.some.injEq] at hw hx
      subst hw hx
      exact argbuf_disj hr hL hb hle (by simpa using hov) g hg hrd
  globok := hGl

end InitECandidate.Solver.MemSafe.Ptx
