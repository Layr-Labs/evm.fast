import InitECandidate.Solver.Improvements.FourthCsrExactCH
import InitECandidate.Solver.Improvements.FourthCsrInnerLink
import InitECandidate.Solver.Band7.CsrTail

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option cbv.warning false

namespace FourthCsrState
open InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}

def capMax : Nat := 4127616
def loopCBound : Nat := capMax * (cb csr_s3_1 + 1)
def rootBound : Nat := (1 + tb (nm "mpt_root") + 0) + 0
def acapBound : Nat := loopCBound + rootBound
def loopBBound : Nat := capMax * (cb csr_s2_1 + 1)
def stateBound : Nat := 1 + tb (nm "mpt_from_witness") + (loopBBound + acapBound)

end FourthCsrState
