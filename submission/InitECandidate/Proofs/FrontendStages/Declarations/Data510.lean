import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify494
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body510_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_with_memory"
  [Flapjack.Exp.const 3#64, Flapjack.Exp.var Flapjack.VarKind.local "start",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def body510_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 24#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "s"])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "value"), Flapjack.Exp.const 255#64])

def body510_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body510_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body510_4 : Prog (BitVec 64) :=
.seq body510_2 body510_3

def body510_5 : Prog (BitVec 64) :=
.seq body510_1 body510_4

def body510_6 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "start"]) body510_5

def body510_7 : Prog (BitVec 64) :=
.seq body510_0 body510_6

def body510_8 : Prog (BitVec 64) :=
.decCall ("value") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body510_7

def body510_9 : Prog (BitVec 64) :=
.decCall ("start") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body510_8

def body510_10 : Prog (BitVec 64) :=
.seq body510_1 body510_2

def body510_11 : Prog (BitVec 64) :=
.seq body510_10 body510_3

def body510_12 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "start"]) body510_11

def body510_13 : Prog (BitVec 64) :=
.seq body510_0 body510_12

def body510_14 : Prog (BitVec 64) :=
.decCall ("value") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body510_13

def body510_15 : Prog (BitVec 64) :=
.decCall ("start") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body510_14

def originalData510 : Decl (BitVec 64) :=
.function { name := "op_mstore8", inline := false, exported := false, params := [], body := body510_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData510 : Decl (BitVec 64) :=
.function { name := "op_mstore8", inline := false, exported := false, params := [], body := body510_15, returnShape := (Flapjack.Shape.one) }
def original510 := Pancake.PanLang.declToHOL originalData510
def simplified510 := Pancake.PanLang.declToHOL simplifiedData510
end InitECandidate.Proofs.FrontendStages.Declarations
