import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify804
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body820_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 10#64)

def body820_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body820_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 64#64)) body820_0 body820_1

def body820_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 5500#64]

def body820_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "err") (Flapjack.Exp.const 0#64)) body820_0 body820_1

def body820_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out")

def body820_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 128#64)

def body820_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body820_8 : Prog (BitVec 64) :=
.seq body820_6 body820_7

def body820_9 : Prog (BitVec 64) :=
.seq body820_5 body820_8

def body820_10 : Prog (BitVec 64) :=
.seq body820_4 body820_9

def body820_11 : Prog (BitVec 64) :=
.decCall ("err") (Flapjack.Shape.one) ("bls_map_fp_to_g1_exec") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "out"]) body820_10

def body820_12 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 128#64]) body820_11

def body820_13 : Prog (BitVec 64) :=
.seq body820_3 body820_12

def body820_14 : Prog (BitVec 64) :=
.seq body820_2 body820_13

def body820_15 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body820_14

def body820_16 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body820_15

def body820_17 : Prog (BitVec 64) :=
.seq body820_2 body820_3

def body820_18 : Prog (BitVec 64) :=
.seq body820_4 body820_5

def body820_19 : Prog (BitVec 64) :=
.seq body820_18 body820_6

def body820_20 : Prog (BitVec 64) :=
.seq body820_19 body820_7

def body820_21 : Prog (BitVec 64) :=
.decCall ("err") (Flapjack.Shape.one) ("bls_map_fp_to_g1_exec") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "out"]) body820_20

def body820_22 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 128#64]) body820_21

def body820_23 : Prog (BitVec 64) :=
.seq body820_17 body820_22

def body820_24 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body820_23

def body820_25 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body820_24

def originalData820 : Decl (BitVec 64) :=
.function { name := "pre_bls_map_fp_to_g1", inline := false, exported := false, params := [], body := body820_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData820 : Decl (BitVec 64) :=
.function { name := "pre_bls_map_fp_to_g1", inline := false, exported := false, params := [], body := body820_25, returnShape := (Flapjack.Shape.one) }
def original820 := Pancake.PanLang.declToHOL originalData820
def simplified820 := Pancake.PanLang.declToHOL simplifiedData820
end InitECandidate.Proofs.FrontendStages.Declarations
