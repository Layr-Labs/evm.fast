import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify706
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body722_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 96#64]

def body722_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body722_2 : Prog (BitVec 64) :=
.seq body722_0 body722_1

def originalData722 : Decl (BitVec 64) :=
.function { name := "fp2_copy", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body722_2, returnShape := (Flapjack.Shape.one) }
def simplifiedData722 : Decl (BitVec 64) :=
.function { name := "fp2_copy", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body722_2, returnShape := (Flapjack.Shape.one) }
def original722 := Pancake.PanLang.declToHOL originalData722
def simplified722 := Pancake.PanLang.declToHOL simplifiedData722
end InitECandidate.Proofs.FrontendStages.Declarations
