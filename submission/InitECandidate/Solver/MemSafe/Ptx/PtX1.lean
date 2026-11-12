import InitECandidate.Solver.MemSafe.Ptx.PtW3

/-!
# F3h: the chain, stage 1: `ptS0` to `ptS38`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- **Stage 1**: `ptS0` to `ptS38`. -/
theorem chain1 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hP : PtPre E) (hEnc : HypEncTx σ) (hQT : LocIns QT) (C : Cx0 E En S)
    (hk : ∀ (En' : Env) (S' : FS) (rp rl : BitVec 64) (buf n : Nat) (CV : List (BitVec 64)) (w a b c : BitVec 64)
      (pr : List (BitVec 64)) (mg rs : BitVec 64), Cx3 E En' S' rp rl buf n CV w a b c pr mg rs →
      Hoare σ guestCtx (PA E En' S') ptS38 QT) :
    Hoare σ guestCtx (PA E En S) ptS0 QT :=
  pt_c1 hP hEnc hQT C fun rp rl buf n En1 S1 C1 =>
  pt_c2a hQT C1 fun w En2 S2 C2 =>
  pt_c3 hQT C2 fun En3 S3 a b c pr mg rs C3 => hk En3 S3 rp rl buf n _ w a b c pr mg rs C3

end InitECandidate.Solver.MemSafe.Ptx
