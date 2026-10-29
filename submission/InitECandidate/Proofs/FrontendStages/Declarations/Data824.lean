import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify808
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body824_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.const 15#64,
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 3#64, Flapjack.Exp.var Flapjack.VarKind.local "w"]]]

def body824_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]))

def body824_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body824_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body824_4 : Prog (BitVec 64) :=
.seq body824_2 body824_3

def body824_5 : Prog (BitVec 64) :=
.seq body824_1 body824_4

def body824_6 : Prog (BitVec 64) :=
.seq body824_0 body824_5

def body824_7 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("words_of") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) body824_6

def body824_8 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body824_7

def body824_9 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body824_8

def body824_10 : Prog (BitVec 64) :=
.seq body824_0 body824_1

def body824_11 : Prog (BitVec 64) :=
.seq body824_10 body824_2

def body824_12 : Prog (BitVec 64) :=
.seq body824_11 body824_3

def body824_13 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("words_of") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) body824_12

def body824_14 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body824_13

def body824_15 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body824_14

def originalData824 : Decl (BitVec 64) :=
.function { name := "pre_identity", inline := false, exported := false, params := [], body := body824_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData824 : Decl (BitVec 64) :=
.function { name := "pre_identity", inline := false, exported := false, params := [], body := body824_15, returnShape := (Flapjack.Shape.one) }
def original824 := Pancake.PanLang.declToHOL originalData824
def simplified824 := Pancake.PanLang.declToHOL simplifiedData824
end InitECandidate.Proofs.FrontendStages.Declarations
