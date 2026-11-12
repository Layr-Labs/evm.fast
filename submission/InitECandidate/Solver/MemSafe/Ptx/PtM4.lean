import InitECandidate.Solver.MemSafe.Ptx.PtM3

/-!
# F3e: the `issc` branch -- the merge
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

def Sm (S : FS) (wt : BitVec 64) : FS := fun f =>
  S f ∧ f ≠ Fct.memw (wt + BitVec.ofNat 64 144) 0 ∧ f ≠ Fct.memw (wt + BitVec.ofNat 64 152) 0

def Sx (S : FS) (wt v1 v2 : BitVec 64) : FS :=
  addF (addF (Sm S wt) [Fct.memw (wt + BitVec.ofNat 64 144) v1]) [Fct.memw (wt + BitVec.ofNat 64 152) v2]

def T1 (E : PtE σ) : BitVec 64 := rd E.s0.memory (E.tx + BitVec.ofNat 64 272)
def T2 (E : PtE σ) : BitVec 64 := rd E.s0.memory (E.tx + BitVec.ofNat 64 280)

theorem sm_fact {S : FS} {wt : BitVec 64} {f : Fct} (h : S f) (hn : ∀ a b, f ≠ Fct.memw a b) : Sm S wt f :=
  ⟨h, hn _ _, hn _ _⟩

theorem sm_pa {E : PtE σ} {En : Env} {S : FS} {wt : BitVec 64} {u : State σ} (h : PA E En S u) :
    PA E En (Sm S wt) u := pa_mono h (fun _ _ h => h) (fun f hf => hf.1)

end InitECandidate.Solver.MemSafe.Ptx
