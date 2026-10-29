import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data137
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate121
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody137_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 0#64)

def globalBody137_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 0#64)

def globalBody137_2 : Prog (BitVec 64) :=
.seq globalBody137_0 globalBody137_1

def globalBody137_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def globalBody137_4 : Prog (BitVec 64) :=
.seq globalBody137_2 globalBody137_3

def globalBody137_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "bit")

def globalBody137_6 : Prog (BitVec 64) :=
.seq globalBody137_4 globalBody137_5

def globalBody137_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "n")

def globalBody137_8 : Prog (BitVec 64) :=
.seq globalBody137_6 globalBody137_7

def globalBody137_9 : Prog (BitVec 64) :=
.dec ("nodes") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64])) globalBody137_8

def globalBody137_10 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("htab_new_node") ([Flapjack.Exp.var Flapjack.VarKind.local "t"]) globalBody137_9

def globalData137 : Decl (BitVec 64) :=
.function { name := "htab_new_internal", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("bit", Flapjack.Shape.one)], body := globalBody137_10, returnShape := (Flapjack.Shape.one) }
def globalOutput137 := Pancake.PanLang.declToHOL globalData137
end InitECandidate.Proofs.FrontendStages.Declarations
