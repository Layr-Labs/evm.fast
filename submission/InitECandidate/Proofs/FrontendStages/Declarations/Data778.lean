import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify762
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body778_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64]

def body778_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body778_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body778_3 : Prog (BitVec 64) :=
.seq body778_1 body778_2

def body778_4 : Prog (BitVec 64) :=
.seq body778_0 body778_3

def body778_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body778_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "inf") (Flapjack.Exp.const 1#64)) body778_4 body778_5

def body778_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_inv"
  [Flapjack.Exp.var Flapjack.VarKind.local "zi",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 192#64]]

def body778_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.var Flapjack.VarKind.local "zi"]

def body778_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "zi"]

def body778_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body778_11 : Prog (BitVec 64) :=
.seq body778_1 body778_10

def body778_12 : Prog (BitVec 64) :=
.seq body778_9 body778_11

def body778_13 : Prog (BitVec 64) :=
.seq body778_8 body778_12

def body778_14 : Prog (BitVec 64) :=
.seq body778_7 body778_13

def body778_15 : Prog (BitVec 64) :=
.seq body778_6 body778_14

def body778_16 : Prog (BitVec 64) :=
.decCall ("inf") (Flapjack.Shape.one) ("g2_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "p"]) body778_15

def body778_17 : Prog (BitVec 64) :=
.decCall ("zi") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body778_16

def body778_18 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body778_17

def body778_19 : Prog (BitVec 64) :=
.seq body778_0 body778_1

def body778_20 : Prog (BitVec 64) :=
.seq body778_19 body778_2

def body778_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "inf") (Flapjack.Exp.const 1#64)) body778_20 body778_5

def body778_22 : Prog (BitVec 64) :=
.seq body778_21 body778_7

def body778_23 : Prog (BitVec 64) :=
.seq body778_22 body778_8

def body778_24 : Prog (BitVec 64) :=
.seq body778_23 body778_9

def body778_25 : Prog (BitVec 64) :=
.seq body778_24 body778_1

def body778_26 : Prog (BitVec 64) :=
.seq body778_25 body778_10

def body778_27 : Prog (BitVec 64) :=
.decCall ("inf") (Flapjack.Shape.one) ("g2_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "p"]) body778_26

def body778_28 : Prog (BitVec 64) :=
.decCall ("zi") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body778_27

def body778_29 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body778_28

def originalData778 : Decl (BitVec 64) :=
.function { name := "g2_normalize", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one)], body := body778_18, returnShape := (Flapjack.Shape.one) }
def simplifiedData778 : Decl (BitVec 64) :=
.function { name := "g2_normalize", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one)], body := body778_29, returnShape := (Flapjack.Shape.one) }
def original778 := Pancake.PanLang.declToHOL originalData778
def simplified778 := Pancake.PanLang.declToHOL simplifiedData778
end InitECandidate.Proofs.FrontendStages.Declarations
