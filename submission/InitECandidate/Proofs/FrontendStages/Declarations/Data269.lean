import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify253
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body269_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "root_node")

def body269_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "secured")

def body269_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "m")

def body269_3 : Prog (BitVec 64) :=
.seq body269_1 body269_2

def body269_4 : Prog (BitVec 64) :=
.seq body269_0 body269_3

def body269_5 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 16#64]) body269_4

def body269_6 : Prog (BitVec 64) :=
.seq body269_0 body269_1

def body269_7 : Prog (BitVec 64) :=
.seq body269_6 body269_2

def body269_8 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 16#64]) body269_7

def originalData269 : Decl (BitVec 64) :=
.function { name := "mpt_new", inline := false, exported := false, params := [("root_node", Flapjack.Shape.one), ("secured", Flapjack.Shape.one)], body := body269_5, returnShape := (Flapjack.Shape.one) }
def simplifiedData269 : Decl (BitVec 64) :=
.function { name := "mpt_new", inline := false, exported := false, params := [("root_node", Flapjack.Shape.one), ("secured", Flapjack.Shape.one)], body := body269_8, returnShape := (Flapjack.Shape.one) }
def original269 := Pancake.PanLang.declToHOL originalData269
def simplified269 := Pancake.PanLang.declToHOL simplifiedData269
end InitECandidate.Proofs.FrontendStages.Declarations
