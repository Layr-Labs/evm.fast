import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data258
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate235
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody258_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 2#64)

def globalBody258_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 0#64)

def globalBody258_2 : Prog (BitVec 64) :=
.seq globalBody258_0 globalBody258_1

def globalBody258_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def globalBody258_4 : Prog (BitVec 64) :=
.seq globalBody258_2 globalBody258_3

def globalBody258_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 0#64)

def globalBody258_6 : Prog (BitVec 64) :=
.seq globalBody258_4 globalBody258_5

def globalBody258_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nib")

def globalBody258_8 : Prog (BitVec 64) :=
.seq globalBody258_6 globalBody258_7

def globalBody258_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nlen")

def globalBody258_10 : Prog (BitVec 64) :=
.seq globalBody258_8 globalBody258_9

def globalBody258_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "child")

def globalBody258_12 : Prog (BitVec 64) :=
.seq globalBody258_10 globalBody258_11

def globalBody258_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "nd")

def globalBody258_14 : Prog (BitVec 64) :=
.seq globalBody258_12 globalBody258_13

def globalBody258_15 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 56#64]) globalBody258_14

def globalData258 : Decl (BitVec 64) :=
.function { name := "node_new_ext", inline := false, exported := false, params := [("nib", Flapjack.Shape.one), ("nlen", Flapjack.Shape.one), ("child", Flapjack.Shape.one)], body := globalBody258_15, returnShape := (Flapjack.Shape.one) }
def globalOutput258 := Pancake.PanLang.declToHOL globalData258
end InitECandidate.Proofs.FrontendStages.Declarations
