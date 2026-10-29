import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify806
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body822_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 13#64)

def body822_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body822_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 192#64)) body822_0 body822_1

def body822_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 50000#64]

def body822_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "err") (Flapjack.Exp.const 0#64)) body822_0 body822_1

def body822_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out")

def body822_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 64#64)

def body822_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body822_8 : Prog (BitVec 64) :=
.seq body822_6 body822_7

def body822_9 : Prog (BitVec 64) :=
.seq body822_5 body822_8

def body822_10 : Prog (BitVec 64) :=
.seq body822_4 body822_9

def body822_11 : Prog (BitVec 64) :=
.decCall ("err") (Flapjack.Shape.one) ("kzg_point_evaluation_exec") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "out"]) body822_10

def body822_12 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body822_11

def body822_13 : Prog (BitVec 64) :=
.seq body822_3 body822_12

def body822_14 : Prog (BitVec 64) :=
.seq body822_2 body822_13

def body822_15 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body822_14

def body822_16 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body822_15

def body822_17 : Prog (BitVec 64) :=
.seq body822_2 body822_3

def body822_18 : Prog (BitVec 64) :=
.seq body822_4 body822_5

def body822_19 : Prog (BitVec 64) :=
.seq body822_18 body822_6

def body822_20 : Prog (BitVec 64) :=
.seq body822_19 body822_7

def body822_21 : Prog (BitVec 64) :=
.decCall ("err") (Flapjack.Shape.one) ("kzg_point_evaluation_exec") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "out"]) body822_20

def body822_22 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body822_21

def body822_23 : Prog (BitVec 64) :=
.seq body822_17 body822_22

def body822_24 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body822_23

def body822_25 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body822_24

def originalData822 : Decl (BitVec 64) :=
.function { name := "pre_kzg_point_evaluation", inline := false, exported := false, params := [], body := body822_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData822 : Decl (BitVec 64) :=
.function { name := "pre_kzg_point_evaluation", inline := false, exported := false, params := [], body := body822_25, returnShape := (Flapjack.Shape.one) }
def original822 := Pancake.PanLang.declToHOL originalData822
def simplified822 := Pancake.PanLang.declToHOL simplifiedData822
end InitECandidate.Proofs.FrontendStages.Declarations
