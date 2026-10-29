import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data523
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate507
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody523_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def globalBody523_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 10#64)

def globalBody523_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody523_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 81#64) (Flapjack.Exp.var Flapjack.VarKind.local "imm")),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "imm") (Flapjack.Exp.const 128#64))]) globalBody523_1 globalBody523_2

def globalBody523_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 1#64])

def globalBody523_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "m"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 1#64])

def globalBody523_6 : Prog (BitVec 64) :=
.seq globalBody523_4 globalBody523_5

def globalBody523_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 1#64])

def globalBody523_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "m"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 29#64, Flapjack.Exp.var Flapjack.VarKind.local "q"])

def globalBody523_9 : Prog (BitVec 64) :=
.seq globalBody523_7 globalBody523_8

def globalBody523_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "q")
  (Flapjack.Exp.var Flapjack.VarKind.local "r")) globalBody523_6 globalBody523_9

def globalBody523_11 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 2#64)

def globalBody523_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
        Flapjack.Exp.const 16#64]))
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "mx", Flapjack.Exp.const 1#64])) globalBody523_11 globalBody523_2

def globalBody523_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_swap_positions"
  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "m"]

def globalBody523_14 : Prog (BitVec 64) :=
.seq globalBody523_12 globalBody523_13

def globalBody523_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 2#64]

def globalBody523_16 : Prog (BitVec 64) :=
.seq globalBody523_14 globalBody523_15

def globalBody523_17 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody523_18 : Prog (BitVec 64) :=
.seq globalBody523_16 globalBody523_17

def globalBody523_19 : Prog (BitVec 64) :=
.decCall ("mx") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "m"]) globalBody523_18

def globalBody523_20 : Prog (BitVec 64) :=
.seq globalBody523_10 globalBody523_19

def globalBody523_21 : Prog (BitVec 64) :=
.dec ("m") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody523_20

def globalBody523_22 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody523_21

def globalBody523_23 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 15#64]) globalBody523_22

def globalBody523_24 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 4#64)) globalBody523_23

def globalBody523_25 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.xor [Flapjack.Exp.var Flapjack.VarKind.local "imm", Flapjack.Exp.const 143#64]) globalBody523_24

def globalBody523_26 : Prog (BitVec 64) :=
.seq globalBody523_3 globalBody523_25

def globalBody523_27 : Prog (BitVec 64) :=
.decCall ("imm") (Flapjack.Shape.one) ("code_imm") ([]) globalBody523_26

def globalBody523_28 : Prog (BitVec 64) :=
.seq globalBody523_0 globalBody523_27

def globalData523 : Decl (BitVec 64) :=
.function { name := "op_exchange", inline := false, exported := false, params := [], body := globalBody523_28, returnShape := (Flapjack.Shape.one) }
def globalOutput523 := Pancake.PanLang.declToHOL globalData523
end InitECandidate.Proofs.FrontendStages.Declarations
