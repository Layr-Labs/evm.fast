import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify506
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body522_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body522_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 2#64)

def body522_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body522_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 16#64]))
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])) body522_1 body522_2

def body522_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_swap_positions"
  [Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body522_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 2#64]

def body522_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body522_7 : Prog (BitVec 64) :=
.seq body522_5 body522_6

def body522_8 : Prog (BitVec 64) :=
.seq body522_4 body522_7

def body522_9 : Prog (BitVec 64) :=
.seq body522_3 body522_8

def body522_10 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("decode_single") ([Flapjack.Exp.var Flapjack.VarKind.local "imm"]) body522_9

def body522_11 : Prog (BitVec 64) :=
.decCall ("imm") (Flapjack.Shape.one) ("code_imm") ([]) body522_10

def body522_12 : Prog (BitVec 64) :=
.seq body522_0 body522_11

def body522_13 : Prog (BitVec 64) :=
.seq body522_3 body522_4

def body522_14 : Prog (BitVec 64) :=
.seq body522_13 body522_5

def body522_15 : Prog (BitVec 64) :=
.seq body522_14 body522_6

def body522_16 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("decode_single") ([Flapjack.Exp.var Flapjack.VarKind.local "imm"]) body522_15

def body522_17 : Prog (BitVec 64) :=
.decCall ("imm") (Flapjack.Shape.one) ("code_imm") ([]) body522_16

def body522_18 : Prog (BitVec 64) :=
.seq body522_0 body522_17

def originalData522 : Decl (BitVec 64) :=
.function { name := "op_swapn", inline := false, exported := false, params := [], body := body522_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData522 : Decl (BitVec 64) :=
.function { name := "op_swapn", inline := false, exported := false, params := [], body := body522_18, returnShape := (Flapjack.Shape.one) }
def original522 := Pancake.PanLang.declToHOL originalData522
def simplified522 := Pancake.PanLang.declToHOL simplifiedData522
end InitECandidate.Proofs.FrontendStages.Declarations
