import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify434
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body450_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "sgl", Flapjack.Exp.var Flapjack.VarKind.local "amount"])

def body450_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body450_2 : Prog (BitVec 64) :=
.seq body450_0 body450_1

def body450_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body450_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "sgl")
  (Flapjack.Exp.var Flapjack.VarKind.local "amount")) body450_2 body450_3

def body450_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 0#64)

def body450_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "gl", Flapjack.Exp.var Flapjack.VarKind.local "rem"])

def body450_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 192#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "rem"])

def body450_8 : Prog (BitVec 64) :=
.seq body450_7 body450_1

def body450_9 : Prog (BitVec 64) :=
.seq body450_6 body450_8

def body450_10 : Prog (BitVec 64) :=
.seq body450_5 body450_9

def body450_11 : Prog (BitVec 64) :=
.dec ("rem") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "amount", Flapjack.Exp.var Flapjack.VarKind.local "sgl"]) body450_10

def body450_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "tot")
  (Flapjack.Exp.var Flapjack.VarKind.local "amount")) body450_11 body450_3

def body450_13 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 4#64)

def body450_14 : Prog (BitVec 64) :=
.seq body450_13 body450_1

def body450_15 : Prog (BitVec 64) :=
.seq body450_12 body450_14

def body450_16 : Prog (BitVec 64) :=
.decCall ("tot") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.var Flapjack.VarKind.local "sgl", Flapjack.Exp.var Flapjack.VarKind.local "gl"]) body450_15

def body450_17 : Prog (BitVec 64) :=
.seq body450_4 body450_16

def body450_18 : Prog (BitVec 64) :=
.dec ("gl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64])) body450_17

def body450_19 : Prog (BitVec 64) :=
.dec ("sgl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 72#64])) body450_18

def body450_20 : Prog (BitVec 64) :=
.seq body450_5 body450_6

def body450_21 : Prog (BitVec 64) :=
.seq body450_20 body450_7

def body450_22 : Prog (BitVec 64) :=
.seq body450_21 body450_1

def body450_23 : Prog (BitVec 64) :=
.dec ("rem") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "amount", Flapjack.Exp.var Flapjack.VarKind.local "sgl"]) body450_22

def body450_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "tot")
  (Flapjack.Exp.var Flapjack.VarKind.local "amount")) body450_23 body450_3

def body450_25 : Prog (BitVec 64) :=
.seq body450_24 body450_13

def body450_26 : Prog (BitVec 64) :=
.seq body450_25 body450_1

def body450_27 : Prog (BitVec 64) :=
.decCall ("tot") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.var Flapjack.VarKind.local "sgl", Flapjack.Exp.var Flapjack.VarKind.local "gl"]) body450_26

def body450_28 : Prog (BitVec 64) :=
.seq body450_4 body450_27

def body450_29 : Prog (BitVec 64) :=
.dec ("gl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64])) body450_28

def body450_30 : Prog (BitVec 64) :=
.dec ("sgl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 72#64])) body450_29

def originalData450 : Decl (BitVec 64) :=
.function { name := "charge_state_gas", inline := false, exported := false, params := [("amount", Flapjack.Shape.one)], body := body450_19, returnShape := (Flapjack.Shape.one) }
def simplifiedData450 : Decl (BitVec 64) :=
.function { name := "charge_state_gas", inline := false, exported := false, params := [("amount", Flapjack.Shape.one)], body := body450_30, returnShape := (Flapjack.Shape.one) }
def original450 := Pancake.PanLang.declToHOL originalData450
def simplified450 := Pancake.PanLang.declToHOL simplifiedData450
end InitECandidate.Proofs.FrontendStages.Declarations
