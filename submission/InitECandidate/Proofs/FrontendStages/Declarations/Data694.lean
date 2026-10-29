import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify678
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body694_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 6000#64]

def body694_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "buffer_read"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64]),
    Flapjack.Exp.const 0#64, Flapjack.Exp.const 96#64, Flapjack.Exp.var Flapjack.VarKind.local "buf"]

def body694_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body694_3 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 4#64)

def body694_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body694_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "err") (Flapjack.Exp.const 0#64)) body694_3 body694_4

def body694_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out")

def body694_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 64#64)

def body694_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body694_9 : Prog (BitVec 64) :=
.seq body694_7 body694_8

def body694_10 : Prog (BitVec 64) :=
.seq body694_6 body694_9

def body694_11 : Prog (BitVec 64) :=
.seq body694_5 body694_10

def body694_12 : Prog (BitVec 64) :=
.seq body694_2 body694_11

def body694_13 : Prog (BitVec 64) :=
.decCall ("err") (Flapjack.Shape.one) ("bn254_g1_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "out"]) body694_12

def body694_14 : Prog (BitVec 64) :=
.seq body694_1 body694_13

def body694_15 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body694_14

def body694_16 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body694_15

def body694_17 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body694_16

def body694_18 : Prog (BitVec 64) :=
.seq body694_0 body694_17

def body694_19 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body694_18

def body694_20 : Prog (BitVec 64) :=
.seq body694_2 body694_5

def body694_21 : Prog (BitVec 64) :=
.seq body694_20 body694_6

def body694_22 : Prog (BitVec 64) :=
.seq body694_21 body694_7

def body694_23 : Prog (BitVec 64) :=
.seq body694_22 body694_8

def body694_24 : Prog (BitVec 64) :=
.decCall ("err") (Flapjack.Shape.one) ("bn254_g1_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "out"]) body694_23

def body694_25 : Prog (BitVec 64) :=
.seq body694_1 body694_24

def body694_26 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body694_25

def body694_27 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body694_26

def body694_28 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body694_27

def body694_29 : Prog (BitVec 64) :=
.seq body694_0 body694_28

def body694_30 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body694_29

def originalData694 : Decl (BitVec 64) :=
.function { name := "pre_alt_bn128_mul", inline := false, exported := false, params := [], body := body694_19, returnShape := (Flapjack.Shape.one) }
def simplifiedData694 : Decl (BitVec 64) :=
.function { name := "pre_alt_bn128_mul", inline := false, exported := false, params := [], body := body694_30, returnShape := (Flapjack.Shape.one) }
def original694 := Pancake.PanLang.declToHOL originalData694
def simplified694 := Pancake.PanLang.declToHOL simplifiedData694
end InitECandidate.Proofs.FrontendStages.Declarations
