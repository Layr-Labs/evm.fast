import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify507
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body523_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body523_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 10#64)

def body523_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body523_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 81#64) (Flapjack.Exp.var Flapjack.VarKind.local "imm")),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "imm") (Flapjack.Exp.const 128#64))]) body523_1 body523_2

def body523_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 1#64])

def body523_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "m"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 1#64])

def body523_6 : Prog (BitVec 64) :=
.seq body523_4 body523_5

def body523_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 1#64])

def body523_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "m"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 29#64, Flapjack.Exp.var Flapjack.VarKind.local "q"])

def body523_9 : Prog (BitVec 64) :=
.seq body523_7 body523_8

def body523_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "q")
  (Flapjack.Exp.var Flapjack.VarKind.local "r")) body523_6 body523_9

def body523_11 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 2#64)

def body523_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 16#64]))
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "mx", Flapjack.Exp.const 1#64])) body523_11 body523_2

def body523_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_swap_positions"
  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "m"]

def body523_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 2#64]

def body523_15 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body523_16 : Prog (BitVec 64) :=
.seq body523_14 body523_15

def body523_17 : Prog (BitVec 64) :=
.seq body523_13 body523_16

def body523_18 : Prog (BitVec 64) :=
.seq body523_12 body523_17

def body523_19 : Prog (BitVec 64) :=
.decCall ("mx") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "m"]) body523_18

def body523_20 : Prog (BitVec 64) :=
.seq body523_10 body523_19

def body523_21 : Prog (BitVec 64) :=
.dec ("m") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body523_20

def body523_22 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body523_21

def body523_23 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 15#64]) body523_22

def body523_24 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 4#64)) body523_23

def body523_25 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor [Flapjack.Exp.var Flapjack.VarKind.local "imm", Flapjack.Exp.const 143#64]) body523_24

def body523_26 : Prog (BitVec 64) :=
.seq body523_3 body523_25

def body523_27 : Prog (BitVec 64) :=
.decCall ("imm") (Flapjack.Shape.one) ("code_imm") ([]) body523_26

def body523_28 : Prog (BitVec 64) :=
.seq body523_0 body523_27

def body523_29 : Prog (BitVec 64) :=
.seq body523_12 body523_13

def body523_30 : Prog (BitVec 64) :=
.seq body523_29 body523_14

def body523_31 : Prog (BitVec 64) :=
.seq body523_30 body523_15

def body523_32 : Prog (BitVec 64) :=
.decCall ("mx") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "m"]) body523_31

def body523_33 : Prog (BitVec 64) :=
.seq body523_10 body523_32

def body523_34 : Prog (BitVec 64) :=
.dec ("m") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body523_33

def body523_35 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body523_34

def body523_36 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 15#64]) body523_35

def body523_37 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 4#64)) body523_36

def body523_38 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor [Flapjack.Exp.var Flapjack.VarKind.local "imm", Flapjack.Exp.const 143#64]) body523_37

def body523_39 : Prog (BitVec 64) :=
.seq body523_3 body523_38

def body523_40 : Prog (BitVec 64) :=
.decCall ("imm") (Flapjack.Shape.one) ("code_imm") ([]) body523_39

def body523_41 : Prog (BitVec 64) :=
.seq body523_0 body523_40

def originalData523 : Decl (BitVec 64) :=
.function { name := "op_exchange", inline := false, exported := false, params := [], body := body523_28, returnShape := (Flapjack.Shape.one) }
def simplifiedData523 : Decl (BitVec 64) :=
.function { name := "op_exchange", inline := false, exported := false, params := [], body := body523_41, returnShape := (Flapjack.Shape.one) }
def original523 := Pancake.PanLang.declToHOL originalData523
def simplified523 := Pancake.PanLang.declToHOL simplifiedData523
end InitECandidate.Proofs.FrontendStages.Declarations
