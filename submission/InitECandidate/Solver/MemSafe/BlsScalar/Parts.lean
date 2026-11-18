import InitECandidate.Solver.MemSafe.BlsScalar.Stem
import InitECandidate.Solver.MemSafe.BlsCost.Callers.C12
import InitECandidate.Solver.MemSafe.CryptoCost.Countdown
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsScalar.Parts
open CryptoCost.Stem
def extract : ProgHOL 64 → Option (Stem × ProgHOL 64)
 | p@(.dec x sh e k) =>
  if x = nm "i" then some (.hole,p) else (extract k).map fun (s,h) => (.dec x sh e s,h)
 | .decCall x sh f args k => (extract k).map fun (s,h) => (.decCall x sh f args s,h)
 | .seq a k => (extract k).map fun (s,h) => (.seq a s,h)
 | _ => none
def pieces (p : ProgHOL 64) : ProgHOL 64 × ProgHOL 64 :=
 match p with
 | .dec _ _ _ (.dec _ _ _ (.seq (.while _ (.seq _ r)) t)) => (r,t)
 | _ => (.skip,.skip)
def initExp : ExpHOL 64 := .panop .mul [.var .local (nm "n"),.const 64]
def loop (rest : ProgHOL 64) : ProgHOL 64 :=
 .while (.cmp .lower (.const 0) (.var .local (nm "i")))
  (.seq (.assign .local (nm "i") (.op .sub [.var .local (nm "i"),.const 1])) rest)
def stage (rest tail : ProgHOL 64) : ProgHOL 64 :=
 .dec (nm "i") .one initExp (.dec (nm "started") .one (.const 0) (.seq (loop rest) tail))
def body1 := (declPair Guest.Software.guestFn_g1_mul).2.2
def parts1 := (extract body1).getD (.hole,.skip)
def rest1 := (pieces parts1.2).1
def tail1 := (pieces parts1.2).2
def body2 := (declPair Guest.Software.guestFn_g2_mul).2.2
def parts2 := (extract body2).getD (.hole,.skip)
def rest2 := (pieces parts2.2).1
def tail2 := (pieces parts2.2).2
end InitECandidate.Solver.MemSafe.BlsScalar.Parts
