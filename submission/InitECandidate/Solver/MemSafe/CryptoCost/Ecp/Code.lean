import InitECandidate.Solver.MemSafe.CryptoCost.Stem
import InitECandidate.Solver.MemSafe.CryptoCost.Unsigned
import InitECandidate.Solver.MemSafe.WaveHelpers.BitLen
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Ecp
def extract : ProgHOL 64 → Option (InitECandidate.Solver.MemSafe.CryptoCost.Stem.Stem × ProgHOL 64)
  | p@(.decCall x sh f args k) =>
      if x = nm "len" ∧ f = nm "u256_bit_length" then some (.hole,p)
      else (extract k).map fun (s,h) => (.decCall x sh f args s,h)
  | .dec x sh e k => (extract k).map fun (s,h) => (.dec x sh e s,h)
  | .seq a k => (extract k).map fun (s,h) => (.seq a s,h)
  | _ => none
def body : ProgHOL 64 := (declPair Guest.Software.guestFn_ecp_mul).2.2
def parts : InitECandidate.Solver.MemSafe.CryptoCost.Stem.Stem × ProgHOL 64 := (extract body).getD (.hole,.skip)
def pieces : ProgHOL 64 × ProgHOL 64 :=
  match parts.2 with
  | .decCall _ _ _ _ (.dec _ _ _ (.seq (.while _ b) t)) => (b,t)
  | _ => (.skip,.skip)
def loopBody : ProgHOL 64 := pieces.1
def tail : ProgHOL 64 := pieces.2
def afterLen : ProgHOL 64 := .dec (nm "i") .one (.const 0)
  (.seq (.while (.cmp .lower (.var .local (nm "i")) (.var .local (nm "len"))) loopBody) tail)
def stage : ProgHOL 64 := .decCall (nm "len") .one (nm "u256_bit_length") [.var .local (nm "n")] afterLen
theorem stage_eq : parts.2 = stage := by cbv
theorem body_eq : InitECandidate.Solver.MemSafe.CryptoCost.Stem.splice parts.1 parts.2 = body := by cbv
#print axioms stage_eq
#print axioms body_eq
end InitECandidate.Solver.MemSafe.CryptoCost.Ecp
