import InitECandidate.Solver.MemSafe.Wg.Ra2

/-!
# Wg: `requests_append`, walk kit (return with a memory post, avoidance of the stored cells)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- A return ends in a run of the walk that still holds the frame facts, and `Rm` holds of the memory. -/
def RetR (E : EbE σ) (Dout : BitVec 64 → Prop) (Rm : Mem → Prop) : Option (PanSemResultExact 64) → State σ → Prop :=
  fun r t => ∀ v, r = some (.returned v) → ∃ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ t p ∧
    HoldsAll E.p0 Γ p t (FrS E.Γ0 E.s0 Dout) ∧ Rm t.memory

theorem retR_locIns (E : EbE σ) (Dout : BitVec 64 → Prop) (Rm : Mem → Prop) : LocIns (RetR E Dout Rm) := by
  intro r t l c h v hv
  obtain ⟨Γ, p, hr, hL, hm⟩ := h v hv
  exact ⟨Γ, p, ebRun_loc hr l c, holdsAll_loc hL l c, hm⟩

theorem hn_retR {E : EbE σ} {En : Env} {S : FS} {Dout : BitVec 64 → Prop} {Rm : Mem → Prop} {e : ExpHOL 64}
    (hfr : ∀ f, FrS E.Γ0 E.s0 Dout f → S f)
    (hR : ∀ (Γ : Gam) (p : Ptrs) (u : State σ), HoldsAll E.p0 Γ p u S → Rm u.memory) :
    Hoare σ guestCtx (PA E En S) (.return e) (RetR E Dout Rm) := by
  refine hoare_return ?_
  intro s hs hpa v hv
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  intro v' hv'
  cases hv'
  exact ⟨Γ, p, ebRun_loc hr _ s.clock, holdsAll_loc (holdsAll_mono hL hfr) _ s.clock, hR Γ p s hL⟩

/-- Every fact of `S` is a frame fact or reads only cells of `L`. -/
def Avoid (S : FS) (Γ0 : Gam) (s0 : State σ) (Dout : BitVec 64 → Prop) (L : List (BitVec 64)) : Prop :=
  ∀ f, S f → FrS Γ0 s0 Dout f ∨ ∀ y, f.reads y → y ∈ L

theorem avoid_add {S : FS} {Γ0 : Gam} {s0 : State σ} {Dout : BitVec 64 → Prop} {L L' : List (BitVec 64)} {f0 : Fct}
    (h : Avoid S Γ0 s0 Dout L) (hf0 : ∀ y, f0.reads y → y ∈ L') (hL : ∀ y, y ∈ L → y ∈ L') :
    Avoid (fun f => S f ∨ f = f0) Γ0 s0 Dout L' := by
  intro f hf
  rcases hf with hf | rfl
  · rcases h f hf with h1 | h1
    · exact Or.inl h1
    · exact Or.inr fun y hy => hL y (h1 y hy)
  · exact Or.inr hf0

theorem avoid_mono {S S' : FS} {Γ0 : Gam} {s0 : State σ} {Dout : BitVec 64 → Prop} {L L' : List (BitVec 64)}
    (h : Avoid S Γ0 s0 Dout L) (hs : ∀ f, S' f → S f) (hL : ∀ y, y ∈ L → y ∈ L') : Avoid S' Γ0 s0 Dout L' := by
  intro f hf
  rcases h f (hs f hf) with h1 | h1
  · exact Or.inl h1
  · exact Or.inr fun y hy => hL y (h1 y hy)

theorem hfree_of_avoid {S : FS} {Γ0 : Gam} {s0 : State σ} {Dout : BitVec 64 → Prop} {L : List (BitVec 64)} {c : BitVec 64}
    (hA : Avoid S Γ0 s0 Dout L) (hc : Dout c) (hcL : c ∉ L) :
    ∀ f, S f → (∀ a v, f ≠ Fct.pcv a v) → ∀ y, f.reads y → y ≠ c := by
  intro f hf hnp y hy hyc
  subst hyc
  rcases hA f hf with (⟨a, -, hd, rfl⟩ | ⟨a, -, rfl⟩) | h
  · have hya : y = a := hy
    rw [hya] at hc
    exact hd hc
  · exact hnp _ _ rfl
  · exact hcL (h y hy)

end InitECandidate.Solver.MemSafe.Wg
