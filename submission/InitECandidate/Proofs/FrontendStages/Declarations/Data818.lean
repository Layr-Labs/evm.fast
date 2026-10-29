import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify802
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body818_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 10#64)

def body818_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body818_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) body818_0 body818_1

def body818_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))
  (Flapjack.Exp.const 0#64)) body818_0 body818_1

def body818_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "gasq")]

def body818_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "err") (Flapjack.Exp.const 0#64)) body818_0 body818_1

def body818_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out")

def body818_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 256#64)

def body818_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body818_9 : Prog (BitVec 64) :=
.seq body818_7 body818_8

def body818_10 : Prog (BitVec 64) :=
.seq body818_6 body818_9

def body818_11 : Prog (BitVec 64) :=
.seq body818_5 body818_10

def body818_12 : Prog (BitVec 64) :=
.decCall ("err") (Flapjack.Shape.one) ("bls_g2_msm_exec") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.var Flapjack.VarKind.local "out"]) body818_11

def body818_13 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) body818_12

def body818_14 : Prog (BitVec 64) :=
.seq body818_4 body818_13

def body818_15 : Prog (BitVec 64) :=
.decCall ("gasq") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("udivmod") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 22500#64],
      Flapjack.Exp.var Flapjack.VarKind.local "discount"],
  Flapjack.Exp.const 1000#64]) body818_14

def body818_16 : Prog (BitVec 64) :=
.decCall ("discount") (Flapjack.Shape.one) ("bls_g2_msm_discount") ([Flapjack.Exp.var Flapjack.VarKind.local "k"]) body818_15

def body818_17 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr")) body818_16

def body818_18 : Prog (BitVec 64) :=
.seq body818_3 body818_17

def body818_19 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("udivmod") ([Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 288#64]) body818_18

def body818_20 : Prog (BitVec 64) :=
.seq body818_2 body818_19

def body818_21 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body818_20

def body818_22 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body818_21

def body818_23 : Prog (BitVec 64) :=
.seq body818_5 body818_6

def body818_24 : Prog (BitVec 64) :=
.seq body818_23 body818_7

def body818_25 : Prog (BitVec 64) :=
.seq body818_24 body818_8

def body818_26 : Prog (BitVec 64) :=
.decCall ("err") (Flapjack.Shape.one) ("bls_g2_msm_exec") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.var Flapjack.VarKind.local "out"]) body818_25

def body818_27 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) body818_26

def body818_28 : Prog (BitVec 64) :=
.seq body818_4 body818_27

def body818_29 : Prog (BitVec 64) :=
.decCall ("gasq") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("udivmod") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 22500#64],
      Flapjack.Exp.var Flapjack.VarKind.local "discount"],
  Flapjack.Exp.const 1000#64]) body818_28

def body818_30 : Prog (BitVec 64) :=
.decCall ("discount") (Flapjack.Shape.one) ("bls_g2_msm_discount") ([Flapjack.Exp.var Flapjack.VarKind.local "k"]) body818_29

def body818_31 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr")) body818_30

def body818_32 : Prog (BitVec 64) :=
.seq body818_3 body818_31

def body818_33 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("udivmod") ([Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 288#64]) body818_32

def body818_34 : Prog (BitVec 64) :=
.seq body818_2 body818_33

def body818_35 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body818_34

def body818_36 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body818_35

def originalData818 : Decl (BitVec 64) :=
.function { name := "pre_bls_g2_msm", inline := false, exported := false, params := [], body := body818_22, returnShape := (Flapjack.Shape.one) }
def simplifiedData818 : Decl (BitVec 64) :=
.function { name := "pre_bls_g2_msm", inline := false, exported := false, params := [], body := body818_36, returnShape := (Flapjack.Shape.one) }
def original818 := Pancake.PanLang.declToHOL originalData818
def simplified818 := Pancake.PanLang.declToHOL simplifiedData818
end InitECandidate.Proofs.FrontendStages.Declarations
