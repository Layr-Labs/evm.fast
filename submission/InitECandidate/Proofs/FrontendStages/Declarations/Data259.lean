import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify243
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body259_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 176#64]

def body259_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 3#64)

def body259_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "nd")

def body259_3 : Prog (BitVec 64) :=
.seq body259_1 body259_2

def body259_4 : Prog (BitVec 64) :=
.seq body259_0 body259_3

def body259_5 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 176#64]) body259_4

def body259_6 : Prog (BitVec 64) :=
.seq body259_0 body259_1

def body259_7 : Prog (BitVec 64) :=
.seq body259_6 body259_2

def body259_8 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 176#64]) body259_7

def originalData259 : Decl (BitVec 64) :=
.function { name := "node_new_branch", inline := false, exported := false, params := [], body := body259_5, returnShape := (Flapjack.Shape.one) }
def simplifiedData259 : Decl (BitVec 64) :=
.function { name := "node_new_branch", inline := false, exported := false, params := [], body := body259_8, returnShape := (Flapjack.Shape.one) }
def original259 := Pancake.PanLang.declToHOL originalData259
def simplified259 := Pancake.PanLang.declToHOL simplifiedData259
end InitECandidate.Proofs.FrontendStages.Declarations
