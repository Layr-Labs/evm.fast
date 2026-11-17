import InitECandidate.Solver.MemSafe.CryptoCost.Stem
import InitECandidate.Solver.MemSafe.CryptoCost.Countdown
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Miller
def body : ProgHOL 64 := (declPair Guest.Software.guestFn_bn254_miller_raw).2.2
def parts : InitECandidate.Solver.MemSafe.CryptoCost.Stem.Stem × ProgHOL 64 := (InitECandidate.Solver.MemSafe.CryptoCost.Stem.extract body).getD (.hole,.skip)
def pieces : ProgHOL 64 × ProgHOL 64 :=
  match parts.2 with
  | .dec _ _ _ (.seq (.while _ (.seq _ r)) t) => (r,t)
  | _ => (.skip,.skip)
def rest : ProgHOL 64 := pieces.1
def tail : ProgHOL 64 := pieces.2
def stage : ProgHOL 64 := .dec (nm "i") .one (.const (BitVec.ofNat 64 64))
  (.seq (.while (.cmp .lower (.const 0) (.var .local (nm "i")))
    (.seq (.assign .local (nm "i") (.op .sub [.var .local (nm "i"), .const 1])) rest)) tail)
theorem stage_eq : parts.2 = stage := by cbv
theorem body_eq : InitECandidate.Solver.MemSafe.CryptoCost.Stem.splice parts.1 parts.2 = body := by cbv
#print axioms stage_eq
#print axioms body_eq
end InitECandidate.Solver.MemSafe.CryptoCost.Miller
