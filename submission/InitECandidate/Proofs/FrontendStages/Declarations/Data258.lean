import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify242
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body258_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 2#64)

def body258_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 0#64)

def body258_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def body258_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 0#64)

def body258_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nib")

def body258_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nlen")

def body258_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "child")

def body258_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "nd")

def body258_8 : Prog (BitVec 64) :=
.seq body258_6 body258_7

def body258_9 : Prog (BitVec 64) :=
.seq body258_5 body258_8

def body258_10 : Prog (BitVec 64) :=
.seq body258_4 body258_9

def body258_11 : Prog (BitVec 64) :=
.seq body258_3 body258_10

def body258_12 : Prog (BitVec 64) :=
.seq body258_2 body258_11

def body258_13 : Prog (BitVec 64) :=
.seq body258_1 body258_12

def body258_14 : Prog (BitVec 64) :=
.seq body258_0 body258_13

def body258_15 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 56#64]) body258_14

def body258_16 : Prog (BitVec 64) :=
.seq body258_0 body258_1

def body258_17 : Prog (BitVec 64) :=
.seq body258_16 body258_2

def body258_18 : Prog (BitVec 64) :=
.seq body258_17 body258_3

def body258_19 : Prog (BitVec 64) :=
.seq body258_18 body258_4

def body258_20 : Prog (BitVec 64) :=
.seq body258_19 body258_5

def body258_21 : Prog (BitVec 64) :=
.seq body258_20 body258_6

def body258_22 : Prog (BitVec 64) :=
.seq body258_21 body258_7

def body258_23 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 56#64]) body258_22

def originalData258 : Decl (BitVec 64) :=
.function { name := "node_new_ext", inline := false, exported := false, params := [("nib", Flapjack.Shape.one), ("nlen", Flapjack.Shape.one), ("child", Flapjack.Shape.one)], body := body258_15, returnShape := (Flapjack.Shape.one) }
def simplifiedData258 : Decl (BitVec 64) :=
.function { name := "node_new_ext", inline := false, exported := false, params := [("nib", Flapjack.Shape.one), ("nlen", Flapjack.Shape.one), ("child", Flapjack.Shape.one)], body := body258_23, returnShape := (Flapjack.Shape.one) }
def original258 := Pancake.PanLang.declToHOL originalData258
def simplified258 := Pancake.PanLang.declToHOL simplifiedData258
end InitECandidate.Proofs.FrontendStages.Declarations
