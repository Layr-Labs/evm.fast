import InitECandidate.Solver.MemSafe.Ptx.PtL9

/-!
# F3e: loop 2 (`ptS61`: the `al_keys` copy loop) -- environments
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

/-- Outer loop environment: counters `k` and `i`. -/
def LE2 (En0 : Env) (iv kv : BitVec 64) : Env :=
  (En0.set (nm "k") (.val (.word kv))).set (nm "i") (.val (.word iv))

/-- Inner loop environment. -/
def LI (En0 : Env) (iv kv a2 nsv jv : BitVec 64) : Env :=
  (((LE2 En0 iv kv).set (nm "acc2") (.val (.word a2))).set (nm "ns") (.val (.word nsv))).set (nm "j") (.val (.word jv))

theorem li_step (En0 : Env) (iv kv a2 nsv jv : BitVec 64) :
    (((LI En0 iv kv a2 nsv jv).set (nm "k") (.val (.word (kv + 1)))).set (nm "j") (.val (.word (jv + 1)))) =
    LI En0 iv (kv + 1) a2 nsv (jv + 1) := by
  unfold LI LE2
  env_eq

theorem li_step2 (En0 : Env) (iv kv a2 nsv jv : BitVec 64) :
    (((LI En0 iv kv a2 nsv jv).set (nm "k") (.val (.word (kv + BitVec.ofNat 64 1)))).set (nm "j")
      (.val (.word (jv + BitVec.ofNat 64 1)))) =
    LI En0 iv (kv + BitVec.ofNat 64 1) a2 nsv (jv + BitVec.ofNat 64 1) := by
  unfold LI LE2
  env_eq

theorem le2_incl {En0 : Env} (h1 : En0 (nm "acc2") = none) (h2 : En0 (nm "ns") = none) (h3 : En0 (nm "j") = none)
    (iv kv a2 nsv jv iv' : BitVec 64) :
    ∀ x v, LE2 En0 iv' kv x = some v →
      (((LI En0 iv kv a2 nsv jv).set (nm "i") (.val (.word iv'))) x = some v) := by
  intro x v h
  unfold LE2 at h
  unfold LI LE2
  simp (config := {decide := true}) only [Env.set] at h ⊢
  split_ifs at h ⊢ <;> simp_all (config := {decide := true})

end InitECandidate.Solver.MemSafe.Ptx
