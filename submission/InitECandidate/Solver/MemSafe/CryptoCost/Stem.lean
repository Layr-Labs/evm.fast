import InitECandidate.Solver.MemSafe.CryptoCost.Analyzer
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Stem
inductive Stem where
  | hole
  | dec (x : MlS) (sh : ShapeHOL) (e : ExpHOL 64) (s : Stem)
  | decCall (x : MlS) (sh : ShapeHOL) (f : MlS) (args : List (ExpHOL 64)) (s : Stem)
  | seq (a : ProgHOL 64) (s : Stem)
def splice : Stem → ProgHOL 64 → ProgHOL 64
  | .hole, p => p
  | .dec x sh e s, p => .dec x sh e (splice s p)
  | .decCall x sh f args s, p => .decCall x sh f args (splice s p)
  | .seq a s, p => .seq a (splice s p)
def bound : Stem → Nat → Option Nat
  | .hole, b => some b
  | .dec _ _ _ s, b => bound s b
  | .decCall _ _ f _ s, b =>
      match Shards.finalState.1.lookup f, bound s b with
      | some bf, some bk => some (1 + bf + bk)
      | _, _ => none
  | .seq a s, b =>
      match InitECandidate.Solver.MemSafe.CryptoCost.Analyzer.costFin a, bound s b with
      | some ba, some bk => some (ba + bk)
      | _, _ => none
variable {σ : Type} {hole : ProgHOL 64} {Bh : Nat}
theorem sound (hHole : Cost σ guestCtx hole Bh) :
    ∀ s B, bound s Bh = some B → Cost σ guestCtx (splice s hole) B
  | .hole, B, h => by
      simp only [bound, Option.some.injEq] at h
      subst B
      exact hHole
  | .dec x sh e s, B, h => cost_dec (sound hHole s B h)
  | .decCall x sh f args s, B, h => by
      simp only [bound] at h
      split at h
      · rename_i bf bk hf hk
        simp only [Option.some.injEq] at h
        subst B
        exact cost_decCall ((Shards.finalState_sound_guest (σ := σ)).1 f bf hf) (sound hHole s bk hk)
      · simp at h
  | .seq a s, B, h => by
      simp only [bound] at h
      split at h
      · rename_i ba bk ha hk
        simp only [Option.some.injEq] at h
        subst B
        exact cost_seq (InitECandidate.Solver.MemSafe.CryptoCost.Analyzer.cost_guest_costA ha) (sound hHole s bk hk)
      · simp at h

/-- Extract the straight-line prefix ending at a counter initialized to 64. Closed decompositions are checked separately. -/
def extract : ProgHOL 64 → Option (Stem × ProgHOL 64)
  | p@(.dec x sh (.const c) k) =>
      if x = nm "i" ∧ c = BitVec.ofNat 64 64 then some (.hole, p)
      else (extract k).map fun (s,h) => (.dec x sh (.const c) s,h)
  | .dec x sh e k => (extract k).map fun (s,h) => (.dec x sh e s,h)
  | .decCall x sh f args k => (extract k).map fun (s,h) => (.decCall x sh f args s,h)
  | .seq a k => (extract k).map fun (s,h) => (.seq a s,h)
  | _ => none
#print axioms sound
end InitECandidate.Solver.MemSafe.CryptoCost.Stem
