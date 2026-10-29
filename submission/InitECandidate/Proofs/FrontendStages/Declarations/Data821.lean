import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify805
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body821_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 10#64)

def body821_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body821_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 128#64)) body821_0 body821_1

def body821_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 23800#64]

def body821_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "err") (Flapjack.Exp.const 0#64)) body821_0 body821_1

def body821_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "out")

def body821_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 256#64)

def body821_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body821_8 : Prog (BitVec 64) :=
.seq body821_6 body821_7

def body821_9 : Prog (BitVec 64) :=
.seq body821_5 body821_8

def body821_10 : Prog (BitVec 64) :=
.seq body821_4 body821_9

def body821_11 : Prog (BitVec 64) :=
.decCall ("err") (Flapjack.Shape.one) ("bls_map_fp2_to_g2_exec") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "out"]) body821_10

def body821_12 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) body821_11

def body821_13 : Prog (BitVec 64) :=
.seq body821_3 body821_12

def body821_14 : Prog (BitVec 64) :=
.seq body821_2 body821_13

def body821_15 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body821_14

def body821_16 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body821_15

def body821_17 : Prog (BitVec 64) :=
.seq body821_2 body821_3

def body821_18 : Prog (BitVec 64) :=
.seq body821_4 body821_5

def body821_19 : Prog (BitVec 64) :=
.seq body821_18 body821_6

def body821_20 : Prog (BitVec 64) :=
.seq body821_19 body821_7

def body821_21 : Prog (BitVec 64) :=
.decCall ("err") (Flapjack.Shape.one) ("bls_map_fp2_to_g2_exec") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "out"]) body821_20

def body821_22 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) body821_21

def body821_23 : Prog (BitVec 64) :=
.seq body821_17 body821_22

def body821_24 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64])) body821_23

def body821_25 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body821_24

def originalData821 : Decl (BitVec 64) :=
.function { name := "pre_bls_map_fp2_to_g2", inline := false, exported := false, params := [], body := body821_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData821 : Decl (BitVec 64) :=
.function { name := "pre_bls_map_fp2_to_g2", inline := false, exported := false, params := [], body := body821_25, returnShape := (Flapjack.Shape.one) }
def original821 := Pancake.PanLang.declToHOL originalData821
def simplified821 := Pancake.PanLang.declToHOL simplifiedData821
end InitECandidate.Proofs.FrontendStages.Declarations
