import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data759
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate743
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody759_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "r")
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 8505329371266088957#64, Flapjack.Exp.const 17002214543764226050#64,
      Flapjack.Exp.const 6865905132761471162#64, Flapjack.Exp.const 8632934651105793861#64,
      Flapjack.Exp.const 6631298214892334189#64, Flapjack.Exp.const 1582556514881692819#64])

def globalBody759_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 8505329371266088957#64, Flapjack.Exp.const 17002214543764226050#64,
      Flapjack.Exp.const 6865905132761471162#64, Flapjack.Exp.const 8632934651105793861#64,
      Flapjack.Exp.const 6631298214892334189#64, Flapjack.Exp.const 1582556514881692819#64])

def globalBody759_2 : Prog (BitVec 64) :=
.seq globalBody759_0 globalBody759_1

def globalBody759_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody759_4 : Prog (BitVec 64) :=
.seq globalBody759_2 globalBody759_3

def globalBody759_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody759_6 : Prog (BitVec 64) :=
.seq globalBody759_4 globalBody759_5

def globalData759 : Decl (BitVec 64) :=
.function { name := "g1_set_inf", inline := false, exported := false, params := [("r", Flapjack.Shape.one)], body := globalBody759_6, returnShape := (Flapjack.Shape.one) }
def globalOutput759 := Pancake.PanLang.declToHOL globalData759
end InitECandidate.Proofs.FrontendStages.Declarations
