import InitECandidate.Solver.MemSafe.Eb.Glue2
import InitECandidate.Solver.MemSafe.Eb.Tail21

/-!
# `execute_block`: `GprK` from what the head leaves
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem gprK_of_head {p0 : Ptrs} {S0 S' : FS} {Z : List MlS} {w t r lg rq rl ntx0 nwd0 be0 c0 wd0 w1 w2 w3 w4 : BitVec 64}
    (hout : HeadOut S0 S' Z w t r lg rq rl ntx0) (hsub : ∀ f, S0 f → S' f)
    (hled : Led (SPlus S' w1 w2 w3 w4 w t r be0 wd0) w t r lg rl be0 c0 wd0 ntx0 nwd0 0)
    (hobe : S0 (Fct.obj be0 tBOS 120)) (howd : S0 (Fct.obj wd0 tBOS (16 * nwd0.toNat))) :
    GprK (σ := σ) p0 (SLs (SPlus S' w1 w2 w3 w4 w t r be0 wd0) t r ntx0.toNat) w t r lg rl be0 c0 wd0 ntx0 nwd0 rq := by
  have up : ∀ f, S' f → SLs (SPlus S' w1 w2 w3 w4 w t r be0 wd0) t r ntx0.toNat f :=
    fun f hf => Or.inl (Or.inl (Or.inl hf))
  refine ⟨led_sla hled ntx0, up _ hout.orq, up _ hout.c56, up _ hout.c64, up _ hout.wrq, up _ hout.trq, up _ hout.rrq,
    up _ (hout.dnew _ _ _ hobe).2.2, up _ (hout.dnew _ _ _ howd).2.2, ?_⟩
  intro Γ p u hord hL0 hL f hf hne hr
  have mem : ∀ g, SLs (SPlus S' w1 w2 w3 w4 w t r be0 wd0) t r ntx0.toNat g → g ≠ Fct.cellv (w + BitVec.ofNat 64 64) 0 →
      g.holds p0 Γ p u := fun g hg hgn => hL g ⟨hg, hgn⟩
  have obo := mem _ (up _ hout.led.obj) (by intro h; cases h)
  obtain ⟨o, ho, hob, hot, hos⟩ := obo
  have hhi := obj_hi hord hL0 ho
  have hw64 : (w + BitVec.ofNat 64 64).toNat = w.toNat + 64 := by
    unfold Obj.hi at hhi; rw [hob] at hhi
    have : scratchEnd < 2 ^ 64 := by decide
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
  rcases hf with ((hf | hf) | hf) | rfl | rfl
  · obtain ⟨f0, hf0, hr0⟩ := hout.led.solo f hf hne hr
    have hp := mem _ (up _ hout.led.prop) (by intro h; cases h)
    exact hp _ ⟨f0, hf0, hr0⟩ ⟨by rw [hw64]; omega, by rw [hw64]; omega⟩
  · rcases hf with rfl | rfl | rfl | rfl <;> exact hr
  · rcases hf with rfl | rfl | rfl | rfl | rfl | rfl <;> exact hr
  · have hot := mem _ (up _ hout.otxs) (by intro h; cases h)
    have hwt := mem _ (up _ hout.wt) (by intro h; cases h)
    have hbt := (mem _ (up _ hout.led.obj) (by intro h; cases h))
    obtain ⟨j, hj, h | h⟩ := hr
    · exact cells_ne_cross hord hL0 hbt hot hwt (by omega) (by omega) (by omega) (by omega) h
    · exact cells_ne_cross hord hL0 hbt hot hwt (by omega) (by omega) (by omega) (by omega) h
  · have hot := mem _ (up _ hout.orcs) (by intro h; cases h)
    have hwt := mem _ (up _ hout.wr) (by intro h; cases h)
    have hbt := (mem _ (up _ hout.led.obj) (by intro h; cases h))
    obtain ⟨j, hj, h | h⟩ := hr
    · exact cells_ne_cross hord hL0 hbt hot hwt (by omega) (by omega) (by omega) (by omega) h
    · exact cells_ne_cross hord hL0 hbt hot hwt (by omega) (by omega) (by omega) (by omega) h

end InitECandidate.Solver.MemSafe.Eb
