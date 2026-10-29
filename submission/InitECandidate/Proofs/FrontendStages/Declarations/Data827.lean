import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify811
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body827_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.const 600#64,
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 120#64, Flapjack.Exp.var Flapjack.VarKind.local "w"]]]

def body827_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 12#64]

def body827_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ripemd160"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 12#64]]

def body827_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out")

def body827_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 32#64)

def body827_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body827_6 : Prog (BitVec 64) :=
.seq body827_4 body827_5

def body827_7 : Prog (BitVec 64) :=
.seq body827_3 body827_6

def body827_8 : Prog (BitVec 64) :=
.seq body827_2 body827_7

def body827_9 : Prog (BitVec 64) :=
.seq body827_1 body827_8

def body827_10 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body827_9

def body827_11 : Prog (BitVec 64) :=
.seq body827_0 body827_10

def body827_12 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("words_of") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) body827_11

def body827_13 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body827_12

def body827_14 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body827_13

def body827_15 : Prog (BitVec 64) :=
.seq body827_1 body827_2

def body827_16 : Prog (BitVec 64) :=
.seq body827_15 body827_3

def body827_17 : Prog (BitVec 64) :=
.seq body827_16 body827_4

def body827_18 : Prog (BitVec 64) :=
.seq body827_17 body827_5

def body827_19 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body827_18

def body827_20 : Prog (BitVec 64) :=
.seq body827_0 body827_19

def body827_21 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("words_of") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) body827_20

def body827_22 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body827_21

def body827_23 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body827_22

def originalData827 : Decl (BitVec 64) :=
.function { name := "pre_ripemd160", inline := false, exported := false, params := [], body := body827_14, returnShape := (Flapjack.Shape.one) }
def simplifiedData827 : Decl (BitVec 64) :=
.function { name := "pre_ripemd160", inline := false, exported := false, params := [], body := body827_23, returnShape := (Flapjack.Shape.one) }
def original827 := Pancake.PanLang.declToHOL originalData827
def simplified827 := Pancake.PanLang.declToHOL simplifiedData827
end InitECandidate.Proofs.FrontendStages.Declarations
