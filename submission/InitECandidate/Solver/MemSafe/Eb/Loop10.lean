import InitECandidate.Solver.MemSafe.Eb.Loop9

/-!
# `execute_block`: loop part 10 (the slice-array facts and `Led` under them)
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
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

/-- The base facts plus the filled entries of `txs` and `rcs`. -/
def SLs (S : FS) (t r : BitVec 64) (n : Nat) : FS := fun f => S f ∨ f = Fct.sla t n ∨ f = Fct.sla r n

theorem balS_mono {S S' : FS} (h : BalS S) (hs : ∀ f, S f → S' f) : BalS S' := by
  obtain ⟨⟨a, h1⟩, ⟨b, h2⟩, ⟨c, h3⟩, ⟨d, h4⟩, ⟨e, h5⟩, ⟨f, h6⟩⟩ := h
  exact ⟨⟨a, hs _ h1⟩, ⟨b, hs _ h2⟩, ⟨c, hs _ h3⟩, ⟨d, hs _ h4⟩, ⟨e, hs _ h5⟩, ⟨f, hs _ h6⟩⟩

theorem led_mono {S S' : FS} {w t r lg rl be0 c0 wd0 ntx0 nwd0 iv iv' : BitVec 64}
    (h : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 iv) (hs : ∀ f, S f → S' f)
    (hrd : ∀ f, S' f → (∀ a v, f ≠ Fct.pcv a v) → ∀ y, f.reads y → Ycl w t r be0 wd0 nwd0 iv' y) :
    Led S' w t r lg rl be0 c0 wd0 ntx0 nwd0 iv' :=
  ⟨hs _ h.gbo, hs _ h.obo, hs _ h.otxs, hs _ h.orcs, hs _ h.olg, hs _ h.orl, hs _ h.c24, hs _ h.c32, hs _ h.c40, hs _ h.c72,
    hs _ h.gbe, hs _ h.obe, hs _ h.cbe, hs _ h.ibe, hs _ h.owd, balS_mono h.bal hs, hs _ h.wt, hs _ h.wr, hs _ h.wb,
    hs _ h.ww, hs _ h.tr, hs _ h.tb, hs _ h.rb, hs _ h.tw, hs _ h.rw, hs _ h.bw, h.bt, h.bt24, h.bwd, hrd⟩

theorem ycl_zero {w t r be0 wd0 nwd0 iv y : BitVec 64} (h : Ycl w t r be0 wd0 nwd0 0 y) : Ycl w t r be0 wd0 nwd0 iv y := by
  rcases h with h | h | ⟨o, h8, hle, -⟩ | h
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · simp at hle
  · exact Or.inr (Or.inr (Or.inr h))

theorem led_sla {S : FS} {w t r lg rl be0 c0 wd0 ntx0 nwd0 : BitVec 64}
    (h : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 0) (iv : BitVec 64) :
    Led (SLs S t r iv.toNat) w t r lg rl be0 c0 wd0 ntx0 nwd0 iv := by
  refine led_mono h (fun f hf => Or.inl hf) ?_
  intro f hf hnp y hy
  rcases hf with hf | rfl | rfl
  · exact ycl_zero (h.rd f hf hnp y hy)
  · obtain ⟨j, hj, hy'⟩ := hy
    refine Or.inr (Or.inr (Or.inl ?_))
    rcases hy' with rfl | rfl
    · exact ⟨16 * j, by omega, by omega, Or.inl rfl⟩
    · exact ⟨16 * j + 8, by omega, by omega, Or.inl rfl⟩
  · obtain ⟨j, hj, hy'⟩ := hy
    refine Or.inr (Or.inr (Or.inl ?_))
    rcases hy' with rfl | rfl
    · exact ⟨16 * j, by omega, by omega, Or.inr rfl⟩
    · exact ⟨16 * j + 8, by omega, by omega, Or.inr rfl⟩

theorem led_noread {S : FS} {w t r lg rl be0 c0 wd0 ntx0 nwd0 iv : BitVec 64}
    (h : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 iv) (f0 : Fct) (hf0 : ∀ y, ¬ f0.reads y) :
    Led (fun f => S f ∨ f = f0) w t r lg rl be0 c0 wd0 ntx0 nwd0 iv := by
  refine led_mono h (fun f hf => Or.inl hf) ?_
  intro f hf hnp y hy
  rcases hf with hf | rfl
  · exact h.rd f hf hnp y hy
  · exact absurd hy (hf0 y)

end InitECandidate.Solver.MemSafe.Eb
