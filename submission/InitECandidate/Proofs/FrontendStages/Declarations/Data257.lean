import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify241
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body257_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 1#64)

def body257_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 0#64)

def body257_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def body257_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 0#64)

def body257_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nib")

def body257_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nlen")

def body257_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "vptr")

def body257_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "vlen")

def body257_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "nd")

def body257_9 : Prog (BitVec 64) :=
.seq body257_7 body257_8

def body257_10 : Prog (BitVec 64) :=
.seq body257_6 body257_9

def body257_11 : Prog (BitVec 64) :=
.seq body257_5 body257_10

def body257_12 : Prog (BitVec 64) :=
.seq body257_4 body257_11

def body257_13 : Prog (BitVec 64) :=
.seq body257_3 body257_12

def body257_14 : Prog (BitVec 64) :=
.seq body257_2 body257_13

def body257_15 : Prog (BitVec 64) :=
.seq body257_1 body257_14

def body257_16 : Prog (BitVec 64) :=
.seq body257_0 body257_15

def body257_17 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body257_16

def body257_18 : Prog (BitVec 64) :=
.seq body257_0 body257_1

def body257_19 : Prog (BitVec 64) :=
.seq body257_18 body257_2

def body257_20 : Prog (BitVec 64) :=
.seq body257_19 body257_3

def body257_21 : Prog (BitVec 64) :=
.seq body257_20 body257_4

def body257_22 : Prog (BitVec 64) :=
.seq body257_21 body257_5

def body257_23 : Prog (BitVec 64) :=
.seq body257_22 body257_6

def body257_24 : Prog (BitVec 64) :=
.seq body257_23 body257_7

def body257_25 : Prog (BitVec 64) :=
.seq body257_24 body257_8

def body257_26 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body257_25

def originalData257 : Decl (BitVec 64) :=
.function { name := "node_new_leaf", inline := false, exported := false, params := [("nib", Flapjack.Shape.one), ("nlen", Flapjack.Shape.one), ("vptr", Flapjack.Shape.one), ("vlen", Flapjack.Shape.one)], body := body257_17, returnShape := (Flapjack.Shape.one) }
def simplifiedData257 : Decl (BitVec 64) :=
.function { name := "node_new_leaf", inline := false, exported := false, params := [("nib", Flapjack.Shape.one), ("nlen", Flapjack.Shape.one), ("vptr", Flapjack.Shape.one), ("vlen", Flapjack.Shape.one)], body := body257_26, returnShape := (Flapjack.Shape.one) }
def original257 := Pancake.PanLang.declToHOL originalData257
def simplified257 := Pancake.PanLang.declToHOL simplifiedData257
end InitECandidate.Proofs.FrontendStages.Declarations
