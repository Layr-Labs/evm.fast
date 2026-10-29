import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data695
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate679
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody695_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.const 34000#64, Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr")],
        Flapjack.Exp.const 45000#64]]

def globalBody695_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 4#64)

def globalBody695_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody695_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))
  (Flapjack.Exp.const 0#64)) globalBody695_1 globalBody695_2

def globalBody695_4 : Prog (BitVec 64) :=
.seq globalBody695_0 globalBody695_3

def globalBody695_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "res") (Flapjack.Exp.const 2#64)) globalBody695_1 globalBody695_2

def globalBody695_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]

def globalBody695_7 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 31#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "res")

def globalBody695_8 : Prog (BitVec 64) :=
.seq globalBody695_6 globalBody695_7

def globalBody695_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out")

def globalBody695_10 : Prog (BitVec 64) :=
.seq globalBody695_8 globalBody695_9

def globalBody695_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 32#64)

def globalBody695_12 : Prog (BitVec 64) :=
.seq globalBody695_10 globalBody695_11

def globalBody695_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody695_14 : Prog (BitVec 64) :=
.seq globalBody695_12 globalBody695_13

def globalBody695_15 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody695_14

def globalBody695_16 : Prog (BitVec 64) :=
.seq globalBody695_5 globalBody695_15

def globalBody695_17 : Prog (BitVec 64) :=
.decCall ("res") (Flapjack.Shape.one) ("bn254_pairing_check") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr")]) globalBody695_16

def globalBody695_18 : Prog (BitVec 64) :=
.seq globalBody695_4 globalBody695_17

def globalBody695_19 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("udivmod") ([Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 192#64]) globalBody695_18

def globalBody695_20 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) globalBody695_19

def globalBody695_21 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 112#64])) globalBody695_20

def globalData695 : Decl (BitVec 64) :=
.function { name := "pre_alt_bn128_pairing_check", inline := false, exported := false, params := [], body := globalBody695_21, returnShape := (Flapjack.Shape.one) }
def globalOutput695 := Pancake.PanLang.declToHOL globalData695
end InitECandidate.Proofs.FrontendStages.Declarations
