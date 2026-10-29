import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify565
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body581_0 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body581_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "move_ether"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body581_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "emit_transfer_log"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body581_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "same") (Flapjack.Exp.const 0#64)) body581_2 body581_0

def body581_4 : Prog (BitVec 64) :=
.decCall ("same") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 16#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.const 20#64]) body581_3

def body581_5 : Prog (BitVec 64) :=
.seq body581_1 body581_4

def body581_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64)) body581_5 body581_0

def body581_7 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "v"]) body581_6

def body581_8 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 56#64])) body581_7

def body581_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 136#64]))
  (Flapjack.Exp.const 0#64)) body581_8 body581_0

def body581_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "run_precompile" [Flapjack.Exp.var Flapjack.VarKind.local "pi"]

def body581_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 168#64]))
  (Flapjack.Exp.const 0#64)) body581_10 body581_0

def body581_12 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body581_13 : Prog (BitVec 64) :=
.seq body581_11 body581_12

def body581_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "pi") (Flapjack.Exp.const 0#64)) body581_13 body581_0

def body581_15 : Prog (BitVec 64) :=
.decCall ("pi") (Flapjack.Shape.one) ("precompile_index") ([Flapjack.Exp.var Flapjack.VarKind.local "ca"]) body581_14

def body581_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "ca") (Flapjack.Exp.const 0#64)) body581_15 body581_0

def body581_17 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body581_18 : Prog (BitVec 64) :=
.seq body581_0 body581_17

def body581_19 : Prog (BitVec 64) :=
.seq body581_16 body581_18

def body581_20 : Prog (BitVec 64) :=
.dec ("ca") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 104#64])) body581_19

def body581_21 : Prog (BitVec 64) :=
.seq body581_9 body581_20

def body581_22 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body581_21

def body581_23 : Prog (BitVec 64) :=
.seq body581_0 body581_22

def body581_24 : Prog (BitVec 64) :=
.seq body581_16 body581_17

def body581_25 : Prog (BitVec 64) :=
.dec ("ca") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 104#64])) body581_24

def body581_26 : Prog (BitVec 64) :=
.seq body581_9 body581_25

def body581_27 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body581_26

def originalData581 : Decl (BitVec 64) :=
.function { name := "frame_prologue", inline := false, exported := false, params := [], body := body581_23, returnShape := (Flapjack.Shape.one) }
def simplifiedData581 : Decl (BitVec 64) :=
.function { name := "frame_prologue", inline := false, exported := false, params := [], body := body581_27, returnShape := (Flapjack.Shape.one) }
def original581 := Pancake.PanLang.declToHOL originalData581
def simplified581 := Pancake.PanLang.declToHOL simplifiedData581
end InitECandidate.Proofs.FrontendStages.Declarations
