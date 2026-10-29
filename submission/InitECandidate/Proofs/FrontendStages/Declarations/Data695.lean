import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify679
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body695_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.const 34000#64, Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr")],
        Flapjack.Exp.const 45000#64]]

def body695_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 4#64)

def body695_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body695_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))
  (Flapjack.Exp.const 0#64)) body695_1 body695_2

def body695_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "res") (Flapjack.Exp.const 2#64)) body695_1 body695_2

def body695_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]

def body695_6 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 31#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "res")

def body695_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out")

def body695_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 32#64)

def body695_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body695_10 : Prog (BitVec 64) :=
.seq body695_8 body695_9

def body695_11 : Prog (BitVec 64) :=
.seq body695_7 body695_10

def body695_12 : Prog (BitVec 64) :=
.seq body695_6 body695_11

def body695_13 : Prog (BitVec 64) :=
.seq body695_5 body695_12

def body695_14 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body695_13

def body695_15 : Prog (BitVec 64) :=
.seq body695_4 body695_14

def body695_16 : Prog (BitVec 64) :=
.decCall ("res") (Flapjack.Shape.one) ("bn254_pairing_check") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr")]) body695_15

def body695_17 : Prog (BitVec 64) :=
.seq body695_3 body695_16

def body695_18 : Prog (BitVec 64) :=
.seq body695_0 body695_17

def body695_19 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("udivmod") ([Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 192#64]) body695_18

def body695_20 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body695_19

def body695_21 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body695_20

def body695_22 : Prog (BitVec 64) :=
.seq body695_0 body695_3

def body695_23 : Prog (BitVec 64) :=
.seq body695_5 body695_6

def body695_24 : Prog (BitVec 64) :=
.seq body695_23 body695_7

def body695_25 : Prog (BitVec 64) :=
.seq body695_24 body695_8

def body695_26 : Prog (BitVec 64) :=
.seq body695_25 body695_9

def body695_27 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body695_26

def body695_28 : Prog (BitVec 64) :=
.seq body695_4 body695_27

def body695_29 : Prog (BitVec 64) :=
.decCall ("res") (Flapjack.Shape.one) ("bn254_pairing_check") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr")]) body695_28

def body695_30 : Prog (BitVec 64) :=
.seq body695_22 body695_29

def body695_31 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("udivmod") ([Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 192#64]) body695_30

def body695_32 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body695_31

def body695_33 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body695_32

def originalData695 : Decl (BitVec 64) :=
.function { name := "pre_alt_bn128_pairing_check", inline := false, exported := false, params := [], body := body695_21, returnShape := (Flapjack.Shape.one) }
def simplifiedData695 : Decl (BitVec 64) :=
.function { name := "pre_alt_bn128_pairing_check", inline := false, exported := false, params := [], body := body695_33, returnShape := (Flapjack.Shape.one) }
def original695 := Pancake.PanLang.declToHOL originalData695
def simplified695 := Pancake.PanLang.declToHOL simplifiedData695
end InitECandidate.Proofs.FrontendStages.Declarations
