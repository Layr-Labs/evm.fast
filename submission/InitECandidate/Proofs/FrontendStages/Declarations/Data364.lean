import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify348
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body364_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 56#64]

def body364_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "b")

def body364_2 : Prog (BitVec 64) :=
.seq body364_0 body364_1

def body364_3 : Prog (BitVec 64) :=
.decCall ("b") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 56#64]) body364_2

def originalData364 : Decl (BitVec 64) :=
.function { name := "acct_copy", inline := false, exported := false, params := [("a", Flapjack.Shape.one)], body := body364_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData364 : Decl (BitVec 64) :=
.function { name := "acct_copy", inline := false, exported := false, params := [("a", Flapjack.Shape.one)], body := body364_3, returnShape := (Flapjack.Shape.one) }
def original364 := Pancake.PanLang.declToHOL originalData364
def simplified364 := Pancake.PanLang.declToHOL simplifiedData364
end InitECandidate.Proofs.FrontendStages.Declarations
