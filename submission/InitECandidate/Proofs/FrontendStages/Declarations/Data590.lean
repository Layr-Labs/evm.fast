import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify574
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body590_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 11#64)

def body590_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body590_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "code"))
  (Flapjack.Exp.const 239#64)) body590_0 body590_1

def body590_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")) body590_2 body590_1

def body590_4 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 4#64)

def body590_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 65536#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")) body590_4 body590_1

def body590_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 6#64, Flapjack.Exp.var Flapjack.VarKind.local "w"]]

def body590_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_state_gas"
  [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1530#64]]

def body590_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "stored_code", Flapjack.Exp.var Flapjack.VarKind.local "code",
    Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body590_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_code"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "stored_code", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body590_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body590_11 : Prog (BitVec 64) :=
.seq body590_9 body590_10

def body590_12 : Prog (BitVec 64) :=
.seq body590_8 body590_11

def body590_13 : Prog (BitVec 64) :=
.decCall ("stored_code") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]) body590_12

def body590_14 : Prog (BitVec 64) :=
.seq body590_7 body590_13

def body590_15 : Prog (BitVec 64) :=
.seq body590_6 body590_14

def body590_16 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("words_of") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) body590_15

def body590_17 : Prog (BitVec 64) :=
.seq body590_5 body590_16

def body590_18 : Prog (BitVec 64) :=
.seq body590_3 body590_17

def body590_19 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 128#64])) body590_18

def body590_20 : Prog (BitVec 64) :=
.dec ("code") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 120#64])) body590_19

def body590_21 : Prog (BitVec 64) :=
.seq body590_3 body590_5

def body590_22 : Prog (BitVec 64) :=
.seq body590_6 body590_7

def body590_23 : Prog (BitVec 64) :=
.seq body590_8 body590_9

def body590_24 : Prog (BitVec 64) :=
.seq body590_23 body590_10

def body590_25 : Prog (BitVec 64) :=
.decCall ("stored_code") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]) body590_24

def body590_26 : Prog (BitVec 64) :=
.seq body590_22 body590_25

def body590_27 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("words_of") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) body590_26

def body590_28 : Prog (BitVec 64) :=
.seq body590_21 body590_27

def body590_29 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 128#64])) body590_28

def body590_30 : Prog (BitVec 64) :=
.dec ("code") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 120#64])) body590_29

def originalData590 : Decl (BitVec 64) :=
.function { name := "create_finish", inline := false, exported := false, params := [("msg", Flapjack.Shape.one), ("child", Flapjack.Shape.one)], body := body590_20, returnShape := (Flapjack.Shape.one) }
def simplifiedData590 : Decl (BitVec 64) :=
.function { name := "create_finish", inline := false, exported := false, params := [("msg", Flapjack.Shape.one), ("child", Flapjack.Shape.one)], body := body590_30, returnShape := (Flapjack.Shape.one) }
def original590 := Pancake.PanLang.declToHOL originalData590
def simplified590 := Pancake.PanLang.declToHOL simplifiedData590
end InitECandidate.Proofs.FrontendStages.Declarations
