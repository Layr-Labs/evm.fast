import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify743
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body759_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "r")
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 8505329371266088957#64, Flapjack.Exp.const 17002214543764226050#64,
      Flapjack.Exp.const 6865905132761471162#64, Flapjack.Exp.const 8632934651105793861#64,
      Flapjack.Exp.const 6631298214892334189#64, Flapjack.Exp.const 1582556514881692819#64])

def body759_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 8505329371266088957#64, Flapjack.Exp.const 17002214543764226050#64,
      Flapjack.Exp.const 6865905132761471162#64, Flapjack.Exp.const 8632934651105793861#64,
      Flapjack.Exp.const 6631298214892334189#64, Flapjack.Exp.const 1582556514881692819#64])

def body759_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body759_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body759_4 : Prog (BitVec 64) :=
.seq body759_2 body759_3

def body759_5 : Prog (BitVec 64) :=
.seq body759_1 body759_4

def body759_6 : Prog (BitVec 64) :=
.seq body759_0 body759_5

def body759_7 : Prog (BitVec 64) :=
.seq body759_0 body759_1

def body759_8 : Prog (BitVec 64) :=
.seq body759_7 body759_2

def body759_9 : Prog (BitVec 64) :=
.seq body759_8 body759_3

def originalData759 : Decl (BitVec 64) :=
.function { name := "g1_set_inf", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := body759_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData759 : Decl (BitVec 64) :=
.function { name := "g1_set_inf", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := body759_9, returnShape := (Flapjack.Shape.one) }
def original759 := Pancake.PanLang.declToHOL originalData759
def simplified759 := Pancake.PanLang.declToHOL simplifiedData759
end InitECandidate.Proofs.FrontendStages.Declarations
