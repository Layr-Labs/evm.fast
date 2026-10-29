import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify803
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body819_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 10#64)

def body819_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body819_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) body819_0 body819_1

def body819_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))
  (Flapjack.Exp.const 0#64)) body819_0 body819_1

def body819_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 32600#64, Flapjack.Exp.var Flapjack.VarKind.local "k"],
        Flapjack.Exp.const 37700#64]]

def body819_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "err") (Flapjack.Exp.const 0#64)) body819_0 body819_1

def body819_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out")

def body819_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 32#64)

def body819_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body819_9 : Prog (BitVec 64) :=
.seq body819_7 body819_8

def body819_10 : Prog (BitVec 64) :=
.seq body819_6 body819_9

def body819_11 : Prog (BitVec 64) :=
.seq body819_5 body819_10

def body819_12 : Prog (BitVec 64) :=
.decCall ("err") (Flapjack.Shape.one) ("bls_pairing_exec") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.var Flapjack.VarKind.local "out"]) body819_11

def body819_13 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body819_12

def body819_14 : Prog (BitVec 64) :=
.seq body819_4 body819_13

def body819_15 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr")) body819_14

def body819_16 : Prog (BitVec 64) :=
.seq body819_3 body819_15

def body819_17 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("udivmod") ([Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 384#64]) body819_16

def body819_18 : Prog (BitVec 64) :=
.seq body819_2 body819_17

def body819_19 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body819_18

def body819_20 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body819_19

def body819_21 : Prog (BitVec 64) :=
.seq body819_5 body819_6

def body819_22 : Prog (BitVec 64) :=
.seq body819_21 body819_7

def body819_23 : Prog (BitVec 64) :=
.seq body819_22 body819_8

def body819_24 : Prog (BitVec 64) :=
.decCall ("err") (Flapjack.Shape.one) ("bls_pairing_exec") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.var Flapjack.VarKind.local "out"]) body819_23

def body819_25 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body819_24

def body819_26 : Prog (BitVec 64) :=
.seq body819_4 body819_25

def body819_27 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr")) body819_26

def body819_28 : Prog (BitVec 64) :=
.seq body819_3 body819_27

def body819_29 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("udivmod") ([Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 384#64]) body819_28

def body819_30 : Prog (BitVec 64) :=
.seq body819_2 body819_29

def body819_31 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body819_30

def body819_32 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body819_31

def originalData819 : Decl (BitVec 64) :=
.function { name := "pre_bls_pairing", inline := false, exported := false, params := [], body := body819_20, returnShape := (Flapjack.Shape.one) }
def simplifiedData819 : Decl (BitVec 64) :=
.function { name := "pre_bls_pairing", inline := false, exported := false, params := [], body := body819_32, returnShape := (Flapjack.Shape.one) }
def original819 := Pancake.PanLang.declToHOL originalData819
def simplified819 := Pancake.PanLang.declToHOL simplifiedData819
end InitECandidate.Proofs.FrontendStages.Declarations
