import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data257
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate234
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody257_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 1#64)

def globalBody257_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 0#64)

def globalBody257_2 : Prog (BitVec 64) :=
.seq globalBody257_0 globalBody257_1

def globalBody257_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def globalBody257_4 : Prog (BitVec 64) :=
.seq globalBody257_2 globalBody257_3

def globalBody257_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 0#64)

def globalBody257_6 : Prog (BitVec 64) :=
.seq globalBody257_4 globalBody257_5

def globalBody257_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nib")

def globalBody257_8 : Prog (BitVec 64) :=
.seq globalBody257_6 globalBody257_7

def globalBody257_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nlen")

def globalBody257_10 : Prog (BitVec 64) :=
.seq globalBody257_8 globalBody257_9

def globalBody257_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "vptr")

def globalBody257_12 : Prog (BitVec 64) :=
.seq globalBody257_10 globalBody257_11

def globalBody257_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "vlen")

def globalBody257_14 : Prog (BitVec 64) :=
.seq globalBody257_12 globalBody257_13

def globalBody257_15 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "nd")

def globalBody257_16 : Prog (BitVec 64) :=
.seq globalBody257_14 globalBody257_15

def globalBody257_17 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody257_16

def globalData257 : Decl (BitVec 64) :=
.function { name := "node_new_leaf", inline := false, exported := false, params := [("nib", Flapjack.Shape.one), ("nlen", Flapjack.Shape.one), ("vptr", Flapjack.Shape.one), ("vlen", Flapjack.Shape.one)], body := globalBody257_17, returnShape := (Flapjack.Shape.one) }
def globalOutput257 := Pancake.PanLang.declToHOL globalData257
end InitECandidate.Proofs.FrontendStages.Declarations
